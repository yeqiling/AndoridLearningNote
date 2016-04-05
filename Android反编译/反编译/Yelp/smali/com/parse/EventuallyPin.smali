.class Lcom/parse/EventuallyPin;
.super Lcom/parse/ParseObject;
.source "EventuallyPin.java"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "_EventuallyPin"
.end annotation


# static fields
.field public static final PIN_NAME:Ljava/lang/String; = "_eventuallyPin"

.field public static final TYPE_COMMAND:I = 0x3

.field public static final TYPE_DELETE:I = 0x2

.field public static final TYPE_SAVE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "_EventuallyPin"

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static findAllPinned()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/EventuallyPin;->findAllPinned(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static findAllPinned(Ljava/util/Collection;)Lbolts/Task;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, excludeUUIDs:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Lcom/parse/ParseQuery;

    const-class v2, Lcom/parse/EventuallyPin;

    invoke-direct {v1, v2}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/Class;)V

    const-string v2, "_eventuallyPin"

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseQuery;->ignoreACLs()Lcom/parse/ParseQuery;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery;->orderByAscending(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 153
    .local v0, query:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<Lcom/parse/EventuallyPin;>;"
    if-eqz p0, :cond_0

    .line 154
    const-string v1, "uuid"

    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseQuery;->whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    .line 159
    :cond_0
    invoke-virtual {v0}, Lcom/parse/ParseQuery;->findInBackground()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/EventuallyPin$2;

    invoke-direct {v2}, Lcom/parse/EventuallyPin$2;-><init>()V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method private static pinEventuallyCommand(ILcom/parse/ParseObject;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lbolts/Task;
    .locals 3
    .parameter "type"
    .parameter "obj"
    .parameter "operationSetUUID"
    .parameter "sessionToken"
    .parameter "command"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/parse/ParseObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lcom/parse/EventuallyPin;

    invoke-direct {v0}, Lcom/parse/EventuallyPin;-><init>()V

    .line 120
    .local v0, pin:Lcom/parse/EventuallyPin;
    const-string v1, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    const-string v1, "time"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    const-string v1, "type"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    if-eqz p1, :cond_0

    .line 124
    const-string v1, "object"

    invoke-virtual {v0, v1, p1}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    :cond_0
    if-eqz p2, :cond_1

    .line 127
    const-string v1, "operationSetUUID"

    invoke-virtual {v0, v1, p2}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    :cond_1
    if-eqz p3, :cond_2

    .line 130
    const-string v1, "sessionToken"

    invoke-virtual {v0, v1, p3}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    :cond_2
    if-eqz p4, :cond_3

    .line 133
    const-string v1, "command"

    invoke-virtual {v0, v1, p4}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    :cond_3
    const-string v1, "_eventuallyPin"

    invoke-virtual {v0, v1}, Lcom/parse/EventuallyPin;->pinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/EventuallyPin$1;

    invoke-direct {v2, v0}, Lcom/parse/EventuallyPin$1;-><init>(Lcom/parse/EventuallyPin;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static pinEventuallyCommand(Lcom/parse/ParseObject;Lcom/parse/ParseRESTCommand;)Lbolts/Task;
    .locals 4
    .parameter "object"
    .parameter "command"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseRESTCommand;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    const/4 v1, 0x3

    .line 82
    .local v1, type:I
    const/4 v0, 0x0

    .line 83
    .local v0, json:Lorg/json/JSONObject;
    iget-object v2, p1, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    const-string v3, "classes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    iget-object v2, p1, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/ParseRequest$Method;

    sget-object v3, Lcom/parse/ParseRequest$Method;->POST:Lcom/parse/ParseRequest$Method;

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/ParseRequest$Method;

    sget-object v3, Lcom/parse/ParseRequest$Method;->PUT:Lcom/parse/ParseRequest$Method;

    if-ne v2, v3, :cond_2

    .line 86
    :cond_0
    const/4 v1, 0x1

    .line 93
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/parse/ParseRESTCommand;->getOperationSetUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parse/ParseRESTCommand;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p0, v2, v3, v0}, Lcom/parse/EventuallyPin;->pinEventuallyCommand(ILcom/parse/ParseObject;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lbolts/Task;

    move-result-object v2

    return-object v2

    .line 87
    :cond_2
    iget-object v2, p1, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/ParseRequest$Method;

    sget-object v3, Lcom/parse/ParseRequest$Method;->DELETE:Lcom/parse/ParseRequest$Method;

    if-ne v2, v3, :cond_1

    .line 88
    const/4 v1, 0x2

    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {p1}, Lcom/parse/ParseRESTCommand;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getCommand()Lcom/parse/ParseRESTCommand;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 67
    const-string v2, "command"

    invoke-virtual {p0, v2}, Lcom/parse/EventuallyPin;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 68
    .local v1, json:Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 69
    .local v0, command:Lcom/parse/ParseRESTCommand;
    invoke-static {v1}, Lcom/parse/ParseRESTCommand;->isValidCommandJSONObject(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    invoke-static {v1}, Lcom/parse/ParseRESTCommand;->fromJSONObject(Lorg/json/JSONObject;)Lcom/parse/ParseRESTCommand;

    move-result-object v0

    .line 76
    :cond_0
    return-object v0

    .line 71
    :cond_1
    invoke-static {v1}, Lcom/parse/ParseRESTCommand;->isValidOldFormatCommandJSONObject(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    new-instance v2, Lorg/json/JSONException;

    const-string v3, "Failed to load command from JSON."

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getObject()Lcom/parse/ParseObject;
    .locals 1

    .prologue
    .line 55
    const-string v0, "object"

    invoke-virtual {p0, v0}, Lcom/parse/EventuallyPin;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public getOperationSetUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "operationSetUUID"

    invoke-virtual {p0, v0}, Lcom/parse/EventuallyPin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "sessionToken"

    invoke-virtual {p0, v0}, Lcom/parse/EventuallyPin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 51
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/parse/EventuallyPin;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "uuid"

    invoke-virtual {p0, v0}, Lcom/parse/EventuallyPin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method needsDefaultACL()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method
