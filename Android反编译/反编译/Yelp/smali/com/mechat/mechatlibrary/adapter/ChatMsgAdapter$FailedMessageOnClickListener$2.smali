.class Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;
.super Ljava/lang/Object;
.source "ChatMsgAdapter.java"

# interfaces
.implements Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 498
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;

    return-object v0
.end method


# virtual methods
.method public onFailure(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/lang/String;)V
    .locals 3
    .parameter "failureMessage"
    .parameter "response"

    .prologue
    .line 511
    const-string v0, "no service online"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 513
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->getInstance()Lcom/mechat/mechatlibrary/MCClient;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->failedMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;)Lcom/mechat/mechatlibrary/bean/MCMessage;

    move-result-object v1

    new-instance v2, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2$1;

    invoke-direct {v2, p0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2$1;-><init>(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/mechat/mechatlibrary/MCClient;->sendLeaveMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;)V

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->failedMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;)Lcom/mechat/mechatlibrary/bean/MCMessage;

    move-result-object v0

    const-string v1, "failure"

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->access$1(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v0

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->failedMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;)Lcom/mechat/mechatlibrary/bean/MCMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->updateMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    .line 534
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->access$1(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->notifyDataSetChanged()V

    .line 535
    const-string v0, "ChatMsgAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resend msg failed. reson = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->failedMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;)Lcom/mechat/mechatlibrary/bean/MCMessage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setId(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->failedMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;)Lcom/mechat/mechatlibrary/bean/MCMessage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->access$1(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v0

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->failedMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;)Lcom/mechat/mechatlibrary/bean/MCMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->updateMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    .line 505
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->access$1(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->notifyDataSetChanged()V

    .line 506
    const-string v0, "ChatMsgAdapter"

    const-string v1, "resend msg suc"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    return-void
.end method
