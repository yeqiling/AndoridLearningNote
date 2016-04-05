.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$14;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity;->sendMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$14;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    .line 1361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/lang/String;)V
    .locals 3
    .parameter "failureMessage"
    .parameter "response"

    .prologue
    const/4 v2, 0x0

    .line 1370
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$14;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->notifyDataSetChanged()V

    .line 1371
    const-string v0, "timed out"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1374
    const-string v0, "unknow"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1377
    const-string v0, "no service online"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$14;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    const/4 v1, 0x1

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeTipUI(IZ)V
    invoke-static {v0, v2, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$13(Lcom/mechat/mechatlibrary/ui/ConversationActivity;IZ)V

    .line 1391
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$14;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeInputState(I)V
    invoke-static {v0, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$1(Lcom/mechat/mechatlibrary/ui/ConversationActivity;I)V

    .line 1393
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    .locals 2
    .parameter "mcMmessage"

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$14;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->notifyDataSetChanged()V

    .line 1365
    const-string v0, "ConversationActivity"

    const-string v1, "send msg suc"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    return-void
.end method
