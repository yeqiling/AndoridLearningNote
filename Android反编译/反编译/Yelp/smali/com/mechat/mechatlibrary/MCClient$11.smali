.class Lcom/mechat/mechatlibrary/MCClient$11;
.super Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;
.source "MCClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/MCClient;->uploadVoiceFile(Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/MCClient;

.field private final synthetic val$message:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

.field private final synthetic val$onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;

.field private final synthetic val$uoloadFileByte:[B


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/MCClient;[BLcom/mechat/mechatlibrary/bean/MCVoiceMessage;Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MCClient$11;->this$0:Lcom/mechat/mechatlibrary/MCClient;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/MCClient$11;->val$uoloadFileByte:[B

    iput-object p3, p0, Lcom/mechat/mechatlibrary/MCClient$11;->val$message:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    iput-object p4, p0, Lcom/mechat/mechatlibrary/MCClient$11;->val$onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;

    .line 1129
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
    .line 1184
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$11;->val$message:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    const-string v3, "failure"

    invoke-virtual {v2, v3}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setStatus(Ljava/lang/String;)V

    .line 1185
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$11;->val$onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;

    const-string v3, "voice file path is not available"

    invoke-interface {v2, v3}, Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;->onFailure(Ljava/lang/String;)V

    .line 1187
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1188
    .local v1, srt2:Ljava/lang/String;
    const-string v2, "MeChatClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fail ctx1 = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1193
    .end local v1           #srt2:Ljava/lang/String;
    :goto_0
    return-void

    .line 1189
    :catch_0
    move-exception v0

    .line 1190
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 1191
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 11
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"

    .prologue
    .line 1133
    :try_start_0
    new-instance v9, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {v9, p3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1134
    .local v9, srt2:Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {v9}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1135
    .local v8, json:Lorg/json/JSONObject;
    const-string v0, "ctx"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1137
    .local v6, ctx:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 1138
    .local v2, entity:Lorg/apache/http/HttpEntity;
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$3()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "https://voiceupload.meiqia.com/mkfile/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mechat/mechatlibrary/MCClient$11;->val$uoloadFileByte:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "?unitid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$2()Lcom/mechat/mechatlibrary/utils/SpManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1139
    const-string v3, "application/octet-stream"

    new-instance v4, Lcom/mechat/mechatlibrary/MCClient$11$1;

    iget-object v5, p0, Lcom/mechat/mechatlibrary/MCClient$11;->val$onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;

    iget-object v10, p0, Lcom/mechat/mechatlibrary/MCClient$11;->val$message:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    invoke-direct {v4, p0, v5, v10}, Lcom/mechat/mechatlibrary/MCClient$11$1;-><init>(Lcom/mechat/mechatlibrary/MCClient$11;Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;)V

    .line 1174
    invoke-static {}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->getVoiceUploadHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    .line 1138
    invoke-static/range {v0 .. v5}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;[Lorg/apache/http/Header;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1180
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #ctx:Ljava/lang/String;
    .end local v8           #json:Lorg/json/JSONObject;
    .end local v9           #srt2:Ljava/lang/String;
    :goto_0
    return-void

    .line 1175
    :catch_0
    move-exception v7

    .line 1176
    .local v7, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 1177
    .end local v7           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v7

    .line 1178
    .local v7, e:Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
