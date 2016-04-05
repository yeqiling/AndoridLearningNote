.class public final Lcom/parse/ParseTwitterUtils;
.super Ljava/lang/Object;
.source "ParseTwitterUtils.java"


# static fields
.field private static isInitialized:Z

.field private static provider:Lcom/parse/TwitterAuthenticationProvider;

.field private static twitter:Lcom/parse/twitter/Twitter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    return-void
.end method

.method private static checkInitialization()V
    .locals 2

    .prologue
    .line 55
    sget-boolean v0, Lcom/parse/ParseTwitterUtils;->isInitialized:Z

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call ParseTwitterUtils.initialize() before using ParseTwitterUtils"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    return-void
.end method

.method private static getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/parse/ParseTwitterUtils;->provider:Lcom/parse/TwitterAuthenticationProvider;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/parse/TwitterAuthenticationProvider;

    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getTwitter()Lcom/parse/twitter/Twitter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/TwitterAuthenticationProvider;-><init>(Lcom/parse/twitter/Twitter;)V

    sput-object v0, Lcom/parse/ParseTwitterUtils;->provider:Lcom/parse/TwitterAuthenticationProvider;

    .line 20
    sget-object v0, Lcom/parse/ParseTwitterUtils;->provider:Lcom/parse/TwitterAuthenticationProvider;

    invoke-static {v0}, Lcom/parse/ParseUser;->registerAuthenticationProvider(Lcom/parse/ParseAuthenticationProvider;)V

    .line 22
    :cond_0
    sget-object v0, Lcom/parse/ParseTwitterUtils;->provider:Lcom/parse/TwitterAuthenticationProvider;

    return-object v0
.end method

.method public static getTwitter()Lcom/parse/twitter/Twitter;
    .locals 3

    .prologue
    .line 31
    sget-object v0, Lcom/parse/ParseTwitterUtils;->twitter:Lcom/parse/twitter/Twitter;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/parse/twitter/Twitter;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/parse/twitter/Twitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/parse/ParseTwitterUtils;->twitter:Lcom/parse/twitter/Twitter;

    .line 34
    :cond_0
    sget-object v0, Lcom/parse/ParseTwitterUtils;->twitter:Lcom/parse/twitter/Twitter;

    return-object v0
.end method

.method public static initialize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "consumerKey"
    .parameter "consumerSecret"

    .prologue
    .line 47
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getTwitter()Lcom/parse/twitter/Twitter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/twitter/Twitter;->setConsumerKey(Ljava/lang/String;)Lcom/parse/twitter/Twitter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/twitter/Twitter;->setConsumerSecret(Ljava/lang/String;)Lcom/parse/twitter/Twitter;

    .line 50
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/ParseTwitterUtils;->isInitialized:Z

    .line 52
    return-void
.end method

.method public static isLinked(Lcom/parse/ParseUser;)Z
    .locals 1
    .parameter "user"

    .prologue
    .line 65
    const-string v0, "twitter"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->isLinked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/content/Context;)V
    .locals 1
    .parameter "user"
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/ParseTwitterUtils;->link(Lcom/parse/ParseUser;Landroid/content/Context;Lcom/parse/SaveCallback;)V

    .line 94
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/content/Context;Lcom/parse/SaveCallback;)V
    .locals 2
    .parameter "user"
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 112
    invoke-static {p1, p0}, Lcom/parse/ParseTwitterUtils;->linkInBackground(Landroid/content/Context;Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;Z)Lbolts/Task;

    .line 113
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "user"
    .parameter "twitterId"
    .parameter "screenName"
    .parameter "authToken"
    .parameter "authTokenSecret"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/parse/ParseTwitterUtils;->link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parse/SaveCallback;)V

    .line 148
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 1
    .parameter "user"
    .parameter "twitterId"
    .parameter "screenName"
    .parameter "authToken"
    .parameter "authTokenSecret"
    .parameter "callback"

    .prologue
    .line 172
    invoke-static {p0, p1, p2, p3, p4}, Lcom/parse/ParseTwitterUtils;->linkInBackground(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p5}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 176
    return-void
.end method

.method public static linkInBackground(Landroid/content/Context;Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .parameter "context"
    .parameter "user"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 83
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/TwitterAuthenticationProvider;->setContext(Landroid/content/Context;)Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/TwitterAuthenticationProvider;->linkAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static linkInBackground(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .parameter "user"
    .parameter "twitterId"
    .parameter "screenName"
    .parameter "authToken"
    .parameter "authTokenSecret"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 135
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v0

    .line 136
    .local v0, provider:Lcom/parse/TwitterAuthenticationProvider;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/parse/TwitterAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/parse/TwitterAuthenticationProvider;->linkAsync(Lcom/parse/ParseUser;Ljava/util/Map;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static logIn(Landroid/content/Context;Lcom/parse/LogInCallback;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 259
    invoke-static {p0}, Lcom/parse/ParseTwitterUtils;->logInInBackground(Landroid/content/Context;)Lbolts/Task;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;Z)Lbolts/Task;

    .line 260
    return-void
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 1
    .parameter "twitterId"
    .parameter "screenName"
    .parameter "authToken"
    .parameter "authTokenSecret"
    .parameter "callback"

    .prologue
    .line 223
    invoke-static {p0, p1, p2, p3}, Lcom/parse/ParseTwitterUtils;->logInInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 227
    return-void
.end method

.method public static logInInBackground(Landroid/content/Context;)Lbolts/Task;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 240
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/TwitterAuthenticationProvider;->setContext(Landroid/content/Context;)Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/TwitterAuthenticationProvider;->logInAsync()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .parameter "twitterId"
    .parameter "screenName"
    .parameter "authToken"
    .parameter "authTokenSecret"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 197
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v0

    .line 198
    .local v0, provider:Lcom/parse/TwitterAuthenticationProvider;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/parse/TwitterAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/TwitterAuthenticationProvider;->logInAsync(Ljava/util/Map;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static unlink(Lcom/parse/ParseUser;)V
    .locals 1
    .parameter "user"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-static {p0}, Lcom/parse/ParseTwitterUtils;->unlinkInBackground(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 270
    return-void
.end method

.method public static unlinkInBackground(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .parameter "user"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 282
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/TwitterAuthenticationProvider;->unlinkAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static unlinkInBackground(Lcom/parse/ParseUser;Lcom/parse/SaveCallback;)V
    .locals 1
    .parameter "user"
    .parameter "callback"

    .prologue
    .line 297
    invoke-static {p0}, Lcom/parse/ParseTwitterUtils;->unlinkInBackground(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 298
    return-void
.end method
