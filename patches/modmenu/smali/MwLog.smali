.class public final Lmodmenu/MwLog;
.super Ljava/lang/Object;
.source "MwLog.java"


# static fields
.field private static final FILE:Ljava/lang/String; = "mwlog.txt"

.field private static final MAX_BYTES:J = 0x40000L

.field private static final MAX_TR:I = 0x5dc

.field private static final STAMP:Ljava/text/SimpleDateFormat;

.field private static bytes:J

.field private static file:Ljava/io/File;

.field private static mirror:Ljava/io/FileOutputStream;

.field private static mirrorBytes:J

.field private static mirrorFile:Ljava/io/File;

.field private static out:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lmodmenu/MwLog;->STAMP:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private static declared-synchronized append(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    const-class v0, Lmodmenu/MwLog;

    monitor-enter v0

    .line 117
    :try_start_0
    sget-object v1, Lmodmenu/MwLog;->out:Ljava/io/FileOutputStream;

    if-nez v1, :cond_0

    sget-object v1, Lmodmenu/MwLog;->mirror:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 118
    monitor-exit v0

    return-void

    .line 120
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x60

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 121
    sget-object v2, Lmodmenu/MwLog;->STAMP:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 122
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const/16 p0, 0xa

    const/4 p1, 0x0

    if-eqz p3, :cond_2

    .line 124
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 125
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v2, 0x5dc

    if-le p3, v2, :cond_1

    .line 126
    invoke-virtual {p2, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 128
    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 132
    sget-object p2, Lmodmenu/MwLog;->out:Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v1, 0x0

    const-wide/32 v3, 0x40000

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    .line 134
    :try_start_2
    sget-wide v5, Lmodmenu/MwLog;->bytes:J

    cmp-long p2, v5, v3

    if-lez p2, :cond_3

    .line 135
    sget-object p2, Lmodmenu/MwLog;->out:Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 136
    new-instance p2, Ljava/io/FileOutputStream;

    sget-object v5, Lmodmenu/MwLog;->file:Ljava/io/File;

    invoke-direct {p2, v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object p2, Lmodmenu/MwLog;->out:Ljava/io/FileOutputStream;

    .line 137
    sput-wide v1, Lmodmenu/MwLog;->bytes:J

    .line 139
    :cond_3
    sget-object p2, Lmodmenu/MwLog;->out:Ljava/io/FileOutputStream;

    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 140
    sget-object p2, Lmodmenu/MwLog;->out:Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 141
    sget-wide v5, Lmodmenu/MwLog;->bytes:J

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    int-to-long v7, p2

    add-long/2addr v5, v7

    sput-wide v5, Lmodmenu/MwLog;->bytes:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    goto :goto_1

    .line 142
    :catch_0
    move-exception p2

    .line 145
    :try_start_3
    sget-object p2, Lmodmenu/MwLog;->out:Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    goto :goto_0

    .line 146
    :catch_1
    move-exception p2

    .line 148
    :goto_0
    :try_start_4
    sput-object p3, Lmodmenu/MwLog;->out:Ljava/io/FileOutputStream;

    .line 149
    sput-object p3, Lmodmenu/MwLog;->file:Ljava/io/File;

    .line 154
    :cond_4
    :goto_1
    sget-object p2, Lmodmenu/MwLog;->mirror:Ljava/io/FileOutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p2, :cond_6

    .line 156
    :try_start_5
    sget-wide v5, Lmodmenu/MwLog;->mirrorBytes:J

    cmp-long p2, v5, v3

    if-lez p2, :cond_5

    .line 157
    sget-object p2, Lmodmenu/MwLog;->mirror:Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 158
    new-instance p2, Ljava/io/FileOutputStream;

    sget-object v3, Lmodmenu/MwLog;->mirrorFile:Ljava/io/File;

    invoke-direct {p2, v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object p2, Lmodmenu/MwLog;->mirror:Ljava/io/FileOutputStream;

    .line 159
    sput-wide v1, Lmodmenu/MwLog;->mirrorBytes:J

    .line 161
    :cond_5
    sget-object p1, Lmodmenu/MwLog;->mirror:Ljava/io/FileOutputStream;

    const-string p2, "UTF-8"

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 162
    sget-object p1, Lmodmenu/MwLog;->mirror:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 163
    sget-wide p1, Lmodmenu/MwLog;->mirrorBytes:J

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-long v1, p0

    add-long/2addr p1, v1

    sput-wide p1, Lmodmenu/MwLog;->mirrorBytes:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 171
    goto :goto_3

    .line 164
    :catch_2
    move-exception p0

    .line 166
    :try_start_6
    sget-object p0, Lmodmenu/MwLog;->mirror:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 168
    goto :goto_2

    .line 167
    :catch_3
    move-exception p0

    .line 169
    :goto_2
    :try_start_7
    sput-object p3, Lmodmenu/MwLog;->mirror:Ljava/io/FileOutputStream;

    .line 170
    sput-object p3, Lmodmenu/MwLog;->mirrorFile:Ljava/io/File;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 173
    :cond_6
    :goto_3
    monitor-exit v0

    return-void

    .line 116
    :catchall_0
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 84
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/16 v0, 0x44

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lmodmenu/MwLog;->append(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 104
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/16 v0, 0x45

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lmodmenu/MwLog;->append(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 109
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    const/16 v0, 0x45

    invoke-static {v0, p0, p1, p2}, Lmodmenu/MwLog;->append(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 89
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/16 v0, 0x49

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lmodmenu/MwLog;->append(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 8

    const-class v0, Lmodmenu/MwLog;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lmodmenu/MwLog;->out:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 53
    monitor-exit v0

    return-void

    .line 56
    :cond_0
    const/4 v1, 0x1

    const-wide/32 v2, 0x40000

    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "mwlog.txt"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v5, Lmodmenu/MwLog;->file:Ljava/io/File;

    .line 57
    sget-object v5, Lmodmenu/MwLog;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-lez v7, :cond_1

    .line 58
    sget-object v5, Lmodmenu/MwLog;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 60
    :cond_1
    new-instance v5, Ljava/io/FileOutputStream;

    sget-object v6, Lmodmenu/MwLog;->file:Ljava/io/File;

    invoke-direct {v5, v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object v5, Lmodmenu/MwLog;->out:Ljava/io/FileOutputStream;

    .line 61
    sget-object v5, Lmodmenu/MwLog;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    sput-wide v5, Lmodmenu/MwLog;->bytes:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    goto :goto_0

    .line 62
    :catch_0
    move-exception v5

    .line 63
    :try_start_2
    sput-object v4, Lmodmenu/MwLog;->file:Ljava/io/File;

    .line 64
    sput-object v4, Lmodmenu/MwLog;->out:Ljava/io/FileOutputStream;

    .line 65
    const-string v6, "ModLog"

    const-string v7, "log file unavailable"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 69
    if-eqz p0, :cond_3

    .line 70
    new-instance v5, Ljava/io/File;

    const-string v6, "mwlog.txt"

    invoke-direct {v5, p0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v5, Lmodmenu/MwLog;->mirrorFile:Ljava/io/File;

    .line 71
    sget-object p0, Lmodmenu/MwLog;->mirrorFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long p0, v5, v2

    if-lez p0, :cond_2

    .line 72
    sget-object p0, Lmodmenu/MwLog;->mirrorFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 74
    :cond_2
    new-instance p0, Ljava/io/FileOutputStream;

    sget-object v2, Lmodmenu/MwLog;->mirrorFile:Ljava/io/File;

    invoke-direct {p0, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object p0, Lmodmenu/MwLog;->mirror:Ljava/io/FileOutputStream;

    .line 75
    sget-object p0, Lmodmenu/MwLog;->mirrorFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    sput-wide v1, Lmodmenu/MwLog;->mirrorBytes:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    :cond_3
    goto :goto_1

    .line 77
    :catch_1
    move-exception p0

    .line 78
    :try_start_4
    sput-object v4, Lmodmenu/MwLog;->mirrorFile:Ljava/io/File;

    .line 79
    sput-object v4, Lmodmenu/MwLog;->mirror:Ljava/io/FileOutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    :goto_1
    monitor-exit v0

    return-void

    .line 51
    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 94
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/16 v0, 0x57

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lmodmenu/MwLog;->append(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 99
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    const/16 v0, 0x57

    invoke-static {v0, p0, p1, p2}, Lmodmenu/MwLog;->append(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    return-void
.end method
