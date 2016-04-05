.class Lcom/mechat/mechatlibrary/MCClient$1;
.super Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;
.source "MCClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/MCClient;->getUnitid(Ljava/lang/String;Lcom/mechat/mechatlibrary/callback/OnInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$appKey:Ljava/lang/String;

.field private final synthetic val$onInitCallback:Lcom/mechat/mechatlibrary/callback/OnInitCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mechat/mechatlibrary/callback/OnInitCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MCClient$1;->val$appKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/MCClient$1;->val$onInitCallback:Lcom/mechat/mechatlibrary/callback/OnInitCallback;

    .line 145
    invoke-direct {p0}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseString"
    .parameter "throwable"

    .prologue
    .line 205
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, failureString:Ljava/lang/String;
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCClient$1;->val$onInitCallback:Lcom/mechat/mechatlibrary/callback/OnInitCallback;

    const-string v2, "unknow"

    invoke-interface {v1, v2}, Lcom/mechat/mechatlibrary/callback/OnInitCallback;->onFailed(Ljava/lang/String;)V

    .line 208
    const-string v1, "MeChatClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUnitid failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v1, "MeChatClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUnitid failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$4()I

    move-result v1

    if-lez v1, :cond_0

    .line 211
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$3()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$1;->val$appKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/mechat/mechatlibrary/MCClient$1;->val$onInitCallback:Lcom/mechat/mechatlibrary/callback/OnInitCallback;

    invoke-static {v1, v2, v3}, Lcom/mechat/mechatlibrary/MCClient;->init(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/mechatlibrary/callback/OnInitCallback;)V

    .line 212
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$4()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/mechat/mechatlibrary/MCClient;->access$5(I)V

    .line 215
    :cond_0
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$6()Lcom/mechat/mechatlibrary/dao/DBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/dao/DBHelper;->createMCMessageTable()V

    .line 216
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$6()Lcom/mechat/mechatlibrary/dao/DBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/dao/DBHelper;->createMCEventTable()V

    .line 217
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 4
    .parameter "statusCode"
    .parameter "headers"
    .parameter "throwable"
    .parameter "errorResponse"

    .prologue
    .line 222
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, failureString:Ljava/lang/String;
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCClient$1;->val$onInitCallback:Lcom/mechat/mechatlibrary/callback/OnInitCallback;

    const-string v2, "unknow"

    invoke-interface {v1, v2}, Lcom/mechat/mechatlibrary/callback/OnInitCallback;->onFailed(Ljava/lang/String;)V

    .line 225
    const-string v1, "MeChatClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUnitid failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "MeChatClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUnitid failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$4()I

    move-result v1

    if-lez v1, :cond_0

    .line 228
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$3()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$1;->val$appKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/mechat/mechatlibrary/MCClient$1;->val$onInitCallback:Lcom/mechat/mechatlibrary/callback/OnInitCallback;

    invoke-static {v1, v2, v3}, Lcom/mechat/mechatlibrary/MCClient;->init(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/mechatlibrary/callback/OnInitCallback;)V

    .line 229
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$4()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/mechat/mechatlibrary/MCClient;->access$5(I)V

    .line 232
    :cond_0
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$6()Lcom/mechat/mechatlibrary/dao/DBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/dao/DBHelper;->createMCMessageTable()V

    .line 233
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$6()Lcom/mechat/mechatlibrary/dao/DBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/dao/DBHelper;->createMCEventTable()V

    .line 234
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 5
    .parameter "statusCode"
    .parameter "headers"
    .parameter "throwable"
    .parameter "errorResponse"

    .prologue
    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, failureString:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, throwableStr:Ljava/lang/String;
    const-string v2, "timed out"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$1;->val$onInitCallback:Lcom/mechat/mechatlibrary/callback/OnInitCallback;

    const-string v3, "timed out"

    invoke-interface {v2, v3}, Lcom/mechat/mechatlibrary/callback/OnInitCallback;->onFailed(Ljava/lang/String;)V

    .line 191
    :goto_0
    const-string v2, "MeChatClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getUnitid failed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v2, "MeChatClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getUnitid failed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$4()I

    move-result v2

    if-lez v2, :cond_0

    .line 194
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$3()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mechat/mechatlibrary/MCClient$1;->val$appKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/mechat/mechatlibrary/MCClient$1;->val$onInitCallback:Lcom/mechat/mechatlibrary/callback/OnInitCallback;

    invoke-static {v2, v3, v4}, Lcom/mechat/mechatlibrary/MCClient;->init(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/mechatlibrary/callback/OnInitCallback;)V

    .line 195
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$4()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lcom/mechat/mechatlibrary/MCClient;->access$5(I)V

    .line 198
    :cond_0
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$6()Lcom/mechat/mechatlibrary/dao/DBHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/dao/DBHelper;->createMCMessageTable()V

    .line 199
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$6()Lcom/mechat/mechatlibrary/dao/DBHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/dao/DBHelper;->createMCEventTable()V

    .line 200
    return-void

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$1;->val$onInitCallback:Lcom/mechat/mechatlibrary/callback/OnInitCallback;

    const-string v3, "unknow"

    invoke-interface {v2, v3}, Lcom/mechat/mechatlibrary/callback/OnInitCallback;->onFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 10
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 148
    invoke-super {p0, p1, p2, p3}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 149
    const-string v5, "MeChatClient"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getUnitid suc respons = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :try_start_0
    const-string v5, "success"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 152
    .local v3, isSuc:Z
    if-eqz v3, :cond_1

    .line 153
    const-string v5, "unitid"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, unitid:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/mechat/mechatlibrary/MCClient;->access$1(Z)V

    .line 157
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$2()Lcom/mechat/mechatlibrary/utils/SpManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mechat/mechatlibrary/utils/SpManager;->getInnerName()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, innerName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 159
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$2()Lcom/mechat/mechatlibrary/utils/SpManager;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lcom/mechat/mechatlibrary/utils/SpManager;->setUnitiIdByInnerName(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$2()Lcom/mechat/mechatlibrary/utils/SpManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mechat/mechatlibrary/utils/SpManager;->setUnitid(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$2()Lcom/mechat/mechatlibrary/utils/SpManager;

    move-result-object v5

    iget-object v6, p0, Lcom/mechat/mechatlibrary/MCClient$1;->val$appKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mechat/mechatlibrary/utils/SpManager;->setAppKey(Ljava/lang/String;)V

    .line 166
    new-instance v0, Lcom/mechat/mechatlibrary/dao/DBHelper;

    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$3()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/mechat/mechatlibrary/dao/DBHelper;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, dbHelper:Lcom/mechat/mechatlibrary/dao/DBHelper;
    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/dao/DBHelper;->createMCMessageTable()V

    .line 169
    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/dao/DBHelper;->createMCEventTable()V

    .line 170
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$3()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$2()Lcom/mechat/mechatlibrary/utils/SpManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mechat/mechatlibrary/utils/SpManager;->getCookie()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$2()Lcom/mechat/mechatlibrary/utils/SpManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mechat/mechatlibrary/MCClient$1;->val$onInitCallback:Lcom/mechat/mechatlibrary/callback/OnInitCallback;

    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$2()Lcom/mechat/mechatlibrary/utils/SpManager;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/mechat/mechatlibrary/utils/Utils;->visitUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mechat/mechatlibrary/callback/OnInitCallback;Lcom/mechat/mechatlibrary/utils/SpManager;)V

    .line 178
    .end local v0           #dbHelper:Lcom/mechat/mechatlibrary/dao/DBHelper;
    .end local v2           #innerName:Ljava/lang/String;
    .end local v3           #isSuc:Z
    .end local v4           #unitid:Ljava/lang/String;
    :goto_0
    return-void

    .line 172
    .restart local v3       #isSuc:Z
    :cond_1
    iget-object v5, p0, Lcom/mechat/mechatlibrary/MCClient$1;->val$onInitCallback:Lcom/mechat/mechatlibrary/callback/OnInitCallback;

    const-string v6, "appKey is unavailable"

    invoke-interface {v5, v6}, Lcom/mechat/mechatlibrary/callback/OnInitCallback;->onFailed(Ljava/lang/String;)V

    .line 173
    const-string v5, "MeChatClient"

    const-string v6, "appKey is unavailable"

    invoke-static {v5, v6}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    .end local v3           #isSuc:Z
    :catch_0
    move-exception v1

    .line 176
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
