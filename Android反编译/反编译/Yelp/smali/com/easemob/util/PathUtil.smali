.class public Lcom/easemob/util/PathUtil;
.super Ljava/lang/Object;


# static fields
.field public static final filePathName:Ljava/lang/String; = "/file/"

.field public static final historyPathName:Ljava/lang/String; = "/chat/"

.field public static final imagePathName:Ljava/lang/String; = "/image/"

.field private static instance:Lcom/easemob/util/PathUtil; = null

.field public static final meetingPathName:Ljava/lang/String; = "/meeting/"

.field public static final netdiskDownloadPathName:Ljava/lang/String; = "/netdisk/"

.field public static pathPrefix:Ljava/lang/String; = null

.field private static storageDir:Ljava/io/File; = null

.field public static final videoPathName:Ljava/lang/String; = "/video/"

.field public static final voicePathName:Ljava/lang/String; = "/voice/"


# instance fields
.field private filePath:Ljava/io/File;

.field private historyPath:Ljava/io/File;

.field private imagePath:Ljava/io/File;

.field private videoPath:Ljava/io/File;

.field private voicePath:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/util/PathUtil;->storageDir:Ljava/io/File;

    sput-object v0, Lcom/easemob/util/PathUtil;->instance:Lcom/easemob/util/PathUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/easemob/util/PathUtil;->voicePath:Ljava/io/File;

    iput-object v0, p0, Lcom/easemob/util/PathUtil;->imagePath:Ljava/io/File;

    iput-object v0, p0, Lcom/easemob/util/PathUtil;->historyPath:Ljava/io/File;

    iput-object v0, p0, Lcom/easemob/util/PathUtil;->videoPath:Ljava/io/File;

    return-void
.end method

.method private static generateFiePath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/easemob/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/file/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Lcom/easemob/util/PathUtil;->getStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/easemob/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/file/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static generateHistoryPath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/easemob/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/chat/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Lcom/easemob/util/PathUtil;->getStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/easemob/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/chat/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static generateImagePath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/easemob/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/image/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Lcom/easemob/util/PathUtil;->getStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/easemob/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/image/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static generateMessagePath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1, p2}, Lcom/easemob/util/PathUtil;->generateHistoryPath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Msg.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static generateVideoPath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/easemob/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/video/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Lcom/easemob/util/PathUtil;->getStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/easemob/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/video/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static generateVoicePath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/easemob/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/voice/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Lcom/easemob/util/PathUtil;->getStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/easemob/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/voice/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/easemob/util/PathUtil;
    .locals 1

    sget-object v0, Lcom/easemob/util/PathUtil;->instance:Lcom/easemob/util/PathUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/util/PathUtil;

    invoke-direct {v0}, Lcom/easemob/util/PathUtil;-><init>()V

    sput-object v0, Lcom/easemob/util/PathUtil;->instance:Lcom/easemob/util/PathUtil;

    :cond_0
    sget-object v0, Lcom/easemob/util/PathUtil;->instance:Lcom/easemob/util/PathUtil;

    return-object v0
.end method

.method private static getStorageDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    sget-object v0, Lcom/easemob/util/PathUtil;->storageDir:Ljava/io/File;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/easemob/util/PathUtil;->storageDir:Ljava/io/File;

    :cond_1
    sget-object v0, Lcom/easemob/util/PathUtil;->storageDir:Ljava/io/File;

    goto :goto_0
.end method

.method public static getTempPath(Ljava/io/File;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getFilePath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/easemob/util/PathUtil;->filePath:Ljava/io/File;

    return-object v0
.end method

.method public getHistoryPath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/easemob/util/PathUtil;->historyPath:Ljava/io/File;

    return-object v0
.end method

.method public getImagePath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/easemob/util/PathUtil;->imagePath:Ljava/io/File;

    return-object v0
.end method

.method public getVideoPath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/easemob/util/PathUtil;->videoPath:Ljava/io/File;

    return-object v0
.end method

.method public getVoicePath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/easemob/util/PathUtil;->voicePath:Ljava/io/File;

    return-object v0
.end method

.method public initDirs(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/Android/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/easemob/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/easemob/util/PathUtil;->generateVoicePath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/util/PathUtil;->voicePath:Ljava/io/File;

    iget-object v0, p0, Lcom/easemob/util/PathUtil;->voicePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/easemob/util/PathUtil;->voicePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/easemob/util/PathUtil;->generateImagePath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/util/PathUtil;->imagePath:Ljava/io/File;

    iget-object v0, p0, Lcom/easemob/util/PathUtil;->imagePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/easemob/util/PathUtil;->imagePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/easemob/util/PathUtil;->generateHistoryPath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/util/PathUtil;->historyPath:Ljava/io/File;

    iget-object v0, p0, Lcom/easemob/util/PathUtil;->historyPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/easemob/util/PathUtil;->historyPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-static {p1, p2, p3}, Lcom/easemob/util/PathUtil;->generateVideoPath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/util/PathUtil;->videoPath:Ljava/io/File;

    iget-object v0, p0, Lcom/easemob/util/PathUtil;->videoPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/easemob/util/PathUtil;->videoPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    invoke-static {p1, p2, p3}, Lcom/easemob/util/PathUtil;->generateFiePath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/util/PathUtil;->filePath:Ljava/io/File;

    iget-object v0, p0, Lcom/easemob/util/PathUtil;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/easemob/util/PathUtil;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_4
    return-void
.end method
