.class Lcom/mechat/mechatlibrary/MCClient$10$1;
.super Lcom/mechat/mechatlibrary/callback/MyJsonHttpResponseHandler;
.source "MCClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/MCClient$10;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mechat/mechatlibrary/MCClient$10;

.field private final synthetic val$onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/MCClient$10;Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MCClient$10$1;->this$1:Lcom/mechat/mechatlibrary/MCClient$10;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/MCClient$10$1;->val$onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;

    .line 1077
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
    .line 1097
    const-string v0, "MeChatClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload image failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCClient$10$1;->val$onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;

    invoke-interface {v0, p2}, Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;->onFailure(Ljava/lang/String;)V

    .line 1099
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 7
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 1079
    const-string v4, "MeChatClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " image file upload success = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    const-string v4, "key"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1081
    const/4 v2, 0x0

    .line 1083
    .local v2, key:Ljava/lang/String;
    :try_start_0
    const-string v4, "key"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://dn-zmec.qbox.me/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1088
    .local v3, path:Ljava/lang/String;
    iget-object v4, p0, Lcom/mechat/mechatlibrary/MCClient$10$1;->val$onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;

    invoke-interface {v4, v3}, Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;->onSuccess(Ljava/lang/String;)V

    .line 1094
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #path:Ljava/lang/String;
    :goto_1
    return-void

    .line 1084
    .restart local v2       #key:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1085
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1090
    .end local v1           #e:Lorg/json/JSONException;
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/mechat/mechatlibrary/MCClient$10$1;->val$onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;

    const-string v5, "unknow"

    invoke-interface {v4, v5}, Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;->onFailure(Ljava/lang/String;)V

    .line 1091
    const-string v4, "MeChatClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " image file upload failed = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
