.class Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MechatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/mechatlibrary/MechatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyNetworkChangeReceiver"
.end annotation


# instance fields
.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private info:Landroid/net/NetworkInfo;

.field private isNetAvaliable:Z

.field final synthetic this$0:Lcom/mechat/mechatlibrary/MechatService;


# direct methods
.method private constructor <init>(Lcom/mechat/mechatlibrary/MechatService;)V
    .locals 1
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;->isNetAvaliable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/mechat/mechatlibrary/MechatService;Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;-><init>(Lcom/mechat/mechatlibrary/MechatService;)V

    return-void
.end method


# virtual methods
.method public isNetAvaliable()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;->isNetAvaliable:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "arg0"
    .parameter "intent"

    .prologue
    .line 322
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/mechat/mechatlibrary/MechatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 324
    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 327
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;->info:Landroid/net/NetworkInfo;

    .line 328
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;->info:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;->info:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 330
    iget-boolean v1, p0, Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;->isNetAvaliable:Z

    if-nez v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    #calls: Lcom/mechat/mechatlibrary/MechatService;->poll()V
    invoke-static {v1}, Lcom/mechat/mechatlibrary/MechatService;->access$0(Lcom/mechat/mechatlibrary/MechatService;)V

    .line 333
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;->isNetAvaliable:Z

    .line 338
    :cond_1
    :goto_0
    return-void

    .line 335
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;->isNetAvaliable:Z

    goto :goto_0
.end method
