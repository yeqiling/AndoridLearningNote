.class Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$3;
.super Lcom/mechat/loopj/android/http/FileAsyncHttpResponseHandler;
.source "ChatMsgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->downloadFile(Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

.field private final synthetic val$voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;Ljava/io/File;Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$3;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    iput-object p3, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$3;->val$voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    .line 550
    invoke-direct {p0, p2}, Lcom/mechat/loopj/android/http/FileAsyncHttpResponseHandler;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 5
    .parameter "statusCode"
    .parameter "headers"
    .parameter "throwable"
    .parameter "file"

    .prologue
    const/4 v4, 0x0

    .line 565
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$3;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$2(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$3;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$2(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "mc_record_download_failed"

    invoke-static {v1, v2, v3}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 566
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 567
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$3;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #setter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->isDownloading:Z
    invoke-static {v0, v4}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$10(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;Z)V

    .line 568
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V
    .locals 5
    .parameter "statusCode"
    .parameter "headers"
    .parameter "file"

    .prologue
    const/4 v4, 0x0

    .line 554
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$3;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$2(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$3;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$2(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "mc_record_download_suc"

    invoke-static {v1, v2, v3}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 557
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$3;->val$voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setLocalPath(Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$3;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$3;->val$voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->updateMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    .line 559
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$3;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->notifyDataSetChanged()V

    .line 560
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$3;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #setter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->isDownloading:Z
    invoke-static {v0, v4}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$10(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;Z)V

    .line 561
    return-void
.end method
