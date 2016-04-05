.class public Lcom/boohee/utils/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# static fields
.field public static final BOOHEE_PACKAGE_NAME:Ljava/lang/String; = "com.boohee.one"

.field public static final FOOD_PACKAGE_NAME:Ljava/lang/String; = "com.boohee.food"

.field public static final LIGHT_PACKAGE_NAME:Ljava/lang/String; = "com.boohee.light"

.field public static final WECHAT_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static goToMarket(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 95
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 97
    .local v1, goToMarket:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const v3, 0x7f0703d2

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const/4 v1, 0x1

    .line 86
    :goto_0
    return v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static launchBoohee(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 31
    const-string v0, "com.boohee.one"

    invoke-static {p0, v0}, Lcom/boohee/utils/AppUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.boohee.one"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    const-string v0, "com.boohee.one"

    invoke-static {p0, v0}, Lcom/boohee/utils/AppUtils;->goToMarket(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static launchFood(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 64
    const-string v0, "com.boohee.food"

    invoke-static {p0, v0}, Lcom/boohee/utils/AppUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.boohee.food"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v0, Lcom/boohee/utility/BuilderIntent;

    const-class v1, Lcom/boohee/one/ui/BrowserActivity;

    invoke-direct {v0, p0, v1}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    const-string v2, "http://shop.boohee.com/store/pages/foodlibrary_android"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/utility/BuilderIntent;

    move-result-object v0

    const-string v1, "title"

    const-string v2, "\u98df\u7269\u56fe\u4e66\u9986"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/utility/BuilderIntent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    goto :goto_0
.end method

.method public static launchLight(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 46
    const-string v0, "com.boohee.light"

    invoke-static {p0, v0}, Lcom/boohee/utils/AppUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.boohee.light"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 55
    :goto_0
    return-void

    .line 50
    :cond_0
    new-instance v0, Lcom/boohee/utility/BuilderIntent;

    const-class v1, Lcom/boohee/one/ui/BrowserActivity;

    invoke-direct {v0, p0, v1}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    const-string v2, "http://shop.boohee.com/store/pages/lightcalory_android"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/utility/BuilderIntent;

    move-result-object v0

    const-string v1, "title"

    const-string v2, "\u8f7b\u5361\u51cf\u80a5"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/utility/BuilderIntent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    goto :goto_0
.end method

.method public static launchOrDownloadApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 109
    invoke-static {p0, p1}, Lcom/boohee/utils/AppUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-static {p0, p1}, Lcom/boohee/utils/AppUtils;->goToMarket(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
