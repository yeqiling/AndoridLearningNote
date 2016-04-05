.class public Lcom/boohee/utils/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 10
    if-eqz p0, :cond_1

    .line 11
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 13
    .local v2, mgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 14
    .local v1, info:[Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 15
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 16
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 17
    const/4 v3, 0x1

    .line 22
    .end local v0           #i:I
    .end local v1           #info:[Landroid/net/NetworkInfo;
    .end local v2           #mgr:Landroid/net/ConnectivityManager;
    :goto_1
    return v3

    .line 15
    .restart local v0       #i:I
    .restart local v1       #info:[Landroid/net/NetworkInfo;
    .restart local v2       #mgr:Landroid/net/ConnectivityManager;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    .end local v0           #i:I
    .end local v1           #info:[Landroid/net/NetworkInfo;
    .end local v2           #mgr:Landroid/net/ConnectivityManager;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isWifiConnection(Landroid/content/Context;)Z
    .locals 5
    .parameter "paramContext"

    .prologue
    const/4 v2, 0x1

    .line 26
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 27
    .local v0, localConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 28
    .local v1, localNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    const-string v3, ""

    const-string v4, "wifi is connected!"

    invoke-static {v3, v4}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
