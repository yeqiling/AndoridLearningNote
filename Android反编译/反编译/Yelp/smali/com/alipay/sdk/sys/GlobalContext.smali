.class public Lcom/alipay/sdk/sys/GlobalContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/alipay/sdk/sys/GlobalContext;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/sdk/data/MspConfig;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static a()Lcom/alipay/sdk/sys/GlobalContext;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/alipay/sdk/sys/GlobalContext;->a:Lcom/alipay/sdk/sys/GlobalContext;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/alipay/sdk/sys/GlobalContext;

    invoke-direct {v0}, Lcom/alipay/sdk/sys/GlobalContext;-><init>()V

    sput-object v0, Lcom/alipay/sdk/sys/GlobalContext;->a:Lcom/alipay/sdk/sys/GlobalContext;

    .line 38
    :cond_0
    sget-object v0, Lcom/alipay/sdk/sys/GlobalContext;->a:Lcom/alipay/sdk/sys/GlobalContext;

    return-object v0
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 85
    const-string v2, ""

    .line 86
    const/4 v0, 0x0

    .line 88
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 90
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 91
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 93
    :try_start_1
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 95
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 100
    :try_start_2
    const-string v2, "exit\n"

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 102
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 107
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 112
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    .line 107
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 110
    :catch_1
    move-exception v1

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 107
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 109
    :goto_3
    throw v0

    .line 110
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 106
    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 130
    const/16 v0, 0x41

    new-array v4, v0, [C

    fill-array-data v4, :array_0

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 138
    array-length v6, v5

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v6, :cond_2

    .line 140
    aget-char v7, v5, v3

    .line 141
    array-length v8, v4

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v8, :cond_1

    .line 142
    aget-char v9, v4, v1

    if-ne v7, v9, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 141
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 145
    :cond_1
    if-eqz v0, :cond_2

    .line 146
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 148
    :cond_2
    return v0

    .line 130
    nop

    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2ft 0x0t
        0x3dt 0x0t
    .end array-data
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public static e()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "/system/xbin/"

    aput-object v2, v3, v1

    const-string v2, "/system/bin/"

    aput-object v2, v3, v0

    const-string v2, "/system/sbin/"

    aput-object v2, v3, v4

    const-string v2, "/sbin/"

    aput-object v2, v3, v5

    const/4 v2, 0x4

    const-string v4, "/vendor/bin/"

    aput-object v4, v3, v2

    move v2, v1

    .line 65
    :goto_0
    :try_start_0
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 67
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "ls"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "-l"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    .line 70
    invoke-static {v2}, Lcom/alipay/sdk/sys/GlobalContext;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "root"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "root"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v3, v2, :cond_1

    :cond_0
    move v0, v1

    .line 80
    :cond_1
    :goto_1
    return v0

    .line 65
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    move v0, v1

    .line 80
    goto :goto_1
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lcom/alipay/sdk/util/Utils;->d()Ljava/lang/String;

    move-result-object v0

    .line 119
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alipay/sdk/data/MspConfig;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/sys/GlobalContext;->b:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/alipay/sdk/sys/GlobalContext;->c:Lcom/alipay/sdk/data/MspConfig;

    .line 49
    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/sdk/sys/GlobalContext;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final c()Lcom/alipay/sdk/data/MspConfig;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/sdk/sys/GlobalContext;->c:Lcom/alipay/sdk/data/MspConfig;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-object v0, p0, Lcom/alipay/sdk/sys/GlobalContext;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x41

    new-array v5, v0, [C

    fill-array-data v5, :array_0

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v7, v6

    move v4, v3

    move v0, v3

    :goto_0
    if-ge v4, v7, :cond_2

    aget-char v8, v6, v4

    array-length v9, v5

    move v2, v3

    move v0, v3

    :goto_1
    if-ge v2, v9, :cond_1

    aget-char v10, v5, v2

    if-ne v8, v10, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    move-object v0, v1

    .line 126
    :goto_2
    return-object v0

    :cond_3
    const-string v0, ""

    goto :goto_2

    .line 124
    nop

    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2ft 0x0t
        0x3dt 0x0t
    .end array-data
.end method
