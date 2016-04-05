.class Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2$1;
.super Ljava/lang/Object;
.source "ChatMsgAdapter.java"

# interfaces
.implements Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->onFailure(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2$1;->this$2:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/lang/String;)V
    .locals 2
    .parameter "failureMessage"
    .parameter "response"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2$1;->this$2:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;

    move-result-object v0

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->failedMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;)Lcom/mechat/mechatlibrary/bean/MCMessage;

    move-result-object v0

    const-string v1, "failure"

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2$1;->this$2:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;

    move-result-object v0

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->access$1(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->notifyDataSetChanged()V

    .line 526
    return-void
.end method

.method public onSuccess(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    .locals 2
    .parameter "leaveMessage"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2$1;->this$2:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;

    move-result-object v0

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->failedMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;)Lcom/mechat/mechatlibrary/bean/MCMessage;

    move-result-object v0

    const-string v1, "arrived"

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2$1;->this$2:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;

    move-result-object v0

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->access$1(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v0

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2$1;->this$2:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;

    move-result-object v1

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->failedMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;)Lcom/mechat/mechatlibrary/bean/MCMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->saveMCMessageForNoExist(Lcom/mechat/mechatlibrary/bean/MCMessage;)J

    .line 519
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2$1;->this$2:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;

    move-result-object v0

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->access$1(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->notifyDataSetChanged()V

    .line 520
    return-void
.end method
