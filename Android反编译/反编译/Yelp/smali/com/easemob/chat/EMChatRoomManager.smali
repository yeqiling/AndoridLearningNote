.class Lcom/easemob/chat/EMChatRoomManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/chat/core/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/chat/EMChatRoomManager$EMChatRoomChangeEvent;,
        Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$easemob$chat$EMChatRoomManager$EMChatRoomEventType:[I = null

.field private static final TAG:Ljava/lang/String; = "EMChatRoomManager"


# instance fields
.field allChatRoomLoaded:Z

.field allChatRooms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/easemob/chat/EMChatRoom;",
            ">;"
        }
    .end annotation
.end field

.field private chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

.field chatRoomChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/easemob/EMChatRoomChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private cleaner:Lcom/easemob/chat/core/d;

.field private cnnListener:Lcom/easemob/EMConnectionListener;

.field private deadRoomLoaded:Z

.field offlineChatRoomEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/easemob/chat/EMChatRoomManager$EMChatRoomChangeEvent;",
            ">;"
        }
    .end annotation
.end field

.field private threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static synthetic $SWITCH_TABLE$com$easemob$chat$EMChatRoomManager$EMChatRoomEventType()[I
    .locals 3

    sget-object v0, Lcom/easemob/chat/EMChatRoomManager;->$SWITCH_TABLE$com$easemob$chat$EMChatRoomManager$EMChatRoomEventType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;->values()[Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;->Invitate:Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-object v0, Lcom/easemob/chat/EMChatRoomManager;->$SWITCH_TABLE$com$easemob$chat$EMChatRoomManager$EMChatRoomEventType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->allChatRooms:Ljava/util/Map;

    iput-object v1, p0, Lcom/easemob/chat/EMChatRoomManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    iput-object v1, p0, Lcom/easemob/chat/EMChatRoomManager;->cleaner:Lcom/easemob/chat/core/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/chat/EMChatRoomManager;->deadRoomLoaded:Z

    iput-object v1, p0, Lcom/easemob/chat/EMChatRoomManager;->cnnListener:Lcom/easemob/EMConnectionListener;

    iput-object v1, p0, Lcom/easemob/chat/EMChatRoomManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->chatRoomChangeListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->offlineChatRoomEvents:Ljava/util/ArrayList;

    new-instance v0, Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-direct {v0}, Lcom/easemob/chat/EMMultiUserChatProcessor;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/easemob/chat/core/d;->a(I)Lcom/easemob/chat/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->cleaner:Lcom/easemob/chat/core/d;

    return-void
.end method

.method static synthetic access$1(Lcom/easemob/chat/EMChatRoomManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMChatRoomManager;->deadRoomLoaded:Z

    return v0
.end method

.method static synthetic access$2(Lcom/easemob/chat/EMChatRoomManager;)Lcom/easemob/chat/core/d;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->cleaner:Lcom/easemob/chat/core/d;

    return-object v0
.end method

.method static synthetic access$3(Lcom/easemob/chat/EMChatRoomManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMChatRoomManager;->deadRoomLoaded:Z

    return-void
.end method

.method private getChatRoomFromRest(Ljava/lang/String;Z)Lcom/easemob/chat/EMChatRoom;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/p;->L()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/chatrooms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/easemob/cloud/EMHttpClient;->getInstance()Lcom/easemob/cloud/EMHttpClient;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/easemob/cloud/EMHttpClient;->GET:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/easemob/cloud/EMHttpClient;->sendRequestWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0xc8

    if-eq v2, v1, :cond_0

    const/16 v1, 0xcc

    if-ne v2, v1, :cond_1

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/easemob/chat/EMChatRoomManager;->parseRoom(ZLorg/json/JSONObject;)Lcom/easemob/chat/EMChatRoom;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "EMChatRoomManager"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadAllChatRooms()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/easemob/chat/EMChatRoom;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/easemob/analytics/EMTimeTag;

    invoke-direct {v0}, Lcom/easemob/analytics/EMTimeTag;-><init>()V

    invoke-virtual {v0}, Lcom/easemob/analytics/EMTimeTag;->start()V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/i;->g()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/easemob/chat/EMChatRoomManager;->allChatRooms:Ljava/util/Map;

    const-string v1, "EMChatRoomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load all chat rooms from db. size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/easemob/chat/EMChatRoomManager;->allChatRooms:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMChatRoomManager;->allChatRooms:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easemob/chat/EMChatRoomManager;->allChatRooms:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/easemob/chat/EMChatRoomManager;->allChatRooms:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/easemob/analytics/EMTimeTag;->stop()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/easemob/analytics/EMPerformanceCollector;->collectLoadAllLocalChatRooms(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->allChatRooms:Ljava/util/Map;

    return-object v0
.end method

.method private parseRoom(ZLorg/json/JSONObject;)Lcom/easemob/chat/EMChatRoom;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/easemob/chat/EMChatRoom;

    invoke-direct {v0}, Lcom/easemob/chat/EMChatRoom;-><init>()V

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/easemob/chat/EMMultiUserChatManager;->parseRoom(Lcom/easemob/chat/EMMultiUserChatRoomModelBase;ZLorg/json/JSONObject;)V

    return-object v0
.end method

.method private parseRoomJid(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getGroupIdFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private retrieveChatRooms(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMChatRoom;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/core/p;->L()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/users/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/joined_chatrooms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/easemob/cloud/EMHttpClient;->getInstance()Lcom/easemob/cloud/EMHttpClient;

    move-result-object v2

    sget-object v3, Lcom/easemob/cloud/EMHttpClient;->GET:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Lcom/easemob/cloud/EMHttpClient;->sendRequestWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0xc8

    if-eq v3, v2, :cond_0

    const/16 v2, 0xcc

    if-ne v3, v2, :cond_2

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v0, "data"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/easemob/chat/EMChatRoomManager;->parseRoom(ZLorg/json/JSONObject;)Lcom/easemob/chat/EMChatRoom;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private saveRoomInCache(Lcom/easemob/chat/EMChatRoom;)Lcom/easemob/chat/EMChatRoom;
    .locals 2

    invoke-virtual {p1}, Lcom/easemob/chat/EMChatRoom;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/easemob/chat/EMChatRoomManager;->getAllChatRoom()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMChatRoom;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMChatRoom;->copyModel(Lcom/easemob/chat/EMMultiUserChatRoomModelBase;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/easemob/chat/EMChatRoomManager;->getAllChatRoom()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    goto :goto_0
.end method

.method private saveRoomInDB(Lcom/easemob/chat/EMChatRoom;)V
    .locals 2

    invoke-virtual {p1}, Lcom/easemob/chat/EMChatRoom;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/easemob/chat/core/i;->f(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->a(Lcom/easemob/chat/EMChatRoom;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->b(Lcom/easemob/chat/EMChatRoom;)V

    goto :goto_0
.end method

.method private syncWithServers(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMChatRoom;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->allChatRooms:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMChatRoom;

    invoke-direct {p0, v0}, Lcom/easemob/chat/EMChatRoomManager;->saveRoomInCache(Lcom/easemob/chat/EMChatRoom;)Lcom/easemob/chat/EMChatRoom;

    invoke-direct {p0, v0}, Lcom/easemob/chat/EMChatRoomManager;->saveRoomInDB(Lcom/easemob/chat/EMChatRoom;)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_3
    if-nez v1, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/easemob/chat/EMChatRoom;

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatRoom;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "EMChatRoomManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete local room which did not exists on server:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMChatRoomManager;->deleteLocalChatRoom(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public addChangeListener(Lcom/easemob/EMChatRoomChangeListener;)V
    .locals 3

    const-string v0, "EMChatRoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add chat room change listener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->chatRoomChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->chatRoomChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method checkConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->checkConnection()V

    return-void
.end method

.method cmdExitRoom(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMChatRoomManager;->getChatRoom(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatRoom;->getOwner()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatOptions;->isChatroomOwnerLeaveAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EMChatRoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "owner should not leave the room : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "EMChatRoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "try to exit room : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/easemob/chat/EMChatManager;->deleteConversation(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->checkConnection()V

    iget-object v1, p0, Lcom/easemob/chat/EMChatRoomManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMMultiUserChatProcessor;->leaveMUCWithoutJoin(Ljava/lang/String;)V

    const-string v0, "EMChatRoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "roomId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was exited"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMChatRoomManager;->deleteLocalChatRoom(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EMChatRoomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exit room : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    const/16 v2, -0x3e6

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method deleteLocalChatRoom(Ljava/lang/String;)V
    .locals 3

    const-string v0, "EMChatRoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delete local chatroom:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMChatRoomManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMMultiUserChatProcessor;->removeMuc(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/easemob/chat/EMChatRoomManager;->getAllChatRoom()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/easemob/chat/EMChatManager;->deleteConversation(Ljava/lang/String;Z)Z

    return-void
.end method

.method public exitChatRoom(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMChatRoomManager;->cmdExitRoom(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/easemob/exceptions/EaseMobException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->cleaner:Lcom/easemob/chat/core/d;

    new-instance v1, Lcom/easemob/chat/EMLeaveRoom;

    invoke-direct {v1, p1, p0}, Lcom/easemob/chat/EMLeaveRoom;-><init>(Ljava/lang/String;Lcom/easemob/chat/EMChatRoomManager;)V

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/d;->a(Lcom/easemob/chat/core/e;)V

    goto :goto_0
.end method

.method public exitChatRoom(Ljava/lang/String;Lcom/easemob/EMCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/easemob/chat/EMChatRoomManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/easemob/chat/EMChatRoomManager$2;-><init>(Lcom/easemob/chat/EMChatRoomManager;Ljava/lang/String;Lcom/easemob/EMCallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method getAllChatRoom()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/easemob/chat/EMChatRoom;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->allChatRooms:Ljava/util/Map;

    return-object v0
.end method

.method public getAllChatRooms()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMChatRoom;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/easemob/chat/EMChatRoomManager;->allChatRooms:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChatRoom(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->allChatRooms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMChatRoom;

    return-object v0
.end method

.method getChatRoomFromServer(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/easemob/chat/EMChatRoomManager;->checkConnection()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/easemob/chat/EMChatRoomManager;->getChatRoomFromRest(Ljava/lang/String;Z)Lcom/easemob/chat/EMChatRoom;

    move-result-object v0

    return-object v0
.end method

.method getChatRoomsFromServer(ILjava/lang/String;)Lcom/easemob/chat/EMCursorResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/easemob/chat/EMCursorResult",
            "<",
            "Lcom/easemob/chat/EMChatRoom;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/easemob/chat/EMChatRoomManager;->checkConnection()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/core/p;->L()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/chatrooms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/easemob/cloud/EMHttpClient;->getInstance()Lcom/easemob/cloud/EMHttpClient;

    move-result-object v3

    sget-object v4, Lcom/easemob/cloud/EMHttpClient;->GET:Ljava/lang/String;

    invoke-virtual {v3, v0, v2, v4}, Lcom/easemob/cloud/EMHttpClient;->sendRequestWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0xc8

    if-eq v4, v3, :cond_0

    const/16 v3, 0xcc

    if-ne v4, v3, :cond_4

    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/easemob/chat/EMCursorResult;

    invoke-direct {v5}, Lcom/easemob/chat/EMCursorResult;-><init>()V

    const-string v0, "cursor"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cursor"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/easemob/chat/EMCursorResult;->setCursor(Ljava/lang/String;)V

    move-object v2, v0

    :cond_1
    const-string v0, "data"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "data"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v0, v1, :cond_3

    invoke-virtual {v5, v2}, Lcom/easemob/chat/EMCursorResult;->setCursor(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/easemob/chat/EMCursorResult;->setData(Ljava/lang/Object;)V

    :cond_2
    return-object v5

    :cond_3
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v6, 0x0

    invoke-direct {p0, v6, v1}, Lcom/easemob/chat/EMChatRoomManager;->parseRoom(ZLorg/json/JSONObject;)Lcom/easemob/chat/EMChatRoom;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getJoinedChatRooms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMChatRoom;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->checkConnection()V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/easemob/chat/EMChatRoomManager;->retrieveChatRooms(Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/easemob/chat/EMChatRoomManager;->syncWithServers(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method getMUCWithoutJoin(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatProcessor;->getMUCWithoutJoin(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v0

    return-object v0
.end method

.method handleRoomDestroy(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getGroupIdFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->allChatRooms:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMChatRoom;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatRoom;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_0
    const-string v0, "EMChatRoomManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chat room has been destroy on server:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/easemob/chat/EMChatRoomManager;->deleteLocalChatRoom(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->chatRoomChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/EMChatRoomChangeListener;

    invoke-interface {v0, v2, v1}, Lcom/easemob/EMChatRoomChangeListener;->onChatRoomDestroyed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method handleUserRemove(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMChatRoomManager;->parseRoomJid(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v3, ""

    const-string v2, "EMChatRoomManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "user "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has been removed from chat room:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMChatRoomManager;->allChatRooms:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/easemob/chat/EMChatRoom;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatRoom;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :cond_0
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/easemob/chat/EMChatRoomManager;->deleteLocalChatRoom(Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/easemob/chat/EMChatRoomManager;->chatRoomChangeListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/easemob/chat/EMChatRoomManager;->getChatRoom(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Lcom/easemob/chat/EMChatRoom;->removeMember(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/easemob/chat/core/i;->b(Lcom/easemob/chat/EMChatRoom;)V

    :cond_2
    iget-object v2, p0, Lcom/easemob/chat/EMChatRoomManager;->chatRoomChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    monitor-exit v4

    :cond_3
    return-void

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/easemob/EMChatRoomChangeListener;

    invoke-interface {v2, v1, v3, v0}, Lcom/easemob/EMChatRoomChangeListener;->onMemberKicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public joinChatRoom(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->checkConnection()V

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->cleaner:Lcom/easemob/chat/core/d;

    new-instance v1, Lcom/easemob/chat/EMLeaveRoom;

    invoke-direct {v1, p1, p0}, Lcom/easemob/chat/EMLeaveRoom;-><init>(Ljava/lang/String;Lcom/easemob/chat/EMChatRoomManager;)V

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/d;->b(Lcom/easemob/chat/core/e;)V

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMChatRoomManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMMultiUserChatProcessor;->getMUC(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->isJoined()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->join(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/easemob/chat/EMChatRoom;

    invoke-direct {v1, p1}, Lcom/easemob/chat/EMChatRoom;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/easemob/chat/EMChatRoomManager;->saveRoomInDB(Lcom/easemob/chat/EMChatRoom;)V

    invoke-direct {p0, v1}, Lcom/easemob/chat/EMChatRoomManager;->saveRoomInCache(Lcom/easemob/chat/EMChatRoom;)Lcom/easemob/chat/EMChatRoom;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMChatRoomManager;->getChatRoomFromServer(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;
    :try_end_1
    .catch Lcom/easemob/exceptions/EaseMobException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/easemob/chat/EMChatRoomManager;->saveRoomInDB(Lcom/easemob/chat/EMChatRoom;)V

    invoke-direct {p0, v0}, Lcom/easemob/chat/EMChatRoomManager;->saveRoomInCache(Lcom/easemob/chat/EMChatRoom;)Lcom/easemob/chat/EMChatRoom;
    :try_end_2
    .catch Lcom/easemob/exceptions/EaseMobException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    const-string v2, "EMChatRoomManager"

    invoke-virtual {v1}, Lcom/easemob/exceptions/EaseMobException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public joinChatRoom(Ljava/lang/String;Lcom/easemob/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/easemob/EMValueCallBack",
            "<",
            "Lcom/easemob/chat/EMChatRoom;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/easemob/chat/EMChatRoomManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/easemob/chat/EMChatRoomManager$1;-><init>(Lcom/easemob/chat/EMChatRoomManager;Ljava/lang/String;Lcom/easemob/EMValueCallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/chat/EMChatRoomManager;->allChatRoomLoaded:Z

    iput-boolean v0, p0, Lcom/easemob/chat/EMChatRoomManager;->deadRoomLoaded:Z

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->allChatRooms:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->allChatRooms:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->offlineChatRoomEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->offlineChatRoomEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const-string v0, "EMChatRoomManager"

    const-string v1, "init chat room manager"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v0}, Lcom/easemob/chat/EMMultiUserChatProcessor;->onDestroy()V

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->cleaner:Lcom/easemob/chat/core/d;

    invoke-virtual {v0}, Lcom/easemob/chat/core/d;->onDestroy()V

    return-void
.end method

.method public onInit()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v0}, Lcom/easemob/chat/EMMultiUserChatProcessor;->onInit()V

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->cleaner:Lcom/easemob/chat/core/d;

    invoke-virtual {v0}, Lcom/easemob/chat/core/d;->onInit()V

    invoke-direct {p0}, Lcom/easemob/chat/EMChatRoomManager;->loadAllChatRooms()Ljava/util/Map;

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->cnnListener:Lcom/easemob/EMConnectionListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/chat/EMChatRoomManager$3;

    invoke-direct {v0, p0}, Lcom/easemob/chat/EMChatRoomManager$3;-><init>(Lcom/easemob/chat/EMChatRoomManager;)V

    iput-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->cnnListener:Lcom/easemob/EMConnectionListener;

    :cond_0
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMChatRoomManager;->cnnListener:Lcom/easemob/EMConnectionListener;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChatManager;->addConnectionListener(Lcom/easemob/EMConnectionListener;)V

    return-void
.end method

.method onInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/easemob/chat/EMChatRoom;

    invoke-direct {v0, p1, p1}, Lcom/easemob/chat/EMChatRoom;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "EMChatRoomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "accept chat room invitation for room:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMChatRoomManager;->joinChatRoom(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatRoom;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatRoom;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChatRoom;->copyModel(Lcom/easemob/chat/EMMultiUserChatRoomModelBase;)V

    :cond_0
    invoke-virtual {v0}, Lcom/easemob/chat/EMChatRoom;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    iget-boolean v0, v0, Lcom/easemob/chat/EMChat;->appInited:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->chatRoomChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, p1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/EMChatRoomChangeListener;

    const-string v0, "EMChatRoomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fire chat room inviatation received event for room:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "EMChatRoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aff offline group inviatation received event for group:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/easemob/chat/EMChatRoomManager;->offlineChatRoomEvents:Ljava/util/ArrayList;

    new-instance v0, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomChangeEvent;

    sget-object v2, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;->Invitate:Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomChangeEvent;-><init>(Lcom/easemob/chat/EMChatRoomManager;Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method onMemberExit(Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMChatRoomManager;->parseRoomJid(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v1, ""

    const-string v2, "EMChatRoomManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "user "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " has been removed from chat room:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->allChatRooms:Ljava/util/Map;

    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMChatRoom;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatRoom;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_0
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMChatRoomManager;->deleteLocalChatRoom(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v5, p0, Lcom/easemob/chat/EMChatRoomManager;->chatRoomChangeListeners:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->chatRoomChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/EMChatRoomChangeListener;

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2}, Lcom/easemob/EMChatRoomChangeListener;->onMemberExited(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    move-object v3, v1

    goto :goto_0
.end method

.method onMemberJoined(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMChatRoomManager;->parseRoomJid(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v1, "EMChatRoomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "member "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " join the room : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/easemob/chat/EMChatRoomManager;->chatRoomChangeListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMChatRoomManager;->getChatRoom(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMChatRoom;->addMember(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/i;->b(Lcom/easemob/chat/EMChatRoom;)V

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->chatRoomChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    monitor-exit v4

    :cond_1
    return-void

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/EMChatRoomChangeListener;

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/easemob/EMChatRoomChangeListener;->onMemberJoined(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method processOfflineMessages()V
    .locals 7

    const-string v0, "EMChatRoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "process offline chat room event start: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMChatRoomManager;->offlineChatRoomEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->offlineChatRoomEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->offlineChatRoomEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "EMChatRoomManager"

    const-string v1, "proess offline group event finish"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomChangeEvent;

    invoke-static {}, Lcom/easemob/chat/EMChatRoomManager;->$SWITCH_TABLE$com$easemob$chat$EMChatRoomManager$EMChatRoomEventType()[I

    move-result-object v1

    iget-object v3, v0, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomChangeEvent;->type:Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;

    invoke-virtual {v3}, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/easemob/chat/EMChatRoomManager;->chatRoomChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/easemob/EMChatRoomChangeListener;

    const-string v4, "EMChatRoomManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fire chatroom inviatation received event for chatroom:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomChangeEvent;->roomName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " listener:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method removeChangeListener(Lcom/easemob/EMChatRoomChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager;->chatRoomChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
