.class Lcom/mechat/mechatlibrary/MCClient$2;
.super Lcom/mechat/mechatlibrary/callback/MyJsonHttpResponseHandler;
.source "MCClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/MCClient;->init(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/mechatlibrary/callback/OnInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$appKey:Ljava/lang/String;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MCClient$2;->val$appKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/MCClient$2;->val$context:Landroid/content/Context;

    .line 305
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/callback/MyJsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 6
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 308
    invoke-super {p0, p1, p2, p3}, Lcom/mechat/mechatlibrary/callback/MyJsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 309
    const-string v3, "MeChatClient"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getUnitid suc respons = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :try_start_0
    const-string v3, "success"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 312
    .local v2, isSuc:Z
    if-nez v2, :cond_0

    .line 315
    const-string v3, "MeChatClient"

    const-string v4, "appKey is unavailable"

    invoke-static {v3, v4}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$2()Lcom/mechat/mechatlibrary/utils/SpManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mechat/mechatlibrary/utils/SpManager;->setUnitid(Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$2()Lcom/mechat/mechatlibrary/utils/SpManager;

    move-result-object v3

    iget-object v4, p0, Lcom/mechat/mechatlibrary/MCClient$2;->val$appKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mechat/mechatlibrary/utils/SpManager;->setAppKey(Ljava/lang/String;)V

    .line 320
    new-instance v0, Lcom/mechat/mechatlibrary/dao/DBHelper;

    iget-object v3, p0, Lcom/mechat/mechatlibrary/MCClient$2;->val$context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/mechat/mechatlibrary/dao/DBHelper;-><init>(Landroid/content/Context;)V

    .line 322
    .local v0, dbHelper:Lcom/mechat/mechatlibrary/dao/DBHelper;
    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/dao/DBHelper;->createMCMessageTable()V

    .line 323
    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/dao/DBHelper;->createMCEventTable()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v0           #dbHelper:Lcom/mechat/mechatlibrary/dao/DBHelper;
    .end local v2           #isSuc:Z
    :cond_0
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v1

    .line 326
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
