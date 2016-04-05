.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyNetworkChangeReceiver"
.end annotation


# instance fields
.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private info:Landroid/net/NetworkInfo;

.field private isNetAvailable:Z

.field private isNotFirstChanged:Z

.field final synthetic this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;


# direct methods
.method private constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1959
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1963
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->isNotFirstChanged:Z

    .line 1964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->isNetAvailable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1959
    invoke-direct {p0, p1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1968
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1969
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1970
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 1971
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->info:Landroid/net/NetworkInfo;

    .line 1972
    iget-boolean v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->isNotFirstChanged:Z

    if-eqz v1, :cond_4

    .line 1973
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->info:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->info:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1974
    const-string v1, "ConversationActivity"

    const-string v2, "Recever isNetWork = true"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isHasService:Z
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$38(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isOnlineSuc:Z
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$39(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isNetWork:Z
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$40(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1976
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeTipUI(IZ)V
    invoke-static {v1, v4, v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$13(Lcom/mechat/mechatlibrary/ui/ConversationActivity;IZ)V

    .line 1977
    const-string v1, "ConversationActivity"

    const-string v2, "changeTipUI(ATTENTION_LEAVE_MSG_TIP, true)"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    :cond_0
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isNetWork:Z
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$40(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1980
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeTipUI(IZ)V
    invoke-static {v1, v5, v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$13(Lcom/mechat/mechatlibrary/ui/ConversationActivity;IZ)V

    .line 1982
    :cond_1
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isNetWork:Z
    invoke-static {v1, v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$41(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    .line 1983
    iput-boolean v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->isNetAvailable:Z

    .line 1985
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isOnlineSuc:Z
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$39(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1986
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->requestUserOnline()V
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$37(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    .line 1987
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isOnlineSuc:Z
    invoke-static {v1, v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$42(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    .line 1999
    :cond_2
    :goto_0
    return-void

    .line 1990
    :cond_3
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeTipUI(IZ)V
    invoke-static {v1, v5, v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$13(Lcom/mechat/mechatlibrary/ui/ConversationActivity;IZ)V

    .line 1991
    iput-boolean v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->isNetAvailable:Z

    .line 1992
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isNetWork:Z
    invoke-static {v1, v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$41(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    .line 1993
    const-string v1, "ConversationActivity"

    const-string v2, "Recever isNetWork = false"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1996
    :cond_4
    iput-boolean v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;->isNotFirstChanged:Z

    goto :goto_0
.end method
