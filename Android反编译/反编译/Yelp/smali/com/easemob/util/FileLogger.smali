.class Lcom/easemob/util/FileLogger;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG_COLOR:Ljava/lang/String; = "blue"

.field private static final ERROR_COLOR:Ljava/lang/String; = "red"

.field private static final FREE_SPACE_LIMIT:J = 0x1400000L

.field private static final FREE_SPACE_TIMER:J = 0x124f80L

.field private static final INFO_COLOR:Ljava/lang/String; = "green"

.field private static final LOG_LIMIT:J = 0x800000L

.field private static final MB:J = 0x100000L

.field private static final TAG:Ljava/lang/String; = "FileLogger"

.field private static final WARN_COLOR:Ljava/lang/String; = "orange"


# instance fields
.field private logRoot:Ljava/io/File;

.field private singleThreadService:Ljava/util/concurrent/ExecutorService;

.field private spaceAvailable:Z

.field private timer:Ljava/util/Timer;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/util/FileLogger;->singleThreadService:Ljava/util/concurrent/ExecutorService;

    iput-object v1, p0, Lcom/easemob/util/FileLogger;->logRoot:Ljava/io/File;

    iput-object v1, p0, Lcom/easemob/util/FileLogger;->timer:Ljava/util/Timer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/util/FileLogger;->spaceAvailable:Z

    return-void
.end method

.method static synthetic access$0(Lcom/easemob/util/FileLogger;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/easemob/util/FileLogger;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/easemob/util/FileLogger;)V
    .locals 0

    invoke-direct {p0}, Lcom/easemob/util/FileLogger;->startCleanUpTimer()V

    return-void
.end method

.method static synthetic access$2(Lcom/easemob/util/FileLogger;)Ljava/io/File;
    .locals 1

    invoke-direct {p0}, Lcom/easemob/util/FileLogger;->getAvailableFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/easemob/util/FileLogger;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/easemob/util/FileLogger;->singleThreadService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$4(Lcom/easemob/util/FileLogger;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/util/FileLogger;->spaceAvailable:Z

    return-void
.end method

.method private static deleteFile(Ljava/io/File;)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_3
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/easemob/util/FileLogger;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private freeLogFolder()V
    .locals 1

    invoke-virtual {p0}, Lcom/easemob/util/FileLogger;->getLogRoot()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/util/FileLogger;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method private freeOldFiles()V
    .locals 6

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/easemob/util/FileLogger;->getLogFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/easemob/util/FileLogger;->getSortedFileListByName(Ljava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v4, "FileLogger"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "try to delete file : "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private freeOldFolders()V
    .locals 6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/easemob/util/FileLogger;->getLogRoot()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lcom/easemob/util/FileLogger;->deleteFile(Ljava/io/File;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private getAvailableFile()Ljava/io/File;
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/easemob/util/FileLogger;->getLogRoot()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/easemob/util/FileLogger;->removeOldFolders()V

    invoke-direct {p0}, Lcom/easemob/util/FileLogger;->getLogFolder()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    invoke-static {v1}, Lcom/easemob/util/FileLogger;->getSortedFileListByName(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    :cond_2
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    cmp-long v0, v4, v6

    if-ltz v0, :cond_4

    add-int/lit8 v2, v1, 0x1

    :cond_3
    :goto_2
    invoke-static {v2}, Lcom/easemob/util/FileLogger;->getLogFileName(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "FileLogger"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Wrong cntName! : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2
.end method

.method private static getCurrentAvailabeSpace()J
    .locals 4

    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Lcom/easemob/util/FileLogger;->getStorageDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method private static getDirSize(Ljava/io/File;)J
    .locals 7

    const-wide/16 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v6, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_0

    aget-object v4, v3, v2

    invoke-static {v4}, Lcom/easemob/util/FileLogger;->getDirSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static getLogFileName(I)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLogFolder()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/easemob/util/FileLogger;->getLogRoot()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v2
.end method

.method private static getSortedFileListByName(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/easemob/util/FileLogger$2;

    invoke-direct {v0}, Lcom/easemob/util/FileLogger$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static getSpecifiedDayBefore(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {v2, v4, v0}, Ljava/util/Calendar;->set(II)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getStorageDir()Ljava/io/File;
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private getWriterRunnable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/easemob/util/FileLogger$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/easemob/util/FileLogger$1;-><init>(Lcom/easemob/util/FileLogger;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private logSizeAlearting()Z
    .locals 4

    invoke-virtual {p0}, Lcom/easemob/util/FileLogger;->getLogRoot()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/util/FileLogger;->getDirSize(Ljava/io/File;)J

    move-result-wide v0

    const-wide/32 v2, 0x800000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeFolderBeforeDay(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p1, p2}, Lcom/easemob/util/FileLogger;->getSpecifiedDayBefore(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/easemob/util/FileLogger;->getLogRoot()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/easemob/util/FileLogger;->deleteFile(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method private removeOldFolders()V
    .locals 7

    invoke-virtual {p0}, Lcom/easemob/util/FileLogger;->getLogRoot()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/easemob/util/FileLogger;->getSpecifiedDayBefore(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/easemob/util/FileLogger;->deleteFile(Ljava/io/File;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private spaceIsAlearting()Z
    .locals 4

    invoke-static {}, Lcom/easemob/util/FileLogger;->getCurrentAvailabeSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x1400000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startCleanUpTimer()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/util/FileLogger;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/easemob/util/FileLogger;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/easemob/util/FileLogger$3;

    invoke-direct {v1, p0}, Lcom/easemob/util/FileLogger$3;-><init>(Lcom/easemob/util/FileLogger;)V

    iget-object v0, p0, Lcom/easemob/util/FileLogger;->timer:Ljava/util/Timer;

    const-wide/32 v2, 0x124f80

    const-wide/32 v4, 0x124f80

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startThreadService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/easemob/util/FileLogger;->getLogRoot()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/easemob/util/FileLogger;->singleThreadService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, p1, p2}, Lcom/easemob/util/FileLogger;->getWriterRunnable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method checkAndFreeLogFiles()V
    .locals 2

    invoke-direct {p0}, Lcom/easemob/util/FileLogger;->logSizeAlearting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FileLogger"

    const-string v1, "the log size is > 8M, try to free log files"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/easemob/util/FileLogger;->freeOldFolders()V

    const-string v0, "FileLogger"

    const-string v1, "old folders are deleted"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/easemob/util/FileLogger;->logSizeAlearting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FileLogger"

    const-string v1, "try to delete old log files"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/easemob/util/FileLogger;->freeOldFiles()V

    :cond_0
    return-void
.end method

.method d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "blue"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/easemob/util/FileLogger;->startThreadService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "red"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[ERROR]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/easemob/util/FileLogger;->startThreadService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method freeSpace()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/easemob/util/FileLogger;->getLogRoot()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/easemob/util/FileLogger;->spaceIsAlearting()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "FileLogger"

    const-string v3, "there is no availabe free space and try to free space"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/easemob/util/FileLogger;->freeLogFolder()V

    invoke-direct {p0}, Lcom/easemob/util/FileLogger;->spaceIsAlearting()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/easemob/util/FileLogger;->checkAndFreeLogFiles()V

    move v0, v1

    goto :goto_0
.end method

.method getLogRoot()Ljava/io/File;
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v1

    iget-object v2, v1, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v1, "/Android/data/"

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v2, :cond_1

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/log/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/easemob/util/FileLogger;->getStorageDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    monitor-exit p0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "green"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/easemob/util/FileLogger;->startThreadService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "green"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/easemob/util/FileLogger;->startThreadService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "orange"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[WARN]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/easemob/util/FileLogger;->startThreadService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
