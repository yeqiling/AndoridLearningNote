.class public Lcom/boohee/utility/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/boohee/utility/Config;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/utility/Config;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 16
    const-string v1, "UNKNOW"

    .line 17
    .local v1, channel:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v2, v1

    .line 32
    .end local v1           #channel:Ljava/lang/String;
    .local v2, channel:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 18
    .end local v2           #channel:Ljava/lang/String;
    .restart local v1       #channel:Ljava/lang/String;
    :cond_0
    const-string v3, "UMENG_CHANNEL"

    .line 19
    .local v3, channelKey:Ljava/lang/String;
    const/4 v4, 0x0

    .line 21
    .local v4, metaData:Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 23
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    .line 24
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 26
    :cond_1
    if-eqz v4, :cond_2

    .line 27
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_1
    move-object v2, v1

    .line 32
    .end local v1           #channel:Ljava/lang/String;
    .restart local v2       #channel:Ljava/lang/String;
    goto :goto_0

    .line 29
    .end local v2           #channel:Ljava/lang/String;
    .restart local v1       #channel:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static getVersionCode()I
    .locals 6

    .prologue
    .line 47
    const/4 v2, 0x0

    .line 49
    .local v2, versionCode:I
    :try_start_0
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 50
    .local v1, pInfo:Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v1           #pInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 36
    const/4 v2, 0x0

    .line 38
    .local v2, versionName:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 39
    .local v1, pInfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1           #pInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
