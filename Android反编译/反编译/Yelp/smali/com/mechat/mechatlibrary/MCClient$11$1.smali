.class Lcom/mechat/mechatlibrary/MCClient$11$1;
.super Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;
.source "MCClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/MCClient$11;->onSuccess(I[Lorg/apache/http/Header;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mechat/mechatlibrary/MCClient$11;

.field private final synthetic val$message:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

.field private final synthetic val$onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/MCClient$11;Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MCClient$11$1;->this$1:Lcom/mechat/mechatlibrary/MCClient$11;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/MCClient$11$1;->val$onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;

    iput-object p3, p0, Lcom/mechat/mechatlibrary/MCClient$11$1;->val$message:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    .line 1139
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
    .line 1163
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$11$1;->val$message:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    const-string v3, "failure"

    invoke-virtual {v2, v3}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setStatus(Ljava/lang/String;)V

    .line 1164
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$11$1;->val$onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;

    const-string v3, "voice file path is not available"

    invoke-interface {v2, v3}, Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;->onFailure(Ljava/lang/String;)V

    .line 1165
    const-string v2, "MeChatClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "upload voice fail responseBody =  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1168
    .local v1, srt2:Ljava/lang/String;
    const-string v2, "MeChatClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "upload voice fail  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    .end local v1           #srt2:Ljava/lang/String;
    :goto_0
    return-void

    .line 1169
    :catch_0
    move-exception v0

    .line 1170
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1171
    const-string v2, "MeChatClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "upload voice fail catch e   "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 9
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"

    .prologue
    .line 1143
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v3, p3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1144
    .local v3, json:Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1145
    .local v4, jsonObj:Lorg/json/JSONObject;
    const-string v6, "success"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1146
    .local v2, isSuc:Z
    if-eqz v2, :cond_0

    .line 1147
    const-string v6, "file"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1148
    .local v1, file:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "https://dn-zmec.qbox.me/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1149
    .local v5, path:Ljava/lang/String;
    iget-object v6, p0, Lcom/mechat/mechatlibrary/MCClient$11$1;->val$onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;

    invoke-interface {v6, v5}, Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;->onSuccess(Ljava/lang/String;)V

    .line 1159
    .end local v1           #file:Ljava/lang/String;
    .end local v2           #isSuc:Z
    .end local v3           #json:Ljava/lang/String;
    .end local v4           #jsonObj:Lorg/json/JSONObject;
    .end local v5           #path:Ljava/lang/String;
    :goto_0
    return-void

    .line 1151
    .restart local v2       #isSuc:Z
    .restart local v3       #json:Ljava/lang/String;
    .restart local v4       #jsonObj:Lorg/json/JSONObject;
    :cond_0
    iget-object v6, p0, Lcom/mechat/mechatlibrary/MCClient$11$1;->val$message:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    const-string v7, "failure"

    invoke-virtual {v6, v7}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setStatus(Ljava/lang/String;)V

    .line 1152
    iget-object v6, p0, Lcom/mechat/mechatlibrary/MCClient$11$1;->val$onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;

    const-string v7, "voice file path is not available"

    invoke-interface {v6, v7}, Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;->onFailure(Ljava/lang/String;)V

    .line 1153
    const-string v6, "MeChatClient"

    const-string v7, "upload voice suc but catch exception else suc  "

    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1155
    .end local v2           #isSuc:Z
    .end local v3           #json:Ljava/lang/String;
    .end local v4           #jsonObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1156
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "MeChatClient"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "upload voice suc but catch exception = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
