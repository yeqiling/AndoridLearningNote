.class Lcom/mechat/mechatlibrary/utils/Utils$1;
.super Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/utils/Utils;->compareSdkVersion(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$currentVersion:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput p1, p0, Lcom/mechat/mechatlibrary/utils/Utils$1;->val$currentVersion:I

    .line 311
    invoke-direct {p0}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 7
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 314
    invoke-super {p0, p1, p2, p3}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 316
    :try_start_0
    const-string v4, "version"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, versionStr:Ljava/lang/String;
    const-string v4, "."

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 318
    .local v2, version:I
    const-string v4, "url"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, url:Ljava/lang/String;
    iget v4, p0, Lcom/mechat/mechatlibrary/utils/Utils$1;->val$currentVersion:I

    if-le v2, v4, :cond_0

    .line 321
    const-string v4, "MCdebug"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5f53\u524d\u7f8e\u6d3dSDK\u6709\u65b0\u7248\u672c\uff0c\u4e0b\u8f7d\u5730\u5740\uff1a "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v1           #url:Ljava/lang/String;
    .end local v2           #version:I
    .end local v3           #versionStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
