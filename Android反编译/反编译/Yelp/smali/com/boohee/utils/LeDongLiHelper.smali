.class public Lcom/boohee/utils/LeDongLiHelper;
.super Ljava/lang/Object;
.source "LeDongLiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/utils/LeDongLiHelper$CallBack;
    }
.end annotation


# static fields
.field public static final BROADCAST_ACTION:Ljava/lang/String; = "BOOHEE_RECEIVE_LEDONGLI_STEP"

.field public static final KEY_DATA_SOURCE:Ljava/lang/String; = "ledongli"

.field public static final KEY_LE_DONG_LI:Ljava/lang/String; = "KEY_LE_DONG_LI"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final QUERY_STRING:Ljava/lang/String; = "query_ledongli_data"

.field public static receiver:Landroid/content/BroadcastReceiver;

.field public static resultCallBack:Lcom/boohee/utils/LeDongLiHelper$CallBack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method public static LoadLeDongLiSteps(Landroid/app/Activity;Lcom/boohee/utils/LeDongLiHelper$CallBack;)V
    .locals 4
    .parameter "activity"
    .parameter "callBack"

    .prologue
    .line 34
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    sput-object p1, Lcom/boohee/utils/LeDongLiHelper;->resultCallBack:Lcom/boohee/utils/LeDongLiHelper$CallBack;

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string v2, "cn.ledongli.ldl.ledongliservice"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "package_name"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v2, "query_ledongli_data"

    const-string v3, "step"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-static {p0, v0}, Lcom/boohee/utils/LeDongLiHelper;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 40
    .local v1, wrapperedIntent:Landroid/content/Intent;
    if-nez v1, :cond_2

    .line 41
    sget-object v2, Lcom/boohee/utils/LeDongLiHelper;->resultCallBack:Lcom/boohee/utils/LeDongLiHelper$CallBack;

    const-string v3, "\u4e50\u52a8\u529b\u4e0d\u5728\u5440,\u8bf7\u5b89\u88c5\u4e50\u52a8\u529b~~"

    invoke-interface {v2, v3}, Lcom/boohee/utils/LeDongLiHelper$CallBack;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_2
    const-string v2, "cn.ledongli.ldl"

    invoke-static {v2}, Lcom/boohee/utils/SystemUtil;->getAppVersionCode(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x1a6

    if-gt v2, v3, :cond_3

    .line 46
    sget-object v2, Lcom/boohee/utils/LeDongLiHelper;->resultCallBack:Lcom/boohee/utils/LeDongLiHelper$CallBack;

    const-string v3, "\u4e50\u52a8\u529b\u7248\u672c\u8fc7\u4f4e\uff0c\u8bf7\u66f4\u65b0\u52304.2.2\u4ee5\u4e0a\u7684\u7248\u672c"

    invoke-interface {v2, v3}, Lcom/boohee/utils/LeDongLiHelper$CallBack;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_3
    invoke-static {p0}, Lcom/boohee/utils/LeDongLiHelper;->registerReciver(Landroid/app/Activity;)V

    .line 51
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10
    .parameter "context"
    .parameter "implicitIntent"

    .prologue
    const/4 v9, 0x0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 57
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p1, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 59
    .local v5, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 60
    :cond_0
    const/4 v2, 0x0

    .line 71
    :goto_0
    return-object v2

    .line 63
    :cond_1
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 64
    .local v6, serviceInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 65
    .local v3, packageName:Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 66
    .local v0, className:Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v1, component:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 70
    .local v2, explicitIntent:Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static destroy(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-static {p0}, Lcom/boohee/utils/LeDongLiHelper;->unRegisterReciver(Landroid/app/Activity;)V

    .line 106
    sput-object v0, Lcom/boohee/utils/LeDongLiHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 107
    sput-object v0, Lcom/boohee/utils/LeDongLiHelper;->resultCallBack:Lcom/boohee/utils/LeDongLiHelper$CallBack;

    .line 108
    return-void
.end method

.method private static initReciever()V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/boohee/utils/LeDongLiHelper;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/boohee/utils/LeDongLiHelper$1;

    invoke-direct {v0}, Lcom/boohee/utils/LeDongLiHelper$1;-><init>()V

    sput-object v0, Lcom/boohee/utils/LeDongLiHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 96
    :cond_0
    return-void
.end method

.method public static registerReciver(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 75
    invoke-static {}, Lcom/boohee/utils/LeDongLiHelper;->initReciever()V

    .line 76
    sget-object v0, Lcom/boohee/utils/LeDongLiHelper;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "BOOHEE_RECEIVE_LEDONGLI_STEP"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    return-void
.end method

.method public static unRegisterReciver(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 80
    sget-object v0, Lcom/boohee/utils/LeDongLiHelper;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v0, Lcom/boohee/utils/LeDongLiHelper;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/boohee/utils/LeDongLiHelper;->receiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method
