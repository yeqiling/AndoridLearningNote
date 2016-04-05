.class public Lcom/easemob/util/EMLog;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/util/EMLog$ELogMode;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$easemob$util$EMLog$ELogMode:[I

.field public static debugMode:Z

.field private static fileLog:Lcom/easemob/util/FileLogger;

.field private static logMode:Lcom/easemob/util/EMLog$ELogMode;


# direct methods
.method static synthetic $SWITCH_TABLE$com$easemob$util$EMLog$ELogMode()[I
    .locals 3

    sget-object v0, Lcom/easemob/util/EMLog;->$SWITCH_TABLE$com$easemob$util$EMLog$ELogMode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/easemob/util/EMLog$ELogMode;->values()[Lcom/easemob/util/EMLog$ELogMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/easemob/util/EMLog$ELogMode;->KLogConsoleFile:Lcom/easemob/util/EMLog$ELogMode;

    invoke-virtual {v1}, Lcom/easemob/util/EMLog$ELogMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/easemob/util/EMLog$ELogMode;->KLogConsoleOnly:Lcom/easemob/util/EMLog$ELogMode;

    invoke-virtual {v1}, Lcom/easemob/util/EMLog$ELogMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/easemob/util/EMLog$ELogMode;->KLogFileOnly:Lcom/easemob/util/EMLog$ELogMode;

    invoke-virtual {v1}, Lcom/easemob/util/EMLog$ELogMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/easemob/util/EMLog;->$SWITCH_TABLE$com$easemob$util$EMLog$ELogMode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/easemob/util/EMLog;->debugMode:Z

    sget-object v0, Lcom/easemob/util/EMLog$ELogMode;->KLogConsoleFile:Lcom/easemob/util/EMLog$ELogMode;

    sput-object v0, Lcom/easemob/util/EMLog;->logMode:Lcom/easemob/util/EMLog$ELogMode;

    new-instance v0, Lcom/easemob/util/FileLogger;

    invoke-direct {v0}, Lcom/easemob/util/FileLogger;-><init>()V

    sput-object v0, Lcom/easemob/util/EMLog;->fileLog:Lcom/easemob/util/FileLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/easemob/util/EMLog;->debugMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/util/EMLog;->$SWITCH_TABLE$com$easemob$util$EMLog$ELogMode()[I

    move-result-object v0

    sget-object v1, Lcom/easemob/util/EMLog;->logMode:Lcom/easemob/util/EMLog$ELogMode;

    invoke-virtual {v1}, Lcom/easemob/util/EMLog$ELogMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/easemob/util/EMLog;->fileLog:Lcom/easemob/util/FileLogger;

    invoke-virtual {v0, p0, p1}, Lcom/easemob/util/FileLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "&quot;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "&quot;"

    const-string v1, "\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/easemob/util/EMLog;->fileLog:Lcom/easemob/util/FileLogger;

    invoke-virtual {v0, p0, p1}, Lcom/easemob/util/FileLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/easemob/util/EMLog;->debugMode:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/easemob/util/EMLog;->$SWITCH_TABLE$com$easemob$util$EMLog$ELogMode()[I

    move-result-object v0

    sget-object v1, Lcom/easemob/util/EMLog;->logMode:Lcom/easemob/util/EMLog$ELogMode;

    invoke-virtual {v1}, Lcom/easemob/util/EMLog$ELogMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/easemob/util/EMLog;->fileLog:Lcom/easemob/util/FileLogger;

    invoke-virtual {v0, p0, p1}, Lcom/easemob/util/FileLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/easemob/util/EMLog;->fileLog:Lcom/easemob/util/FileLogger;

    invoke-virtual {v0, p0, p1}, Lcom/easemob/util/FileLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static freeLogFiles()V
    .locals 1

    sget-object v0, Lcom/easemob/util/EMLog;->fileLog:Lcom/easemob/util/FileLogger;

    invoke-virtual {v0}, Lcom/easemob/util/FileLogger;->checkAndFreeLogFiles()V

    return-void
.end method

.method public static getLogRoot()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/easemob/util/EMLog;->fileLog:Lcom/easemob/util/FileLogger;

    invoke-virtual {v0}, Lcom/easemob/util/FileLogger;->getLogRoot()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/easemob/util/EMLog;->debugMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/util/EMLog;->$SWITCH_TABLE$com$easemob$util$EMLog$ELogMode()[I

    move-result-object v0

    sget-object v1, Lcom/easemob/util/EMLog;->logMode:Lcom/easemob/util/EMLog$ELogMode;

    invoke-virtual {v1}, Lcom/easemob/util/EMLog$ELogMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/easemob/util/EMLog;->fileLog:Lcom/easemob/util/FileLogger;

    invoke-virtual {v0, p0, p1}, Lcom/easemob/util/FileLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/easemob/util/EMLog;->fileLog:Lcom/easemob/util/FileLogger;

    invoke-virtual {v0, p0, p1}, Lcom/easemob/util/FileLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setLogMode(Lcom/easemob/util/EMLog$ELogMode;)V
    .locals 0

    sput-object p0, Lcom/easemob/util/EMLog;->logMode:Lcom/easemob/util/EMLog$ELogMode;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/easemob/util/EMLog;->debugMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/util/EMLog;->$SWITCH_TABLE$com$easemob$util$EMLog$ELogMode()[I

    move-result-object v0

    sget-object v1, Lcom/easemob/util/EMLog;->logMode:Lcom/easemob/util/EMLog$ELogMode;

    invoke-virtual {v1}, Lcom/easemob/util/EMLog$ELogMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/easemob/util/EMLog;->fileLog:Lcom/easemob/util/FileLogger;

    invoke-virtual {v0, p0, p1}, Lcom/easemob/util/FileLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/easemob/util/EMLog;->fileLog:Lcom/easemob/util/FileLogger;

    invoke-virtual {v0, p0, p1}, Lcom/easemob/util/FileLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/easemob/util/EMLog;->$SWITCH_TABLE$com$easemob$util$EMLog$ELogMode()[I

    move-result-object v0

    sget-object v1, Lcom/easemob/util/EMLog;->logMode:Lcom/easemob/util/EMLog$ELogMode;

    invoke-virtual {v1}, Lcom/easemob/util/EMLog$ELogMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/easemob/util/EMLog;->fileLog:Lcom/easemob/util/FileLogger;

    invoke-virtual {v0, p0, p1}, Lcom/easemob/util/FileLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/easemob/util/EMLog;->fileLog:Lcom/easemob/util/FileLogger;

    invoke-virtual {v0, p0, p1}, Lcom/easemob/util/FileLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/easemob/util/EMLog;->debugMode:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
