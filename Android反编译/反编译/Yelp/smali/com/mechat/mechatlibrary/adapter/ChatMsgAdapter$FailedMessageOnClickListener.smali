.class Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;
.super Ljava/lang/Object;
.source "ChatMsgAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FailedMessageOnClickListener"
.end annotation


# instance fields
.field private failedMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

.field final synthetic this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;


# direct methods
.method public constructor <init>(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    .locals 0
    .parameter
    .parameter "failedMessage"

    .prologue
    .line 445
    iput-object p1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-object p2, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->failedMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

    .line 447
    return-void
.end method

.method static synthetic access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;)Lcom/mechat/mechatlibrary/bean/MCMessage;
    .locals 1
    .parameter

    .prologue
    .line 443
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->failedMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    .locals 1
    .parameter

    .prologue
    .line 441
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->failedMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

    const-string v1, "sending"

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->notifyDataSetChanged()V

    .line 460
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->failedMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

    instance-of v0, v0, Lcom/mechat/mechatlibrary/bean/MCLeaveMessage;

    if-eqz v0, :cond_0

    .line 461
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->getInstance()Lcom/mechat/mechatlibrary/MCClient;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->failedMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

    new-instance v2, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$1;

    invoke-direct {v2, p0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$1;-><init>(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/mechat/mechatlibrary/MCClient;->sendLeaveMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;)V

    .line 539
    :goto_0
    return-void

    .line 498
    :cond_0
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->getInstance()Lcom/mechat/mechatlibrary/MCClient;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;->failedMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

    new-instance v2, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;

    invoke-direct {v2, p0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener$2;-><init>(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/mechat/mechatlibrary/MCClient;->sendMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;)V

    goto :goto_0
.end method
