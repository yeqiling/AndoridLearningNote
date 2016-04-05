.class Lcom/mechat/mechatlibrary/MechatService$3;
.super Lcom/mechat/loopj/android/http/FileAsyncHttpResponseHandler;
.source "MechatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/MechatService;->downloadVoiceFile(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/MechatService;

.field private final synthetic val$chatMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

.field private final synthetic val$voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/MechatService;Ljava/io/File;Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MechatService$3;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    iput-object p3, p0, Lcom/mechat/mechatlibrary/MechatService$3;->val$voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    iput-object p4, p0, Lcom/mechat/mechatlibrary/MechatService$3;->val$chatMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

    .line 296
    invoke-direct {p0, p2}, Lcom/mechat/loopj/android/http/FileAsyncHttpResponseHandler;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 2
    .parameter "statusCode"
    .parameter "headers"
    .parameter "throwable"
    .parameter "file"

    .prologue
    .line 308
    const-string v0, "MechatService"

    const-string v1, "downloadVoiceFile failed"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MechatService$3;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/MechatService$3;->val$chatMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

    #calls: Lcom/mechat/mechatlibrary/MechatService;->addMsgAndSendBroadcast(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/MechatService;->access$6(Lcom/mechat/mechatlibrary/MechatService;Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    .line 310
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V
    .locals 2
    .parameter "statusCode"
    .parameter "headers"
    .parameter "file"

    .prologue
    .line 300
    const-string v0, "MechatService"

    const-string v1, "downloadVoiceFile success"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MechatService$3;->val$voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setLocalPath(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MechatService$3;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    #getter for: Lcom/mechat/mechatlibrary/MechatService;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/MechatService;->access$4(Lcom/mechat/mechatlibrary/MechatService;)Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/MechatService$3;->val$voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->updateMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    .line 303
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MechatService$3;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/MechatService$3;->val$chatMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

    #calls: Lcom/mechat/mechatlibrary/MechatService;->addMsgAndSendBroadcast(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/MechatService;->access$6(Lcom/mechat/mechatlibrary/MechatService;Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    .line 304
    return-void
.end method
