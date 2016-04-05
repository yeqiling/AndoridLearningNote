.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$15;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity;->sendLeaveMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

.field private final synthetic val$message:Lcom/mechat/mechatlibrary/bean/MCMessage;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$15;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$15;->val$message:Lcom/mechat/mechatlibrary/bean/MCMessage;

    .line 1409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/lang/String;)V
    .locals 2
    .parameter "failureMessage"
    .parameter "response"

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$15;->val$message:Lcom/mechat/mechatlibrary/bean/MCMessage;

    const-string v1, "failure"

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    .line 1422
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$15;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->notifyDataSetChanged()V

    .line 1423
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$15;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$5(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$15;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$5(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1424
    const-string v0, "ConversationActivity"

    invoke-static {v0, p2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    return-void
.end method

.method public onSuccess(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    .locals 2
    .parameter "leaveMessage"

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$15;->val$message:Lcom/mechat/mechatlibrary/bean/MCMessage;

    const-string v1, "arrived"

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    .line 1414
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$15;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->notifyDataSetChanged()V

    .line 1416
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$15;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$5(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$15;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$5(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1417
    return-void
.end method
