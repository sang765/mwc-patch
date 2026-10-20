package modmenu;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Deque;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Lua 5.1 tokenizer and static checker behind the code editor.
 *
 * One lexer pass feeds both the syntax colors and the lint: strings and
 * comments consume themselves and report when they never close, identifiers
 * after ':'/'.' land in API position, and the checker counts block keywords,
 * brackets and catalog methods. Messages stay out - issues carry a code and
 * a line, the dialog formats them per locale - so this class is pure java
 * and the standalone test under tools/ exercises the exact file the APK
 * ships.
 */
final class LuaScan {
    static final int KW = 0;
    static final int STR = 1;
    static final int COM = 2;
    static final int NUM = 3;
    static final int NAME = 4;
    static final int API = 5;
    static final int OP = 6;

    static final String UNCLOSED_STR = "unclosed_str";
    static final String UNCLOSED_LONG = "unclosed_long";
    static final String UNCLOSED_BR = "unclosed_br";
    static final String EXTRA_END = "extra_end";
    static final String MISSING_END = "missing_end";
    static final String BAD_CLOSE = "bad_close";
    static final String EXTRA_CLOSE = "extra_close";
    static final String UNKNOWN_API = "unknown_api";

    static final Set<String> KEYWORDS = new HashSet<String>(Arrays.asList(
            "and", "break", "do", "else", "elseif", "end", "false", "for",
            "function", "if", "local", "nil", "not", "or", "repeat",
            "return", "then", "true", "until", "while"));

    static final class Tok {
        final int kind;
        final int start;
        final int end;
        final int line;
        final String text;

        Tok(int kind, int start, int end, int line, String text) {
            this.kind = kind;
            this.start = start;
            this.end = end;
            this.line = line;
            this.text = text;
        }
    }

    /** code identifies the issue, line is where it starts (or -1 when the
     *  issue spans the whole file), arg carries the extra token or count. */
    static final class Issue {
        final String code;
        final int line;
        final String arg;

        Issue(String code, int line, String arg) {
            this.code = code;
            this.line = line;
            this.arg = arg;
        }
    }

    static final class Result {
        final List<Tok> toks = new ArrayList<Tok>();
        final List<Issue> issues = new ArrayList<Issue>();
    }

    private final Set<String> namespaces;
    private final Map<String, Set<String>> methods;

    LuaScan(Set<String> namespaces, Map<String, Set<String>> methods) {
        this.namespaces = namespaces;
        this.methods = methods;
    }

    Result scan(String src) {
        Result sc = new Result();
        int i = 0;
        int line = 1;
        int n = src.length();
        while (i < n) {
            char c = src.charAt(i);
            if (c == '\n') {
                line++;
                i++;
                continue;
            }
            if (c == '-' && i + 1 < n && src.charAt(i + 1) == '-') {
                int st = i;
                int lv = (i + 2 < n) ? longLevel(src, i + 2) : -1;
                if (lv >= 0) {
                    int close = findLongClose(src, i + 3 + lv, lv);
                    String text;
                    if (close < 0) {
                        sc.issues.add(new Issue(UNCLOSED_LONG, line, null));
                        text = src.substring(st);
                        i = n;
                    } else {
                        i = close + 2 + lv;
                        text = src.substring(st, i);
                    }
                    line += countNl(text);
                    sc.toks.add(new Tok(COM, st, i, line, text));
                    continue;
                }
                int end = i + 2;
                while (end < n && src.charAt(end) != '\n') {
                    end++;
                }
                sc.toks.add(new Tok(COM, st, end, line,
                        src.substring(st, end)));
                i = end;
                continue;
            }
            if (c == '[') {
                int lv = longLevel(src, i);
                if (lv >= 0) {
                    int st = i;
                    int close = findLongClose(src, i + 2 + lv, lv);
                    int end;
                    if (close < 0) {
                        sc.issues.add(new Issue(UNCLOSED_LONG, line, null));
                        end = n;
                    } else {
                        end = close + 2 + lv;
                    }
                    String text = src.substring(st, end);
                    line += countNl(text);
                    sc.toks.add(new Tok(STR, st, end, line, text));
                    i = end;
                    continue;
                }
            }
            if (c == '"' || c == '\'') {
                int st = i;
                int j = i + 1;
                boolean closed = false;
                while (j < n) {
                    char d = src.charAt(j);
                    if (d == '\\') {
                        j += 2;
                        continue;
                    }
                    if (d == c) {
                        closed = true;
                        j++;
                        break;
                    }
                    if (d == '\n') {
                        break;
                    }
                    j++;
                }
                if (!closed) {
                    sc.issues.add(new Issue(UNCLOSED_STR, line, null));
                }
                String text = src.substring(st, j);
                line += countNl(text);
                sc.toks.add(new Tok(STR, st, j, line, text));
                i = j;
                continue;
            }
            if (Character.isDigit(c)
                    || (c == '.' && i + 1 < n
                            && Character.isDigit(src.charAt(i + 1)))) {
                int st = i;
                while (i < n) {
                    char d = src.charAt(i);
                    if (Character.isLetterOrDigit(d) || d == '.' || d == '_') {
                        i++;
                    } else {
                        break;
                    }
                }
                sc.toks.add(new Tok(NUM, st, i, line, src.substring(st, i)));
                continue;
            }
            if (Character.isLetter(c) || c == '_') {
                int st = i;
                while (i < n && Character.isLetterOrDigit(src.charAt(i))) {
                    i++;
                }
                String id = src.substring(st, i);
                int kind = KEYWORDS.contains(id) ? KW : NAME;
                if (kind == NAME && !sc.toks.isEmpty()) {
                    Tok pt = sc.toks.get(sc.toks.size() - 1);
                    if (pt.kind == OP
                            && (pt.text.equals(":") || pt.text.equals("."))) {
                        kind = API;
                    }
                }
                sc.toks.add(new Tok(kind, st, i, line, id));
                continue;
            }
            if (c == '(' || c == ')' || c == '{' || c == '}' || c == '['
                    || c == ']' || c == ':' || c == '.') {
                sc.toks.add(new Tok(OP, i, i + 1, line, String.valueOf(c)));
                i++;
                continue;
            }
            i++;
        }
        checkBlocks(sc);
        checkBrackets(sc);
        checkApi(sc);
        return sc;
    }

    /** function/if/do/repeat open a block, end/until close one. for/while
     *  ride on their own 'do', then/else/elseif stay neutral. */
    private void checkBlocks(Result sc) {
        int depth = 0;
        boolean reported = false;
        for (Tok t : sc.toks) {
            if (t.kind != KW) {
                continue;
            }
            if (t.text.equals("function") || t.text.equals("if")
                    || t.text.equals("do") || t.text.equals("repeat")) {
                depth++;
            } else if (t.text.equals("end") || t.text.equals("until")) {
                depth--;
                if (depth < 0 && !reported) {
                    reported = true;
                    sc.issues.add(new Issue(EXTRA_END, t.line, null));
                }
            }
        }
        if (depth > 0) {
            sc.issues.add(new Issue(MISSING_END, -1,
                    String.valueOf(depth)));
        }
    }

    private void checkBrackets(Result sc) {
        Deque<Tok> stack = new ArrayDeque<Tok>();
        for (Tok t : sc.toks) {
            if (t.kind != OP || t.text.length() != 1) {
                continue;
            }
            char c = t.text.charAt(0);
            if (c == '(' || c == '{' || c == '[') {
                stack.push(t);
            } else if (c == ')' || c == '}' || c == ']') {
                char want = c == ')' ? '(' : (c == '}' ? '{' : '[');
                if (!stack.isEmpty()
                        && stack.peek().text.charAt(0) == want) {
                    stack.pop();
                } else if (stack.isEmpty()) {
                    sc.issues.add(new Issue(EXTRA_CLOSE, t.line, t.text));
                } else {
                    sc.issues.add(new Issue(BAD_CLOSE, t.line, t.text));
                }
            }
        }
        while (!stack.isEmpty()) {
            Tok t = stack.pop();
            sc.issues.add(new Issue(UNCLOSED_BR, t.line, t.text));
        }
    }

    /** A Namespace:method whose namespace lives in the catalog but whose
     *  name does not - a typo, warned (not errored) because custom APIs
     *  the game loads from elsewhere are allowed. */
    private void checkApi(Result sc) {
        for (int i = 2; i < sc.toks.size(); i++) {
            Tok t = sc.toks.get(i);
            if (t.kind != API) {
                continue;
            }
            Tok op = sc.toks.get(i - 1);
            Tok q = sc.toks.get(i - 2);
            if (op.kind != OP || (op.text.charAt(0) != ':'
                    && op.text.charAt(0) != '.') || q.kind != NAME) {
                continue;
            }
            Set<String> ns = namespaces.contains(q.text)
                    ? methods.get(q.text) : null;
            if (ns != null && !ns.contains(t.text)) {
                sc.issues.add(new Issue(UNKNOWN_API, t.line,
                        q.text + ":" + t.text));
            }
        }
    }

    /** '[' plus level '=' plus '[' - the level is the count of '='s, -1
     *  when this is not a long bracket. */
    private static int longLevel(String s, int i) {
        if (i >= s.length() || s.charAt(i) != '[') {
            return -1;
        }
        int j = i + 1;
        while (j < s.length() && s.charAt(j) == '=') {
            j++;
        }
        return (j < s.length() && s.charAt(j) == '[') ? j - i - 1 : -1;
    }

    private static int findLongClose(String s, int from, int level) {
        StringBuilder close = new StringBuilder("]");
        for (int k = 0; k < level; k++) {
            close.append('=');
        }
        close.append(']');
        return s.indexOf(close.toString(), from);
    }

    private static int countNl(String s) {
        int c = 0;
        for (int i = 0; i < s.length(); i++) {
            if (s.charAt(i) == '\n') {
                c++;
            }
        }
        return c;
    }
}
