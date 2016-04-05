.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/mechat/mechatlibrary/callback/OnInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

.field private final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->val$savedInstanceState:Landroid/os/Bundle;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v3, 0x0

    .line 328
    const-string v0, "ConversationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate() letUserOnline failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isOnlineSuc:Z
    invoke-static {v0, v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$42(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    .line 330
    const-string v0, "unknow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "timed out"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isNetWork:Z
    invoke-static {v0, v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$41(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    .line 332
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    const/4 v1, 0x3

    const/4 v2, 0x1

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeTipUI(IZ)V
    invoke-static {v0, v1, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$13(Lcom/mechat/mechatlibrary/ui/ConversationActivity;IZ)V

    .line 333
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->loadLeaveMsgData()V
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$52(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    .line 335
    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .parameter "response"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 302
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->val$savedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->val$savedInstanceState:Landroid/os/Bundle;

    const-string v2, "isNeedOnline"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isNeedOnline:Z
    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$46(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    .line 304
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->val$savedInstanceState:Landroid/os/Bundle;

    const-string v2, "isHasService"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isHasService:Z
    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$47(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    .line 305
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->val$savedInstanceState:Landroid/os/Bundle;

    const-string v2, "cameraPicPath"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->cameraPicPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$48(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->val$savedInstanceState:Landroid/os/Bundle;

    const-string v2, "orientation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->orientation:I
    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$49(Lcom/mechat/mechatlibrary/ui/ConversationActivity;I)V

    .line 307
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->orientation:I
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$50(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->setRequestedOrientation(I)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isNeedOnline:Z
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$51(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mechat/mechatlibrary/bean/MCService;->getCurrentService()Lcom/mechat/mechatlibrary/bean/MCService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/bean/MCService;->getUsname()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->requestUserOnline()V
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$37(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    .line 324
    :goto_0
    return-void

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isHasService:Z
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$38(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeTipUI(IZ)V
    invoke-static {v0, v3, v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$13(Lcom/mechat/mechatlibrary/ui/ConversationActivity;IZ)V

    .line 315
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->loadLeaveMsgData()V
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$52(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    goto :goto_0

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isOnlineSuc:Z
    invoke-static {v0, v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$42(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    .line 319
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeTitleState(I)V
    invoke-static {v0, v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$53(Lcom/mechat/mechatlibrary/ui/ConversationActivity;I)V

    .line 320
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->requestEventData()V
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$54(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    .line 321
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->requestMessageData()V
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$55(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    goto :goto_0
.end method
