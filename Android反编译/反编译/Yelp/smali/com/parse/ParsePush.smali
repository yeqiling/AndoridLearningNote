.class public Lcom/parse/ParsePush;
.super Ljava/lang/Object;
.source "ParsePush.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParsePush$State;
    }
.end annotation


# static fields
.field static KEY_DATA_MESSAGE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "com.parse.ParsePush"


# instance fields
.field private final builder:Lcom/parse/ParsePush$State$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "alert"

    sput-object v0, Lcom/parse/ParsePush;->KEY_DATA_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/parse/ParsePush$State$Builder;

    invoke-direct {v0}, Lcom/parse/ParsePush$State$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/parse/ParsePush;-><init>(Lcom/parse/ParsePush$State$Builder;)V

    .line 184
    return-void
.end method

.method private constructor <init>(Lcom/parse/ParsePush$State$Builder;)V
    .locals 0
    .parameter "builder"

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    .line 188
    return-void
.end method

.method static getPushChannelsController()Lcom/parse/ParsePushChannelsController;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getPushChannelsController()Lcom/parse/ParsePushChannelsController;

    move-result-object v0

    return-object v0
.end method

.method static getPushController()Lcom/parse/ParsePushController;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getPushController()Lcom/parse/ParsePushController;

    move-result-object v0

    return-object v0
.end method

.method public static sendDataInBackground(Lorg/json/JSONObject;Lcom/parse/ParseQuery;)Lbolts/Task;
    .locals 2
    .parameter "data"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, query:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    new-instance v0, Lcom/parse/ParsePush;

    invoke-direct {v0}, Lcom/parse/ParsePush;-><init>()V

    .line 311
    .local v0, push:Lcom/parse/ParsePush;
    invoke-virtual {v0, p1}, Lcom/parse/ParsePush;->setQuery(Lcom/parse/ParseQuery;)V

    .line 312
    invoke-virtual {v0, p0}, Lcom/parse/ParsePush;->setData(Lorg/json/JSONObject;)V

    .line 313
    invoke-virtual {v0}, Lcom/parse/ParsePush;->sendInBackground()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static sendDataInBackground(Lorg/json/JSONObject;Lcom/parse/ParseQuery;Lcom/parse/SendCallback;)V
    .locals 1
    .parameter "data"
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;",
            "Lcom/parse/SendCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, query:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    invoke-static {p0, p1}, Lcom/parse/ParsePush;->sendDataInBackground(Lorg/json/JSONObject;Lcom/parse/ParseQuery;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 332
    return-void
.end method

.method public static sendMessageInBackground(Ljava/lang/String;Lcom/parse/ParseQuery;)Lbolts/Task;
    .locals 2
    .parameter "message"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, query:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    new-instance v0, Lcom/parse/ParsePush;

    invoke-direct {v0}, Lcom/parse/ParsePush;-><init>()V

    .line 275
    .local v0, push:Lcom/parse/ParsePush;
    invoke-virtual {v0, p1}, Lcom/parse/ParsePush;->setQuery(Lcom/parse/ParseQuery;)V

    .line 276
    invoke-virtual {v0, p0}, Lcom/parse/ParsePush;->setMessage(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0}, Lcom/parse/ParsePush;->sendInBackground()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static sendMessageInBackground(Ljava/lang/String;Lcom/parse/ParseQuery;Lcom/parse/SendCallback;)V
    .locals 1
    .parameter "message"
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;",
            "Lcom/parse/SendCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, query:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    invoke-static {p0, p1}, Lcom/parse/ParsePush;->sendMessageInBackground(Ljava/lang/String;Lcom/parse/ParseQuery;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 295
    return-void
.end method

.method static setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 197
    invoke-static {}, Lcom/parse/ParsePushChannelsController;->checkForManifestAndThrowExceptionIfNeeded()V

    .line 198
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/PushRouter;->setForceEnabledAsync(Ljava/lang/Boolean;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePush$1;

    invoke-direct {v1, p0}, Lcom/parse/ParsePush$1;-><init>(Z)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    .line 210
    return-void
.end method

.method public static subscribeInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .parameter "channel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {}, Lcom/parse/ParsePush;->getPushChannelsController()Lcom/parse/ParsePushChannelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParsePushChannelsController;->subscribeInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static subscribeInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 1
    .parameter "channel"
    .parameter "callback"

    .prologue
    .line 234
    invoke-static {p0}, Lcom/parse/ParsePush;->subscribeInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 235
    return-void
.end method

.method public static unsubscribeInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .parameter "channel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    invoke-static {}, Lcom/parse/ParsePush;->getPushChannelsController()Lcom/parse/ParsePushChannelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParsePushChannelsController;->unsubscribeInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static unsubscribeInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 1
    .parameter "channel"
    .parameter "callback"

    .prologue
    .line 258
    invoke-static {p0}, Lcom/parse/ParsePush;->unsubscribeInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 259
    return-void
.end method


# virtual methods
.method public clearExpiration()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 390
    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-virtual {v0, v1}, Lcom/parse/ParsePush$State$Builder;->expirationTime(Ljava/lang/Long;)Lcom/parse/ParsePush$State$Builder;

    .line 391
    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-virtual {v0, v1}, Lcom/parse/ParsePush$State$Builder;->expirationTimeInterval(Ljava/lang/Long;)Lcom/parse/ParsePush$State$Builder;

    .line 392
    return-void
.end method

.method currentSendCommand(Ljava/lang/String;)Lcom/parse/ParseRESTCommand;
    .locals 2
    .parameter "sessionToken"

    .prologue
    .line 490
    invoke-static {}, Lcom/parse/ParsePush;->getPushController()Lcom/parse/ParsePushController;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-virtual {v1}, Lcom/parse/ParsePush$State$Builder;->build()Lcom/parse/ParsePush$State;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/parse/ParsePushController;->buildRESTSendPushCommand(Lcom/parse/ParsePush$State;Ljava/lang/String;)Lcom/parse/ParseRESTCommand;

    move-result-object v0

    return-object v0
.end method

.method public send()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/parse/ParsePush;->sendInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 472
    return-void
.end method

.method public sendInBackground()Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    iget-object v1, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-virtual {v1}, Lcom/parse/ParsePush$State$Builder;->build()Lcom/parse/ParsePush$State;

    move-result-object v0

    .line 453
    .local v0, state:Lcom/parse/ParsePush$State;
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParsePush$2;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParsePush$2;-><init>(Lcom/parse/ParsePush;Lcom/parse/ParsePush$State;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public sendInBackground(Lcom/parse/SendCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/parse/ParsePush;->sendInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 483
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 2
    .parameter "channel"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParsePush$State$Builder;->channelSet(Ljava/util/Collection;)Lcom/parse/ParsePush$State$Builder;

    .line 341
    return-void
.end method

.method public setChannels(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, channels:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParsePush$State$Builder;->channelSet(Ljava/util/Collection;)Lcom/parse/ParsePush$State$Builder;

    .line 350
    return-void
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParsePush$State$Builder;->data(Lorg/json/JSONObject;)Lcom/parse/ParsePush$State$Builder;

    .line 428
    return-void
.end method

.method public setExpirationTime(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParsePush$State$Builder;->expirationTime(Ljava/lang/Long;)Lcom/parse/ParsePush$State$Builder;

    .line 373
    return-void
.end method

.method public setExpirationTimeInterval(J)V
    .locals 3
    .parameter "timeInterval"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParsePush$State$Builder;->expirationTimeInterval(Ljava/lang/Long;)Lcom/parse/ParsePush$State$Builder;

    .line 384
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 435
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 437
    .local v0, data:Lorg/json/JSONObject;
    :try_start_0
    sget-object v2, Lcom/parse/ParsePush;->KEY_DATA_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    invoke-virtual {p0, v0}, Lcom/parse/ParsePush;->setData(Lorg/json/JSONObject;)V

    .line 442
    return-void

    .line 438
    :catch_0
    move-exception v1

    .line 439
    .local v1, e:Lorg/json/JSONException;
    const-string v2, "com.parse.ParsePush"

    const-string v3, "JSONException in setMessage"

    invoke-static {v2, v3, v1}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setPushToAndroid(Z)V
    .locals 2
    .parameter "pushToAndroid"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParsePush$State$Builder;->pushToAndroid(Ljava/lang/Boolean;)Lcom/parse/ParsePush$State$Builder;

    .line 420
    return-void
.end method

.method public setPushToIOS(Z)V
    .locals 2
    .parameter "pushToIOS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParsePush$State$Builder;->pushToIOS(Ljava/lang/Boolean;)Lcom/parse/ParsePush$State$Builder;

    .line 406
    return-void
.end method

.method public setQuery(Lcom/parse/ParseQuery;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, query:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParsePush$State$Builder;->query(Lcom/parse/ParseQuery;)Lcom/parse/ParsePush$State$Builder;

    .line 362
    return-void
.end method
