.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$1;
.super Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->uploadVoiceFileBlock(Ljava/lang/String;[BLcom/mechat/mechatlibrary/ui/ConversationActivity$OnUploadFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

.field private final synthetic val$onUploadFinishCallback:Lcom/mechat/mechatlibrary/ui/ConversationActivity$OnUploadFinishCallback;

.field private final synthetic val$voiceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;Ljava/lang/String;Lcom/mechat/mechatlibrary/ui/ConversationActivity$OnUploadFinishCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$1;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$1;->val$voiceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$1;->val$onUploadFinishCallback:Lcom/mechat/mechatlibrary/ui/ConversationActivity$OnUploadFinishCallback;

    .line 2140
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
    .line 2167
    const-string v2, "ConversationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uploadVoiceFileBlock failed = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2169
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2170
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
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2175
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$1;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$1;->val$voiceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->uploadFailed(Ljava/lang/String;)V

    .line 2177
    .end local v1           #srt2:Ljava/lang/String;
    :goto_0
    return-void

    .line 2171
    :catch_0
    move-exception v0

    .line 2172
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2175
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$1;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$1;->val$voiceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->uploadFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 2173
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    .line 2175
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$1;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$1;->val$voiceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->uploadFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 2174
    :catchall_0
    move-exception v2

    .line 2175
    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$1;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$1;->val$voiceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->uploadFailed(Ljava/lang/String;)V

    .line 2176
    throw v2
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 8
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"

    .prologue
    .line 2145
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, p3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2146
    .local v4, jsonStr:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2147
    .local v3, json:Lorg/json/JSONObject;
    const-string v5, "success"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2148
    .local v2, isSuc:Z
    if-nez v2, :cond_1

    .line 2149
    iget-object v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$1;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    iget-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$1;->val$voiceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->uploadFailed(Ljava/lang/String;)V

    .line 2163
    .end local v2           #isSuc:Z
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #jsonStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2152
    .restart local v2       #isSuc:Z
    .restart local v3       #json:Lorg/json/JSONObject;
    .restart local v4       #jsonStr:Ljava/lang/String;
    :cond_1
    const-string v5, "ctx"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2153
    .local v0, ctx:Ljava/lang/String;
    iget-object v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$1;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;
    invoke-static {v5}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;)Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-result-object v5

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->threadStateMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$43(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$1;->val$voiceId:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;

    invoke-virtual {v5, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;->addCtxString(Ljava/lang/String;)V

    .line 2154
    const-string v5, "ConversationActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "suc1 = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    iget-object v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$1;->val$onUploadFinishCallback:Lcom/mechat/mechatlibrary/ui/ConversationActivity$OnUploadFinishCallback;

    if-eqz v5, :cond_0

    .line 2156
    iget-object v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$1;->val$onUploadFinishCallback:Lcom/mechat/mechatlibrary/ui/ConversationActivity$OnUploadFinishCallback;

    invoke-interface {v5}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$OnUploadFinishCallback;->onUploadFinish()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2158
    .end local v0           #ctx:Ljava/lang/String;
    .end local v2           #isSuc:Z
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #jsonStr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2159
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 2160
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 2161
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
