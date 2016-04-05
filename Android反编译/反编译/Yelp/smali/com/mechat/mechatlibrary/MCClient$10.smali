.class Lcom/mechat/mechatlibrary/MCClient$10;
.super Lcom/mechat/mechatlibrary/callback/MyJsonHttpResponseHandler;
.source "MCClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/MCClient;->uploadImageFile(Lcom/mechat/mechatlibrary/bean/MCImageMessage;Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/MCClient;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/MCClient;Landroid/graphics/Bitmap;Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MCClient$10;->this$0:Lcom/mechat/mechatlibrary/MCClient;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/MCClient$10;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/mechat/mechatlibrary/MCClient$10;->val$onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;

    .line 1060
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/callback/MyJsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "errorResponse"
    .parameter "responseString"
    .parameter "responseWithThrowable"

    .prologue
    .line 1110
    invoke-super {p0, p1, p2, p3}, Lcom/mechat/mechatlibrary/callback/MyJsonHttpResponseHandler;->onFailure(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const-string v0, "MeChatClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload image token failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCClient$10;->val$onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;

    invoke-interface {v0, p2}, Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;->onFailure(Ljava/lang/String;)V

    .line 1113
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 8
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 1063
    invoke-super {p0, p1, p2, p3}, Lcom/mechat/mechatlibrary/callback/MyJsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 1065
    :try_start_0
    const-string v4, "success"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1066
    .local v1, isSuc:Z
    if-eqz v1, :cond_0

    .line 1067
    const-string v4, "token"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1068
    .local v3, token:Ljava/lang/String;
    const-string v4, "MeChatClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " requestTokenAndUploadImage suc , token = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " then start upload pic"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    new-instance v2, Lcom/mechat/loopj/android/http/RequestParams;

    invoke-direct {v2}, Lcom/mechat/loopj/android/http/RequestParams;-><init>()V

    .line 1071
    .local v2, params:Lcom/mechat/loopj/android/http/RequestParams;
    const-string v4, "unitid"

    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$2()Lcom/mechat/mechatlibrary/utils/SpManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/mechat/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const-string v4, "key"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".a.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/mechat/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const-string v4, "token"

    invoke-virtual {v2, v4, v3}, Lcom/mechat/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string v4, "file"

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Lcom/mechat/mechatlibrary/MCClient$10;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v6}, Lcom/mechat/mechatlibrary/utils/Utils;->compressImage(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v4, v5}, Lcom/mechat/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 1075
    const-string v4, "unitid"

    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$2()Lcom/mechat/mechatlibrary/utils/SpManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/mechat/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const-string v4, "http://upload.qiniu.com/"

    const-string v5, ""

    new-instance v6, Lcom/mechat/mechatlibrary/MCClient$10$1;

    iget-object v7, p0, Lcom/mechat/mechatlibrary/MCClient$10;->val$onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;

    invoke-direct {v6, p0, v7}, Lcom/mechat/mechatlibrary/MCClient$10$1;-><init>(Lcom/mechat/mechatlibrary/MCClient$10;Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;)V

    invoke-static {v4, v5, v2, v6}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    .end local v1           #isSuc:Z
    .end local v2           #params:Lcom/mechat/loopj/android/http/RequestParams;
    .end local v3           #token:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
