package modmenu;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * Standalone check for the shipped LuaScan: compile patches/modmenu/
 * src/modmenu/LuaScan.java together with this file and run - the scanner is
 * pure java precisely so this can exercise the exact bytes the APK ships.
 *
 *   javac -d /tmp/lecheck patches/modmenu/src/modmenu/LuaScan.java \
 *         tools/LuaScanTest.java && java -cp /tmp/lecheck modmenu.LuaScanTest
 */
public final class LuaScanTest {
    private static int fails = 0;

    public static void main(String[] args) {
        Set<String> ns = new HashSet<String>();
        ns.add("Game");
        ns.add("World");
        Map<String, Set<String>> methods = new HashMap<String, Set<String>>();
        Set<String> game = new HashSet<String>();
        game.add("doGameEnd");
        game.add("getScriptVar");
        methods.put("Game", game);
        LuaScan scan = new LuaScan(ns, methods);

        // 1. balanced code: strings/comments carry 'end' without counting
        String balanced = "-- function if do end\n"
                + "local s = \"end end end\"\n"
                + "function main()\n"
                + "  for i = 1, 10 do print(i) end\n"
                + "  if s == nil then return end\n"
                + "  repeat s = 'until' until s\n"
                + "  local long = [=[ text ]=]\n"
                + "end\n"
                + "Game:doGameEnd()\n";
        LuaScan.Result r = scan.scan(balanced);
        expect("balanced: no issues", r.issues.isEmpty());
        expectToken(r, "doGameEnd", LuaScan.API);
        expectToken(r, "Game", LuaScan.NAME);
        expectToken(r, "main", LuaScan.NAME);
        expectToken(r, "function", LuaScan.KW);
        expectToken(r, "10", LuaScan.NUM);
        expectToken(r, "long", LuaScan.NAME);

        // 2. one missing end
        r = scan.scan("function f()\n  print(1)\n");
        expectIssue(r, LuaScan.MISSING_END, -1, "1");

        // 3. two missing ends
        r = scan.scan("function f()\n  if x then\n  end\n");
        expectIssue(r, LuaScan.MISSING_END, -1, "1");

        r = scan.scan("function f()\n  if x then\n");
        expectIssue(r, LuaScan.MISSING_END, -1, "2");

        // 4. extra end, reported at its line
        r = scan.scan("print(1)\nprint(2)\nend\n");
        expectIssue(r, LuaScan.EXTRA_END, 3, null);

        // 5. unterminated quote, recovery on the next line
        r = scan.scan("local s = \"oops\nlocal t = 1\nfunction f() end\n");
        expectIssue(r, LuaScan.UNCLOSED_STR, 1, null);
        expectNo(r, LuaScan.MISSING_END);

        // 6. unterminated long string
        r = scan.scan("local s = [[never closed\n");
        expectIssue(r, LuaScan.UNCLOSED_LONG, 1, null);

        // 7. unclosed bracket, extra close, mismatch
        r = scan.scan("local t = (1 + 2\n");
        expectIssue(r, LuaScan.UNCLOSED_BR, 1, "(");
        r = scan.scan("print(1))\n");
        expectIssue(r, LuaScan.EXTRA_CLOSE, 1, ")");
        r = scan.scan("local t = { (1] }\n");
        boolean bad = false;
        for (LuaScan.Issue i : r.issues) {
            if (LuaScan.BAD_CLOSE.equals(i.code)) {
                bad = true;
            }
        }
        expect("mismatch: bad_close reported", bad);

        // 8. known API passes, unknown method on a catalog ns warns,
        //    unknown names on locals stay silent
        r = scan.scan("Game:doGameEnd()\nGame:getScriptVar(1)\n");
        expect("known api: no issues", r.issues.isEmpty());
        r = scan.scan("Game:typoMethdo()\n");
        expectIssue(r, LuaScan.UNKNOWN_API, 1, "Game:typoMethdo");
        r = scan.scan("local x = {}\nx:something()\n");
        expect("local method call: no warning", r.issues.isEmpty());
        r = scan.scan("World:getBlock(1)\n");
        expectNo(r, LuaScan.UNKNOWN_API);

        // 9. escaped quote does not terminate the string
        r = scan.scan("local s = \"a\\\"b\"\nprint(s)\n");
        expect("escaped quote: no issues", r.issues.isEmpty());

        // 10. repeat/until and do..end blocks balance
        r = scan.scan("repeat\n  do end\nuntil true\n");
        expect("repeat/do blocks: no issues", r.issues.isEmpty());

        if (fails > 0) {
            System.out.println(fails + " check(s) FAILED");
            System.exit(1);
        }
        System.out.println("all LuaScan checks pass");
    }

    private static void expectToken(LuaScan.Result r, String text, int kind) {
        for (LuaScan.Tok t : r.toks) {
            if (t.text.equals(text)) {
                expect("token '" + text + "' kind " + kind,
                        t.kind == kind);
                return;
            }
        }
        expect("token '" + text + "' present", false);
    }

    private static void expectIssue(LuaScan.Result r, String code, int line,
                                    String arg) {
        for (LuaScan.Issue i : r.issues) {
            if (code.equals(i.code)
                    && (line < 0 || i.line == line)
                    && (arg == null || arg.equals(i.arg))) {
                expect("issue " + code + " line " + line, true);
                return;
            }
        }
        expect("issue " + code + " line " + line + " arg " + arg, false);
    }

    private static void expectNo(LuaScan.Result r, String code) {
        for (LuaScan.Issue i : r.issues) {
            if (code.equals(i.code)) {
                expect("no issue " + code, false);
                return;
            }
        }
        expect("no issue " + code, true);
    }

    private static void expect(String what, boolean ok) {
        System.out.println((ok ? "PASS " : "FAIL ") + what);
        if (!ok) {
            fails++;
        }
    }
}
