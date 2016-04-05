.class public Lcom/boohee/utility/App;
.super Ljava/lang/Object;
.source "App.java"


# static fields
.field public static final BHDB_NAME:Ljava/lang/String; = "bhdb.sqlite"

.field public static final BHDB_PATH:Ljava/lang/String; = null

.field public static final BH_DB_VERSION:I = 0xe

.field public static final DB_PATH:Ljava/lang/String; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation
.end field

.field public static final FILE_PATH:Ljava/lang/String; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation
.end field

.field public static final REGION_NAME:Ljava/lang/String; = "regions.json"

.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-class v0, Lcom/boohee/utility/App;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/utility/App;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/utility/App;->DB_PATH:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/utility/App;->FILE_PATH:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/boohee/utility/App;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bhdb.sqlite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/utility/App;->BHDB_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkBhDB(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 33
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/boohee/utility/App;->BHDB_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    const-string v2, "bhdb.sqlite"

    invoke-static {p0, v2}, Lcom/boohee/utils/FileUtil;->copyDB(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    invoke-static {p0}, Lcom/boohee/utility/App;->saveBhDbVersion(Landroid/content/Context;)V

    .line 38
    :cond_0
    new-instance v1, Lcom/boohee/database/OnePreference;

    invoke-direct {v1, p0}, Lcom/boohee/database/OnePreference;-><init>(Landroid/content/Context;)V

    .line 39
    .local v1, onePrefs:Lcom/boohee/database/OnePreference;
    const-string v2, "bhdb_version"

    invoke-virtual {v1, v2}, Lcom/boohee/database/OnePreference;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, oldVersion:I
    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    .line 41
    const-string v2, "bhdb.sqlite"

    invoke-static {p0, v2}, Lcom/boohee/utils/FileUtil;->copyDB(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    invoke-static {p0}, Lcom/boohee/utility/App;->saveBhDbVersion(Landroid/content/Context;)V

    .line 44
    :cond_1
    return-void
.end method

.method public static checkDB(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 47
    invoke-static {p0}, Lcom/boohee/utility/App;->checkBhDB(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private static saveBhDbVersion(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 28
    new-instance v0, Lcom/boohee/database/OnePreference;

    invoke-direct {v0, p0}, Lcom/boohee/database/OnePreference;-><init>(Landroid/content/Context;)V

    .line 29
    .local v0, onePrefs:Lcom/boohee/database/OnePreference;
    const-string v1, "bhdb_version"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Lcom/boohee/database/OnePreference;->putInt(Ljava/lang/String;I)V

    .line 30
    return-void
.end method
