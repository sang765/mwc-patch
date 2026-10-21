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

.field private static out:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lmodmenu/MwLog;->STAMP:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private static declared-synchronized append(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    const-class v0, Lmodmenu/MwLog;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lmodmenu/MwLog;->out:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 92
    monitor-exit v0

    return-void

    .line 95
    :cond_0
    :try_start_1
    sget-wide v1, Lmodmenu/MwLog;->bytes:J

    const-wide/32 v3, 0x40000

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_1

    .line 96
    sget-object v1, Lmodmenu/MwLog;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 97
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lmodmenu/MwLog;->file:Ljava/io/File;

    invoke-direct {v1, v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object v1, Lmodmenu/MwLog;->out:Ljava/io/FileOutputStream;

    .line 98
    const-wide/16 v1, 0x0

    sput-wide v1, Lmodmenu/MwLog;->bytes:J

    .line 100
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x60

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 101
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

    .line 102
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const/16 p0, 0xa

    if-eqz p3, :cond_3

    .line 104
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x5dc

    if-le p2, p3, :cond_2

    .line 106
    invoke-virtual {p1, v5, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 108
    :cond_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_3
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 112
    sget-object p1, Lmodmenu/MwLog;->out:Ljava/io/FileOutputStream;

    const-string p2, "UTF-8"

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 113
    sget-object p1, Lmodmenu/MwLog;->out:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 114
    sget-wide p1, Lmodmenu/MwLog;->bytes:J

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-long v1, p0

    add-long/2addr p1, v1

    sput-wide p1, Lmodmenu/MwLog;->bytes:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    goto :goto_1

    .line 115
    :catch_0
    move-exception p0

    .line 118
    :try_start_2
    sget-object p0, Lmodmenu/MwLog;->out:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    goto :goto_0

    .line 119
    :catch_1
    move-exception p0

    .line 121
    :goto_0
    const/4 p0, 0x0

    :try_start_3
    sput-object p0, Lmodmenu/MwLog;->out:Ljava/io/FileOutputStream;

    .line 122
    sput-object p0, Lmodmenu/MwLog;->file:Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    :goto_1
    monitor-exit v0

    return-void

    .line 90
    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 60
    invoke-static {p0, p1}, Lmodmenu/MwLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/16 v0, 0x44

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lmodmenu/MwLog;->append(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 80
    invoke-static {p0, p1}, Lmodmenu/MwLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/16 v0, 0x45

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lmodmenu/MwLog;->append(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 85
    invoke-static {p0, p1, p2}, Lmodmenu/MwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    const/16 v0, 0x45

    invoke-static {v0, p0, p1, p2}, Lmodmenu/MwLog;->append(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 65
    invoke-static {p0, p1}, Lmodmenu/MwLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/16 v0, 0x49

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lmodmenu/MwLog;->append(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 5

    const-class v0, Lmodmenu/MwLog;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lmodmenu/MwLog;->out:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 43
    monitor-exit v0

    return-void

    .line 46
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "mwlog.txt"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lmodmenu/MwLog;->file:Ljava/io/File;

    .line 47
    sget-object p0, Lmodmenu/MwLog;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x40000

    cmp-long p0, v1, v3

    if-lez p0, :cond_1

    .line 48
    sget-object p0, Lmodmenu/MwLog;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 50
    :cond_1
    new-instance p0, Ljava/io/FileOutputStream;

    sget-object v1, Lmodmenu/MwLog;->file:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object p0, Lmodmenu/MwLog;->out:Ljava/io/FileOutputStream;

    .line 51
    sget-object p0, Lmodmenu/MwLog;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    sput-wide v1, Lmodmenu/MwLog;->bytes:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lmodmenu/MwLog;->file:Ljava/io/File;

    .line 54
    sput-object v1, Lmodmenu/MwLog;->out:Ljava/io/FileOutputStream;

    .line 55
    const-string v1, "ModLog"

    const-string v2, "log file unavailable"

    invoke-static {v1, v2, p0}, Lmodmenu/MwLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :goto_0
    monitor-exit v0

    return-void

    .line 41
    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 70
    invoke-static {p0, p1}, Lmodmenu/MwLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/16 v0, 0x57

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lmodmenu/MwLog;->append(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 75
    invoke-static {p0, p1, p2}, Lmodmenu/MwLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    const/16 v0, 0x57

    invoke-static {v0, p0, p1, p2}, Lmodmenu/MwLog;->append(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    return-void
.end method
