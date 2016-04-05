.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/mechat/mechatlibrary/ui/ConversationActivity$OnUploadFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->finishUploadVoiceFile(Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

.field private final synthetic val$voiceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->val$voiceId:Ljava/lang/String;

    .line 2185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;
    .locals 1
    .parameter

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    return-object v0
.end method


# virtual methods
.method public onUploadFinish()V
    .locals 9

    .prologue
    .line 2189
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;)Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-result-object v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->threadStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$43(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->val$voiceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;->getCtxString()Ljava/lang/String;

    move-result-object v6

    .line 2190
    .local v6, ctxStrings:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 2191
    .local v2, entity:Lorg/apache/http/HttpEntity;
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;)Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->val$voiceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/Utils;->getVoiceStorePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2192
    .local v8, voiceOutputPath:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 2193
    const-string v0, "ConversationActivity"

    const-string v1, "finish upload falied  "

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->val$voiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->uploadFailed(Ljava/lang/String;)V

    .line 2237
    :goto_0
    return-void

    .line 2197
    :cond_0
    invoke-static {v8}, Lcom/mechat/mechatlibrary/utils/Utils;->getFileBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v7, v0

    .line 2198
    .local v7, size:I
    const-string v0, "ConversationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "finish upload = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "             size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;)Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "https://voiceupload.meiqia.com/mkfile/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "?unitid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;
    invoke-static {v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;)Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-result-object v3

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getUnitid()Ljava/lang/String;
    invoke-static {v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$44(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "application/octet-stream"

    .line 2200
    new-instance v4, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2$1;

    iget-object v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->val$voiceId:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2$1;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;Ljava/lang/String;)V

    .line 2236
    invoke-static {}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->getVoiceUploadHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    .line 2199
    invoke-static/range {v0 .. v5}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->postSysc(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;[Lorg/apache/http/Header;)V

    goto :goto_0
.end method
