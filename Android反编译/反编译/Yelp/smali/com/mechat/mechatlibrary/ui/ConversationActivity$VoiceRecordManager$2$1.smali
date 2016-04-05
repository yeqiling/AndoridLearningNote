.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2$1;
.super Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->onUploadFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;

.field private final synthetic val$voiceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2$1;->this$2:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2$1;->val$voiceId:Ljava/lang/String;

    .line 2200
    invoke-direct {p0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 5
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"
    .parameter "error"

    .prologue
    .line 2228
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2$1;->this$2:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->access$0(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2$1;->val$voiceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->uploadFailed(Ljava/lang/String;)V

    .line 2230
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2231
    .local v1, srt2:Ljava/lang/String;
    const-string v2, "ConversationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fail = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2235
    .end local v1           #srt2:Ljava/lang/String;
    :goto_0
    return-void

    .line 2232
    :catch_0
    move-exception v0

    .line 2233
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 9
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"

    .prologue
    .line 2205
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v3, p3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2206
    .local v3, json:Ljava/lang/String;
    const-string v6, "ConversationActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "suc2 = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2208
    .local v4, jsonObj:Lorg/json/JSONObject;
    const-string v6, "success"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2209
    .local v2, isSuc:Z
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2$1;->this$2:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->access$0(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    move-result-object v6

    iget-boolean v6, v6, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->isActivityDestory:Z

    if-eqz v6, :cond_1

    .line 2210
    :cond_0
    iget-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2$1;->this$2:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->access$0(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    move-result-object v6

    iget-object v7, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2$1;->val$voiceId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->uploadFailed(Ljava/lang/String;)V

    .line 2224
    .end local v2           #isSuc:Z
    .end local v3           #json:Ljava/lang/String;
    .end local v4           #jsonObj:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 2213
    .restart local v2       #isSuc:Z
    .restart local v3       #json:Ljava/lang/String;
    .restart local v4       #jsonObj:Lorg/json/JSONObject;
    :cond_1
    const-string v6, "file"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2214
    .local v1, file:Ljava/lang/String;
    iget-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2$1;->this$2:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->access$0(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    move-result-object v6

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;)Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2$1;->val$voiceId:Ljava/lang/String;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getMCVoiceMessageById(Ljava/lang/String;)Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;
    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$31(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    move-result-object v5

    .line 2215
    .local v5, voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "https://dn-zmec.qbox.me/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setVoiceUrl(Ljava/lang/String;)V

    .line 2216
    iget-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2$1;->this$2:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;->access$0(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    move-result-object v6

    iget-object v7, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2$1;->val$voiceId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->uploadSuc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2217
    .end local v1           #file:Ljava/lang/String;
    .end local v2           #isSuc:Z
    .end local v3           #json:Ljava/lang/String;
    .end local v4           #jsonObj:Lorg/json/JSONObject;
    .end local v5           #voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;
    :catch_0
    move-exception v0

    .line 2218
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 2219
    const-string v6, "ConversationActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "finish error = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2220
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 2221
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2222
    const-string v6, "ConversationActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "finish error = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
