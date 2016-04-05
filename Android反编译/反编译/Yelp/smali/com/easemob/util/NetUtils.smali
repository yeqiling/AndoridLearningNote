.class public Lcom/easemob/util/NetUtils;
.super Ljava/lang/Object;


# static fields
.field private static final HIGH_SPEED_DOWNLOAD_BUF_SIZE:I = 0x7800

.field private static final HIGH_SPEED_UPLOAD_BUF_SIZE:I = 0x2800

.field private static final LOW_SPEED_DOWNLOAD_BUF_SIZE:I = 0x7e8

.field private static final LOW_SPEED_UPLOAD_BUF_SIZE:I = 0x400

.field private static final MAX_SPEED_DOWNLOAD_BUF_SIZE:I = 0x19000

.field private static final MAX_SPEED_UPLOAD_BUF_SIZE:I = 0x19000

.field private static final TAG:Ljava/lang/String; = "net"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDownloadBufSize(Landroid/content/Context;)I
    .locals 3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v0, 0x19000

    :goto_0
    return v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v1, v0}, Lcom/easemob/util/NetUtils;->isConnectionFast(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x7800

    goto :goto_0

    :cond_1
    const/16 v0, 0x7e8

    goto :goto_0
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "WIFI"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "unkonw network"

    goto :goto_0

    :pswitch_0
    const-string v0, "2G"

    goto :goto_0

    :pswitch_1
    const-string v0, "3G"

    goto :goto_0

    :pswitch_2
    const-string v0, "4G"

    goto :goto_0

    :cond_1
    const-string v0, "no network"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getUploadBufSize(Landroid/content/Context;)I
    .locals 3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v0, 0x19000

    :goto_0
    return v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v1, v0}, Lcom/easemob/util/NetUtils;->isConnectionFast(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2800

    goto :goto_0

    :cond_1
    const/16 v0, 0x400

    goto :goto_0
.end method

.method public static hasDataConnection(Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "net"

    const-string v2, "has wifi connection"

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "net"

    const-string v2, "has mobile connection"

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "net"

    const-string v1, "no data connection"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0
.end method

.method public static hasNetwork(Landroid/content/Context;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static isConnectionFast(II)Z
    .locals 5

    const/16 v4, 0xb

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    if-nez p0, :cond_4

    packed-switch p1, :pswitch_data_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_2

    const/16 v2, 0xe

    if-eq p1, v2, :cond_0

    const/16 v2, 0xd

    if-eq p1, v2, :cond_0

    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_3

    const/16 v2, 0xc

    if-eq p1, v2, :cond_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_4

    if-ne p1, v4, :cond_4

    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isWifiConnection(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "net"

    const-string v2, "wifi is connected"

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
