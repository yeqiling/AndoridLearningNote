.class public Lcom/parse/ParseObject;
.super Ljava/lang/Object;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseObject$State;
    }
.end annotation


# static fields
.field private static final AUTO_CLASS_NAME:Ljava/lang/String; = "_Automatic"

.field public static final DEFAULT_PIN:Ljava/lang/String; = "_default"

.field private static final KEY_ACL:Ljava/lang/String; = "ACL"

.field private static final KEY_CLASS_NAME:Ljava/lang/String; = "className"

.field private static final KEY_COMPLETE:Ljava/lang/String; = "__complete"

.field private static final KEY_CREATED_AT:Ljava/lang/String; = "createdAt"

.field static final KEY_IS_DELETING_EVENTUALLY:Ljava/lang/String; = "__isDeletingEventually"

.field private static final KEY_IS_DELETING_EVENTUALLY_OLD:Ljava/lang/String; = "isDeletingEventually"

.field private static final KEY_OBJECT_ID:Ljava/lang/String; = "objectId"

.field private static final KEY_OPERATIONS:Ljava/lang/String; = "__operations"

.field private static final KEY_UPDATED_AT:Ljava/lang/String; = "updatedAt"

.field private static final NEW_OFFLINE_OBJECT_ID_PLACEHOLDER:Ljava/lang/String; = "*** Offline Object ***"

.field static final VERSION_NAME:Ljava/lang/String; = "1.9.4"

.field private static final classNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final objectTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;>;"
        }
    .end annotation
.end field

.field static server:Ljava/lang/String;


# instance fields
.field private final dataAvailability:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final estimatedData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final hashedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/parse/ParseJSONCacheItem;",
            ">;"
        }
    .end annotation
.end field

.field isDeleted:Z

.field isDeletingEventually:I

.field private localId:Ljava/lang/String;

.field final mutex:Ljava/lang/Object;

.field final operationSetQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/parse/ParseOperationSet;",
            ">;"
        }
    .end annotation
.end field

.field private final saveEvent:Lcom/parse/ParseMulticastDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseMulticastDelegate",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/parse/ParseObject$State;

.field final taskQueue:Lcom/parse/TaskQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "https://api.parse.com"

    sput-object v0, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/parse/ParseObject;->classNames:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    .line 302
    new-instance v0, Lcom/parse/ParseObject$1;

    invoke-direct {v0}, Lcom/parse/ParseObject$1;-><init>()V

    sput-object v0, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 324
    const-string v0, "_Automatic"

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "theClassName"

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    .line 285
    new-instance v3, Lcom/parse/TaskQueue;

    invoke-direct {v3}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v3, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    .line 296
    new-instance v3, Lcom/parse/ParseMulticastDelegate;

    invoke-direct {v3}, Lcom/parse/ParseMulticastDelegate;-><init>()V

    iput-object v3, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    .line 343
    sget-object v3, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 345
    .local v1, objectIdForPointer:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 346
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "You must specify a Parse class name when creating a new ParseObject."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 349
    :cond_0
    const-string v3, "_Automatic"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 350
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 354
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/parse/ParseObject;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 356
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "You must create this type of ParseObject using ParseObject.create() or the proper subclass."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 361
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/parse/ParseObject;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 363
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "You must register this ParseObject subclass before instantiating it."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 367
    :cond_3
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    .line 368
    iget-object v3, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    new-instance v4, Lcom/parse/ParseOperationSet;

    invoke-direct {v4}, Lcom/parse/ParseOperationSet;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    .line 370
    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v3, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    .line 371
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    .line 373
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->newStateBuilder(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    .line 375
    .local v0, builder:Lcom/parse/ParseObject$State$Init;,"Lcom/parse/ParseObject$State$Init<*>;"
    if-nez v1, :cond_5

    .line 376
    invoke-virtual {p0}, Lcom/parse/ParseObject;->setDefaultValues()V

    .line 377
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/parse/ParseObject$State$Init;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    .line 385
    :goto_0
    invoke-virtual {v0}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;

    move-result-object v3

    iput-object v3, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    .line 387
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v2

    .line 388
    .local v2, store:Lcom/parse/OfflineStore;
    if-eqz v2, :cond_4

    .line 389
    invoke-virtual {v2, p0}, Lcom/parse/OfflineStore;->registerNewObject(Lcom/parse/ParseObject;)V

    .line 391
    :cond_4
    return-void

    .line 379
    .end local v2           #store:Lcom/parse/OfflineStore;
    :cond_5
    const-string v3, "*** Offline Object ***"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 380
    invoke-virtual {v0, v1}, Lcom/parse/ParseObject$State$Init;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    .line 382
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/parse/ParseObject$State$Init;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/parse/ParseObject;)Lcom/parse/ParseObject$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parse/ParseObject;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseObject;->deleteAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Ljava/util/List;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/parse/ParseObject;->deleteAllAsync(Ljava/util/List;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Ljava/util/List;Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->deleteAllAsync(Ljava/util/List;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parse/ParseObject;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3, p4}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/parse/ParseObject;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/parse/ParseObject;->canBeSerialized()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Ljava/util/List;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/parse/ParseObject;->saveAllAsync(Ljava/util/List;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Ljava/lang/Object;Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Ljava/util/List;Lcom/parse/ParseUser;ZLbolts/Task;)Lbolts/Task;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/parse/ParseObject;->fetchAllAsync(Ljava/util/List;Lcom/parse/ParseUser;ZLbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/ParseObject;)Lcom/parse/ParseMulticastDelegate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/ParseObject;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/parse/ParseObject;Z)Lcom/parse/ParseACL;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/ParseObject;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/parse/ParseObject;->collectFetchedObjects()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Lcom/parse/ParseObjectController;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/parse/ParseObject;->getObjectController()Lcom/parse/ParseObjectController;

    move-result-object v0

    return-object v0
.end method

.method private addToHashedObjects(Ljava/lang/Object;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 645
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 647
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    new-instance v3, Lcom/parse/ParseJSONCacheItem;

    invoke-direct {v3, p1}, Lcom/parse/ParseJSONCacheItem;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :try_start_1
    monitor-exit v2

    .line 652
    return-void

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Couldn\'t serialize container value to JSON."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 651
    .end local v0           #e:Lorg/json/JSONException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private applyOperations(Lcom/parse/ParseOperationSet;Ljava/util/Map;)V
    .locals 6
    .parameter "operations"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3064
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3065
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseFieldOperation;

    .line 3066
    .local v4, operation:Lcom/parse/ParseFieldOperation;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3067
    .local v3, oldValue:Ljava/lang/Object;
    invoke-interface {v4, v3, v1}, Lcom/parse/ParseFieldOperation;->apply(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 3068
    .local v2, newValue:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 3069
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3071
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3074
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #newValue:Ljava/lang/Object;
    .end local v3           #oldValue:Ljava/lang/Object;
    .end local v4           #operation:Lcom/parse/ParseFieldOperation;
    :cond_1
    return-void
.end method

.method private canBeSerialized()Z
    .locals 4

    .prologue
    .line 2619
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2620
    :try_start_0
    new-instance v0, Lbolts/Capture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lbolts/Capture;-><init>(Ljava/lang/Object;)V

    .line 2626
    .local v0, result:Lbolts/Capture;,"Lbolts/Capture<Ljava/lang/Boolean;>;"
    new-instance v1, Lcom/parse/ParseObject$37;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseObject$37;-><init>(Lcom/parse/ParseObject;Lbolts/Capture;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/parse/ParseObject$37;->setYieldRoot(Z)Lcom/parse/ParseTraverser;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/parse/ParseTraverser;->setTraverseParseObjects(Z)Lcom/parse/ParseTraverser;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/parse/ParseTraverser;->traverse(Ljava/lang/Object;)V

    .line 2648
    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 2649
    .end local v0           #result:Lbolts/Capture;,"Lbolts/Capture<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkForChangesToMutableContainer(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .parameter "key"
    .parameter "object"

    .prologue
    .line 1358
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 1359
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseObject;->isContainerObject(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1360
    iget-object v3, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseJSONCacheItem;

    .line 1361
    .local v2, oldCacheItem:Lcom/parse/ParseJSONCacheItem;
    if-nez v2, :cond_0

    .line 1362
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "ParseObject contains container item that isn\'t cached."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1379
    .end local v2           #oldCacheItem:Lcom/parse/ParseJSONCacheItem;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1367
    .restart local v2       #oldCacheItem:Lcom/parse/ParseJSONCacheItem;
    :cond_0
    :try_start_1
    new-instance v1, Lcom/parse/ParseJSONCacheItem;

    invoke-direct {v1, p2}, Lcom/parse/ParseJSONCacheItem;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1371
    .local v1, newCacheItem:Lcom/parse/ParseJSONCacheItem;
    :try_start_2
    invoke-virtual {v2, v1}, Lcom/parse/ParseJSONCacheItem;->equals(Lcom/parse/ParseJSONCacheItem;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1373
    new-instance v3, Lcom/parse/ParseSetOperation;

    invoke-direct {v3, p2}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v3}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 1379
    .end local v1           #newCacheItem:Lcom/parse/ParseJSONCacheItem;
    .end local v2           #oldCacheItem:Lcom/parse/ParseJSONCacheItem;
    :cond_1
    :goto_0
    monitor-exit v4

    .line 1380
    return-void

    .line 1368
    .restart local v2       #oldCacheItem:Lcom/parse/ParseJSONCacheItem;
    :catch_0
    move-exception v0

    .line 1369
    .local v0, e:Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1377
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #oldCacheItem:Lcom/parse/ParseJSONCacheItem;
    :cond_2
    iget-object v3, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private checkGetAccess(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 3744
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3745
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParseObject has no data for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. Call fetchIfNeeded() to get the data."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3748
    :cond_0
    return-void
.end method

.method private checkKeyIsMutable(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 3287
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->isKeyMutable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot modify `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "` property of an "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " object."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3291
    :cond_0
    return-void
.end method

.method private checkpointAllMutableContainers()V
    .locals 5

    .prologue
    .line 1335
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1336
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1337
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/parse/ParseObject;->checkpointMutableContainer(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1339
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1340
    return-void
.end method

.method private checkpointMutableContainer(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "object"

    .prologue
    .line 1346
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1347
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseObject;->isContainerObject(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1348
    invoke-direct {p0, p2}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    .line 1350
    :cond_0
    monitor-exit v1

    .line 1351
    return-void

    .line 1350
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .parameter "node"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/parse/ParseFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2610
    .local p1, dirtyChildren:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/parse/ParseObject;>;"
    .local p2, dirtyFiles:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/parse/ParseFile;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, p2, v0, v1}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V

    .line 2613
    return-void
.end method

.method private static collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .parameter "node"
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/parse/ParseFile;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2539
    .local p1, dirtyChildren:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/parse/ParseObject;>;"
    .local p2, dirtyFiles:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/parse/ParseFile;>;"
    .local p3, alreadySeen:Ljava/util/Set;,"Ljava/util/Set<Lcom/parse/ParseObject;>;"
    .local p4, alreadySeenNew:Ljava/util/Set;,"Ljava/util/Set<Lcom/parse/ParseObject;>;"
    new-instance v0, Lcom/parse/ParseObject$36;

    invoke-direct {v0, p2, p1, p3, p4}, Lcom/parse/ParseObject$36;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject$36;->setYieldRoot(Z)Lcom/parse/ParseTraverser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParseTraverser;->traverse(Ljava/lang/Object;)V

    .line 2602
    return-void
.end method

.method private collectFetchedObjects()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 907
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 908
    .local v0, fetchedObjects:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    new-instance v1, Lcom/parse/ParseObject$5;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseObject$5;-><init>(Lcom/parse/ParseObject;Ljava/util/Map;)V

    .line 921
    .local v1, traverser:Lcom/parse/ParseTraverser;
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/parse/ParseTraverser;->traverse(Ljava/lang/Object;)V

    .line 922
    return-object v0
.end method

.method public static create(Ljava/lang/Class;)Lcom/parse/ParseObject;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, subclass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseObject;->create(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 3
    .parameter "className"

    .prologue
    .line 402
    sget-object v1, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    :try_start_0
    sget-object v1, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    return-object v1

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, e:Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 407
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0           #e:Ljava/lang/Exception;
    throw v0

    .line 409
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create instance of subclass."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 412
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lcom/parse/ParseObject;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createWithoutData(Ljava/lang/Class;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .parameter
    .parameter "objectId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 489
    .local p0, subclass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public static createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 6
    .parameter "className"
    .parameter "objectId"

    .prologue
    const/4 v5, 0x0

    .line 442
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v2

    .line 444
    .local v2, store:Lcom/parse/OfflineStore;
    if-nez p1, :cond_1

    .line 445
    :try_start_0
    sget-object v3, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    const-string v4, "*** Offline Object ***"

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 449
    :goto_0
    const/4 v1, 0x0

    .line 450
    .local v1, object:Lcom/parse/ParseObject;
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 451
    invoke-virtual {v2, p0, p1}, Lcom/parse/OfflineStore;->getObject(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v1

    .line 454
    :cond_0
    if-nez v1, :cond_2

    .line 455
    invoke-static {p0}, Lcom/parse/ParseObject;->create(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v1

    .line 456
    invoke-virtual {v1}, Lcom/parse/ParseObject;->hasChanges()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 457
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "A ParseObject subclass default constructor must not make changes to the object that cause it to be dirty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 466
    .end local v1           #object:Lcom/parse/ParseObject;
    :catch_0
    move-exception v0

    .line 467
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    sget-object v4, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v3

    .line 447
    :cond_1
    :try_start_2
    sget-object v3, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 468
    :catch_1
    move-exception v0

    .line 469
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to create instance of subclass."

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 471
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #object:Lcom/parse/ParseObject;
    :cond_2
    sget-object v3, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v1
.end method

.method private currentOperations()Lcom/parse/ParseOperationSet;
    .locals 2

    .prologue
    .line 3055
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3056
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseOperationSet;

    monitor-exit v1

    return-object v0

    .line 3057
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private currentSaveCommand(Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;
    .locals 3
    .parameter "operations"
    .parameter "objectEncoder"
    .parameter "sessionToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1464
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v2

    .line 1470
    .local v2, state:Lcom/parse/ParseObject$State;
    invoke-virtual {p0, v2, p1, p2}, Lcom/parse/ParseObject;->toJSONObjectForSaving(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1472
    .local v1, objectJSON:Lorg/json/JSONObject;
    invoke-static {v2, v1, p3}, Lcom/parse/ParseRESTObjectCommand;->saveObjectCommand(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    .line 1476
    .local v0, command:Lcom/parse/ParseRESTObjectCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTObjectCommand;->enableRetrying()V

    .line 1477
    return-object v0
.end method

.method private static deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)Lbolts/Task;
    .locals 20
    .parameter "object"
    .parameter "sessionToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2658
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 2659
    .local v9, objects:Ljava/util/Set;,"Ljava/util/Set<Lcom/parse/ParseObject;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2660
    .local v4, files:Ljava/util/Set;,"Ljava/util/Set<Lcom/parse/ParseFile;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v9, v4}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 2665
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 2666
    .local v14, users:Ljava/util/Set;,"Ljava/util/Set<Lcom/parse/ParseUser;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/parse/ParseObject;

    .line 2667
    .local v8, o:Lcom/parse/ParseObject;
    instance-of v0, v8, Lcom/parse/ParseUser;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object v13, v8

    .line 2668
    check-cast v13, Lcom/parse/ParseUser;

    .line 2669
    .local v13, user:Lcom/parse/ParseUser;
    invoke-virtual {v13}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2670
    check-cast v8, Lcom/parse/ParseUser;

    .end local v8           #o:Lcom/parse/ParseObject;
    invoke-interface {v14, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2674
    .end local v13           #user:Lcom/parse/ParseUser;
    :cond_1
    invoke-interface {v9, v14}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 2677
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 2678
    .local v5, filesComplete:Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2679
    .local v12, tasks:Ljava/util/List;,"Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseFile;

    .line 2680
    .local v3, file:Lcom/parse/ParseFile;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v3, v0, v1, v2}, Lcom/parse/ParseFile;->saveAsync(Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2682
    .end local v3           #file:Lcom/parse/ParseFile;
    :cond_2
    invoke-static {v12}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v17

    new-instance v18, Lcom/parse/ParseObject$38;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/parse/ParseObject$38;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual/range {v17 .. v18}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v6

    .line 2691
    .local v6, filesTask:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v15, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 2692
    .local v15, usersComplete:Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v12, Ljava/util/ArrayList;

    .end local v12           #tasks:Ljava/util/List;,"Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2693
    .restart local v12       #tasks:Ljava/util/List;,"Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/parse/ParseUser;

    .line 2694
    .restart local v13       #user:Lcom/parse/ParseUser;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/parse/ParseUser;->saveAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2696
    .end local v13           #user:Lcom/parse/ParseUser;
    :cond_3
    invoke-static {v12}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v17

    new-instance v18, Lcom/parse/ParseObject$39;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Lcom/parse/ParseObject$39;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual/range {v17 .. v18}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v16

    .line 2704
    .local v16, usersTask:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v11, Lbolts/Capture;

    invoke-direct {v11, v9}, Lbolts/Capture;-><init>(Ljava/lang/Object;)V

    .line 2705
    .local v11, remaining:Lbolts/Capture;,"Lbolts/Capture<Ljava/util/Set<Lcom/parse/ParseObject;>;>;"
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v17

    new-instance v18, Lcom/parse/ParseObject$40;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Lcom/parse/ParseObject$40;-><init>(Lbolts/Capture;)V

    new-instance v19, Lcom/parse/ParseObject$41;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v5, v15, v1}, Lcom/parse/ParseObject$41;-><init>(Lbolts/Capture;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Lbolts/Task;->continueWhile(Ljava/util/concurrent/Callable;Lbolts/Continuation;)Lbolts/Task;

    move-result-object v10

    .line 2747
    .local v10, objectsTask:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Lbolts/Task;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v6, v17, v18

    const/16 v18, 0x1

    aput-object v16, v17, v18

    const/16 v18, 0x2

    aput-object v10, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v17

    return-object v17
.end method

.method public static deleteAll(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2483
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->deleteAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 2484
    return-void
.end method

.method private static deleteAllAsync(Ljava/util/List;Ljava/lang/String;)Lbolts/Task;
    .locals 6
    .parameter
    .parameter "sessionToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2414
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 2415
    const/4 v5, 0x0

    invoke-static {v5}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v5

    .line 2430
    :goto_0
    return-object v5

    .line 2419
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 2420
    .local v3, objectCount:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2421
    .local v4, uniqueObjects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2422
    .local v1, idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 2423
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseObject;

    .line 2424
    .local v2, obj:Lcom/parse/ParseObject;
    invoke-virtual {v2}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2425
    invoke-virtual {v2}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2426
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2422
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2430
    .end local v2           #obj:Lcom/parse/ParseObject;
    :cond_2
    new-instance v5, Lcom/parse/ParseObject$33;

    invoke-direct {v5, v4, p1}, Lcom/parse/ParseObject$33;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/parse/ParseObject;->enqueueForAll(Ljava/util/List;Lbolts/Continuation;)Lbolts/Task;

    move-result-object v5

    goto :goto_0
.end method

.method private static deleteAllAsync(Ljava/util/List;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .parameter
    .parameter "sessionToken"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2440
    .local p0, uniqueObjects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p2, toAwait:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/ParseObject$34;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$34;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static deleteAllInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2509
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$35;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$35;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static deleteAllInBackground(Ljava/util/List;Lcom/parse/DeleteCallback;)V
    .locals 1
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/DeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2496
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->deleteAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 2497
    return-void
.end method

.method private deleteAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 2
    .parameter "sessionToken"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2311
    .local p2, toAwait:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 2313
    new-instance v0, Lcom/parse/ParseObject$30;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$30;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$29;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$29;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static enqueueForAll(Ljava/util/List;Lbolts/Continuation;)Lbolts/Task;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lbolts/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lbolts/Task",
            "<TT;>;>;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 550
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<+Lcom/parse/ParseObject;>;"
    .local p1, taskStart:Lbolts/Continuation;,"Lbolts/Continuation<Ljava/lang/Void;Lbolts/Task<TT;>;>;"
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v7

    .line 557
    .local v7, readyToStart:Lbolts/Task$TaskCompletionSource;,"Lbolts/Task<Ljava/lang/Void;>.TaskCompletionSource;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 558
    .local v5, locks:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/locks/Lock;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseObject;

    .line 559
    .local v6, obj:Lcom/parse/ParseObject;
    iget-object v8, v6, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    invoke-virtual {v8}, Lcom/parse/TaskQueue;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 561
    .end local v6           #obj:Lcom/parse/ParseObject;
    :cond_0
    new-instance v4, Lcom/parse/LockSet;

    invoke-direct {v4, v5}, Lcom/parse/LockSet;-><init>(Ljava/util/Collection;)V

    .line 563
    .local v4, lock:Lcom/parse/LockSet;
    invoke-virtual {v4}, Lcom/parse/LockSet;->lock()V

    .line 570
    :try_start_0
    invoke-virtual {v7}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v8

    invoke-interface {p1, v8}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbolts/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 578
    .local v2, fullTask:Lbolts/Task;,"Lbolts/Task<TT;>;"
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v0, childTasks:Ljava/util/List;,"Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseObject;

    .line 580
    .restart local v6       #obj:Lcom/parse/ParseObject;
    iget-object v8, v6, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v9, Lcom/parse/ParseObject$2;

    invoke-direct {v9, v0, v2}, Lcom/parse/ParseObject$2;-><init>(Ljava/util/List;Lbolts/Task;)V

    invoke-virtual {v8, v9}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 599
    .end local v0           #childTasks:Ljava/util/List;,"Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    .end local v2           #fullTask:Lbolts/Task;,"Lbolts/Task<TT;>;"
    .end local v6           #obj:Lcom/parse/ParseObject;
    :catchall_0
    move-exception v8

    invoke-virtual {v4}, Lcom/parse/LockSet;->unlock()V

    throw v8

    .line 571
    :catch_0
    move-exception v1

    .line 572
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_2
    throw v1

    .line 573
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 574
    .local v1, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 590
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #childTasks:Ljava/util/List;,"Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    .restart local v2       #fullTask:Lbolts/Task;,"Lbolts/Task<TT;>;"
    :cond_1
    invoke-static {v0}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v8

    new-instance v9, Lcom/parse/ParseObject$3;

    invoke-direct {v9, v7}, Lcom/parse/ParseObject$3;-><init>(Lbolts/Task$TaskCompletionSource;)V

    invoke-virtual {v8, v9}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 599
    invoke-virtual {v4}, Lcom/parse/LockSet;->unlock()V

    return-object v2
.end method

.method private enqueueSaveEventuallyOperationAsync(Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 2
    .parameter "operationSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1944
    invoke-virtual {p1}, Lcom/parse/ParseOperationSet;->isSaveEventually()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1945
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should only be used to enqueue saveEventually operation sets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1949
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseObject$16;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseObject$16;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static fetchAll(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3035
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static fetchAllAsync(Ljava/util/List;Lcom/parse/ParseUser;ZLbolts/Task;)Lbolts/Task;
    .locals 8
    .parameter
    .parameter "user"
    .parameter "onlyIfNeeded"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Z",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2949
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p3, toAwait:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 2950
    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v6

    .line 2979
    :goto_0
    return-object v6

    .line 2953
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2954
    .local v4, objectIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2955
    .local v0, className:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseObject;

    .line 2956
    .local v2, object:Lcom/parse/ParseObject;,"TT;"
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2960
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2961
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "All objects should have the same class"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2963
    :cond_3
    invoke-virtual {v2}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2965
    invoke-virtual {v2}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    .line 2966
    .local v3, objectId:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 2967
    invoke-virtual {v2}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2968
    :cond_4
    if-nez p2, :cond_1

    .line 2969
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "All objects must exist on the server"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2973
    .end local v2           #object:Lcom/parse/ParseObject;,"TT;"
    .end local v3           #objectId:Ljava/lang/String;
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_6

    .line 2974
    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v6

    goto :goto_0

    .line 2977
    :cond_6
    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v6

    const-string v7, "objectId"

    invoke-virtual {v6, v7, v4}, Lcom/parse/ParseQuery;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    move-result-object v5

    .line 2979
    .local v5, query:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    new-instance v6, Lcom/parse/ParseObject$47;

    invoke-direct {v6, v5, p1}, Lcom/parse/ParseObject$47;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V

    invoke-virtual {p3, v6}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v6

    new-instance v7, Lcom/parse/ParseObject$46;

    invoke-direct {v7, p0, p2}, Lcom/parse/ParseObject$46;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v6, v7}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v6

    goto :goto_0
.end method

.method private static fetchAllAsync(Ljava/util/List;Z)Lbolts/Task;
    .locals 2
    .parameter
    .parameter "onlyIfNeeded"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;Z)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2927
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$45;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseObject$45;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static fetchAllIfNeeded(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2909
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllIfNeededInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static fetchAllIfNeededInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2895
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->fetchAllAsync(Ljava/util/List;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static fetchAllIfNeededInBackground(Ljava/util/List;Lcom/parse/FindCallback;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/FindCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2922
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p1, callback:Lcom/parse/FindCallback;,"Lcom/parse/FindCallback<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllIfNeededInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 2923
    return-void
.end method

.method public static fetchAllInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3022
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->fetchAllAsync(Ljava/util/List;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static fetchAllInBackground(Ljava/util/List;Lcom/parse/FindCallback;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/FindCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 3048
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p1, callback:Lcom/parse/FindCallback;,"Lcom/parse/FindCallback<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 3049
    return-void
.end method

.method static fromDiskJSON(Lorg/json/JSONObject;)Lcom/parse/ParseObject;
    .locals 5
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 675
    const-string v4, "classname"

    invoke-virtual {p0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, className:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 684
    :goto_0
    return-object v2

    .line 679
    :cond_0
    const-string v4, "objectId"

    invoke-virtual {p0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 681
    .local v3, objectId:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v2

    .line 682
    .local v2, object:Lcom/parse/ParseObject;,"TT;"
    invoke-virtual {v2}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v4

    invoke-virtual {v2, v4, p0}, Lcom/parse/ParseObject;->mergeFromDiskJSON(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;)Lcom/parse/ParseObject$State;

    move-result-object v1

    .line 683
    .local v1, newState:Lcom/parse/ParseObject$State;
    invoke-virtual {v2, v1}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;)V

    goto :goto_0
.end method

.method static fromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseObject;
    .locals 1
    .parameter "json"
    .parameter "defaultClassName"
    .parameter "isComplete"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 699
    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/parse/ParseObject;->fromJSON(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/parse/ParseDecoder;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method static fromJSON(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/parse/ParseDecoder;)Lcom/parse/ParseObject;
    .locals 5
    .parameter "json"
    .parameter "defaultClassName"
    .parameter "isComplete"
    .parameter "decoder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/parse/ParseDecoder;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 716
    const-string v4, "className"

    invoke-virtual {p0, v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, className:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 725
    :goto_0
    return-object v2

    .line 720
    :cond_0
    const-string v4, "objectId"

    invoke-virtual {p0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 722
    .local v3, objectId:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v2

    .line 723
    .local v2, object:Lcom/parse/ParseObject;,"TT;"
    invoke-virtual {v2}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v4

    invoke-virtual {v2, v4, p0, p3, p2}, Lcom/parse/ParseObject;->mergeFromServer(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)Lcom/parse/ParseObject$State;

    move-result-object v1

    .line 724
    .local v1, newState:Lcom/parse/ParseObject$State;
    invoke-virtual {v2, v1}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;)V

    goto :goto_0
.end method

.method static fromJSONPayload(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject;
    .locals 4
    .parameter "json"
    .parameter "decoder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseDecoder;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 746
    const-string v3, "className"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, className:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/parse/ParseTextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 754
    :cond_0
    :goto_0
    return-object v1

    .line 750
    :cond_1
    const-string v3, "objectId"

    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 752
    .local v2, objectId:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v1

    .line 753
    .local v1, object:Lcom/parse/ParseObject;,"TT;"
    invoke-virtual {v1, p0, p1}, Lcom/parse/ParseObject;->build(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V

    goto :goto_0
.end method

.method private getACL(Z)Lcom/parse/ParseACL;
    .locals 6
    .parameter "mayCopy"

    .prologue
    .line 3638
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 3639
    :try_start_0
    const-string v3, "ACL"

    invoke-direct {p0, v3}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3640
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const-string v5, "ACL"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3641
    .local v1, acl:Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 3642
    const/4 v2, 0x0

    monitor-exit v4

    .line 3653
    .end local v1           #acl:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3644
    .restart local v1       #acl:Ljava/lang/Object;
    :cond_0
    instance-of v3, v1, Lcom/parse/ParseACL;

    if-nez v3, :cond_1

    .line 3645
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "only ACLs can be stored in the ACL key"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3654
    .end local v1           #acl:Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3647
    .restart local v1       #acl:Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    move-object v0, v1

    check-cast v0, Lcom/parse/ParseACL;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/parse/ParseACL;->isShared()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3648
    check-cast v1, Lcom/parse/ParseACL;

    .end local v1           #acl:Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/parse/ParseACL;->copy()Lcom/parse/ParseACL;

    move-result-object v2

    .line 3649
    .local v2, copy:Lcom/parse/ParseACL;
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const-string v5, "ACL"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3650
    invoke-direct {p0, v2}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    .line 3651
    monitor-exit v4

    goto :goto_0

    .line 3653
    .end local v2           #copy:Lcom/parse/ParseACL;
    .restart local v1       #acl:Ljava/lang/Object;
    :cond_2
    check-cast v1, Lcom/parse/ParseACL;

    .end local v1           #acl:Ljava/lang/Object;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    goto :goto_0
.end method

.method static getClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3778
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    sget-object v2, Lcom/parse/ParseObject;->classNames:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3779
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 3780
    const-class v2, Lcom/parse/ParseClassName;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseClassName;

    .line 3781
    .local v0, info:Lcom/parse/ParseClassName;
    if-nez v0, :cond_0

    .line 3782
    const/4 v2, 0x0

    .line 3787
    .end local v0           #info:Lcom/parse/ParseClassName;
    :goto_0
    return-object v2

    .line 3784
    .restart local v0       #info:Lcom/parse/ParseClassName;
    :cond_0
    invoke-interface {v0}, Lcom/parse/ParseClassName;->value()Ljava/lang/String;

    move-result-object v1

    .line 3785
    sget-object v2, Lcom/parse/ParseObject;->classNames:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0           #info:Lcom/parse/ParseClassName;
    :cond_1
    move-object v2, v1

    .line 3787
    goto :goto_0
.end method

.method static getFromDisk(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 4
    .parameter "filename"

    .prologue
    .line 667
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/parse/ParseFileUtils;->readFileToJSONObject(Ljava/io/File;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 671
    .local v1, json:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/parse/ParseObject;->fromDiskJSON(Lorg/json/JSONObject;)Lcom/parse/ParseObject;

    move-result-object v2

    .end local v1           #json:Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 668
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static getObjectController()Lcom/parse/ParseObjectController;
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getObjectController()Lcom/parse/ParseObjectController;

    move-result-object v0

    return-object v0
.end method

.method private hasDirtyChildren()Z
    .locals 4

    .prologue
    .line 1266
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1270
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1271
    .local v0, unsavedChildren:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1272
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1273
    .end local v0           #unsavedChildren:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static isAccessible(Ljava/lang/reflect/Member;)Z
    .locals 2
    .parameter "m"

    .prologue
    .line 493
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.parse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataAvailable(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 3677
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3678
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3680
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static migrateFromDiskToLDS(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .parameter "filename"
    .parameter "pinName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 604
    invoke-static {p0}, Lcom/parse/ParseObject;->getFromDisk(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    .line 605
    .local v0, disk:Lcom/parse/ParseObject;
    if-nez v0, :cond_0

    .line 606
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 609
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/parse/ParseObject;->pinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject$4;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseObject$4;-><init>(Ljava/lang/String;Lcom/parse/ParseObject;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    goto :goto_0
.end method

.method private notifyObjectIdChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "oldObjectId"
    .parameter "newObjectId"

    .prologue
    .line 1447
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1449
    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v0

    .line 1450
    .local v0, store:Lcom/parse/OfflineStore;
    if-eqz v0, :cond_0

    .line 1451
    invoke-virtual {v0, p0, p1, p2}, Lcom/parse/OfflineStore;->updateObjectId(Lcom/parse/ParseObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1455
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    invoke-virtual {v1, v3, p2}, Lcom/parse/LocalIdManager;->setObjectId(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    .line 1458
    :cond_1
    monitor-exit v2

    .line 1459
    return-void

    .line 1458
    .end local v0           #store:Lcom/parse/OfflineStore;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static pinAll(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3964
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 3965
    return-void
.end method

.method public static pinAll(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 4021
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 4022
    return-void
.end method

.method public static pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;
    .locals 1
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3879
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private static pinAllInBackground(Ljava/lang/String;Ljava/util/List;Z)Lbolts/Task;
    .locals 5
    .parameter "name"
    .parameter
    .parameter "includeAllChildren"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;Z)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3884
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3885
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Method requires Local Datastore. Please refer to `Parse#enableLocalDatastore(Context)`."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3889
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    .line 3892
    .local v2, task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 3893
    .local v1, object:Lcom/parse/ParseObject;
    new-instance v3, Lcom/parse/ParseObject$48;

    invoke-direct {v3, v1}, Lcom/parse/ParseObject$48;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    .line 3913
    goto :goto_0

    .line 3915
    .end local v1           #object:Lcom/parse/ParseObject;
    :cond_1
    new-instance v3, Lcom/parse/ParseObject$50;

    invoke-direct {v3, p0, p1, p2}, Lcom/parse/ParseObject$50;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/ParseObject$49;

    invoke-direct {v4, p0, p1}, Lcom/parse/ParseObject$49;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    return-object v3
.end method

.method public static pinAllInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4003
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static pinAllInBackground(Ljava/lang/String;Ljava/util/List;Lcom/parse/SaveCallback;)V
    .locals 1
    .parameter "name"
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3858
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3859
    return-void
.end method

.method public static pinAllInBackground(Ljava/util/List;Lcom/parse/SaveCallback;)V
    .locals 1
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3984
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3985
    return-void
.end method

.method private rebuildDataAvailability()V
    .locals 5

    .prologue
    .line 3095
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 3096
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 3097
    iget-object v2, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v2}, Lcom/parse/ParseObject$State;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3098
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3100
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3101
    return-void
.end method

.method private rebuildEstimatedData()V
    .locals 6

    .prologue
    .line 3080
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 3081
    :try_start_0
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 3082
    iget-object v3, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v3}, Lcom/parse/ParseObject$State;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3083
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    iget-object v5, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v5, v1}, Lcom/parse/ParseObject$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3088
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3085
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseOperationSet;

    .line 3086
    .local v2, operations:Lcom/parse/ParseOperationSet;
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-direct {p0, v2, v3}, Lcom/parse/ParseObject;->applyOperations(Lcom/parse/ParseOperationSet;Ljava/util/Map;)V

    goto :goto_1

    .line 3088
    .end local v2           #operations:Lcom/parse/ParseOperationSet;
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3089
    return-void
.end method

.method static registerParseSubclasses()V
    .locals 1

    .prologue
    .line 3813
    const-class v0, Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3814
    const-class v0, Lcom/parse/ParseRole;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3815
    const-class v0, Lcom/parse/ParseInstallation;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3816
    const-class v0, Lcom/parse/ParseSession;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3818
    const-class v0, Lcom/parse/ParsePin;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3819
    const-class v0, Lcom/parse/EventuallyPin;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3820
    return-void
.end method

.method public static registerSubclass(Ljava/lang/Class;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 507
    .local p0, subclass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, className:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 509
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No ParseClassName annotation provided on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 511
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_1

    .line 513
    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-static {v3}, Lcom/parse/ParseObject;->isAccessible(Ljava/lang/reflect/Member;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 514
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default constructor for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not accessible."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :catch_0
    move-exception v1

    .line 518
    .local v1, e:Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No default constructor provided for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 521
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :cond_1
    sget-object v3, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 522
    .local v2, oldValue:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    if-eqz v2, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 534
    :cond_2
    :goto_0
    return-void

    .line 526
    :cond_3
    sget-object v3, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 528
    const-class v3, Lcom/parse/ParseUser;

    invoke-static {v3}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 529
    invoke-static {}, Lcom/parse/ParseUser;->clearCurrentUserFromMemory()V

    goto :goto_0

    .line 530
    :cond_4
    const-class v3, Lcom/parse/ParseInstallation;

    invoke-static {v3}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 531
    invoke-static {}, Lcom/parse/ParseInstallation;->clearCurrentInstallationFromMemory()V

    goto :goto_0
.end method

.method public static saveAll(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2810
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->saveAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 2811
    return-void
.end method

.method private static saveAllAsync(Ljava/util/List;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .parameter
    .parameter "sessionToken"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2752
    .local p0, uniqueObjects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p2, toAwait:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/ParseObject$42;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$42;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static saveAllInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2836
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$44;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$44;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$43;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$43;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static saveAllInBackground(Ljava/util/List;Lcom/parse/SaveCallback;)V
    .locals 1
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2823
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->saveAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 2824
    return-void
.end method

.method private setState(Lcom/parse/ParseObject$State;Z)V
    .locals 4
    .parameter "newState"
    .parameter "notifyIfObjectIdChanges"

    .prologue
    .line 781
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 782
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v2}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, oldObjectId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, newObjectId:Ljava/lang/String;
    iput-object p1, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    .line 787
    if-eqz p2, :cond_0

    invoke-static {v1, v0}, Lcom/parse/ParseTextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 788
    invoke-direct {p0, v1, v0}, Lcom/parse/ParseObject;->notifyObjectIdChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    :cond_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 792
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildDataAvailability()V

    .line 793
    invoke-direct {p0}, Lcom/parse/ParseObject;->checkpointAllMutableContainers()V

    .line 794
    monitor-exit v3

    .line 795
    return-void

    .line 794
    .end local v0           #newObjectId:Ljava/lang/String;
    .end local v1           #oldObjectId:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static unpinAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 4211
    invoke-static {}, Lcom/parse/ParseObject;->unpinAllInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 4212
    return-void
.end method

.method public static unpinAll(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 4174
    invoke-static {p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 4175
    return-void
.end method

.method public static unpinAll(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 4079
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 4080
    return-void
.end method

.method public static unpinAll(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 4125
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 4126
    return-void
.end method

.method public static unpinAllInBackground()Lbolts/Task;
    .locals 1
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
    .line 4199
    const-string v0, "_default"

    invoke-static {v0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .parameter "name"
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
    .line 4153
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4154
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method requires Local Datastore. Please refer to `Parse#enableLocalDatastore(Context)`."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4157
    :cond_0
    if-nez p0, :cond_1

    .line 4158
    const-string p0, "_default"

    .line 4160
    :cond_1
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/OfflineStore;->unpinAllObjectsAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;
    .locals 2
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4055
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4056
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method requires Local Datastore. Please refer to `Parse#enableLocalDatastore(Context)`."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4059
    :cond_0
    if-nez p0, :cond_1

    .line 4060
    const-string p0, "_default"

    .line 4062
    :cond_1
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/parse/OfflineStore;->unpinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static unpinAllInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4110
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static unpinAllInBackground(Lcom/parse/DeleteCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 4187
    invoke-static {}, Lcom/parse/ParseObject;->unpinAllInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 4188
    return-void
.end method

.method public static unpinAllInBackground(Ljava/lang/String;Lcom/parse/DeleteCallback;)V
    .locals 1
    .parameter "name"
    .parameter "callback"

    .prologue
    .line 4139
    invoke-static {p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 4140
    return-void
.end method

.method public static unpinAllInBackground(Ljava/lang/String;Ljava/util/List;Lcom/parse/DeleteCallback;)V
    .locals 1
    .parameter "name"
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/DeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4038
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 4039
    return-void
.end method

.method public static unpinAllInBackground(Ljava/util/List;Lcom/parse/DeleteCallback;)V
    .locals 1
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/DeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4095
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 4096
    return-void
.end method

.method static unregisterParseSubclasses()V
    .locals 1

    .prologue
    .line 3823
    const-class v0, Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseObject;->unregisterSubclass(Ljava/lang/Class;)V

    .line 3824
    const-class v0, Lcom/parse/ParseRole;

    invoke-static {v0}, Lcom/parse/ParseObject;->unregisterSubclass(Ljava/lang/Class;)V

    .line 3825
    const-class v0, Lcom/parse/ParseInstallation;

    invoke-static {v0}, Lcom/parse/ParseObject;->unregisterSubclass(Ljava/lang/Class;)V

    .line 3826
    const-class v0, Lcom/parse/ParseSession;

    invoke-static {v0}, Lcom/parse/ParseObject;->unregisterSubclass(Ljava/lang/Class;)V

    .line 3828
    const-class v0, Lcom/parse/ParsePin;

    invoke-static {v0}, Lcom/parse/ParseObject;->unregisterSubclass(Ljava/lang/Class;)V

    .line 3829
    const-class v0, Lcom/parse/EventuallyPin;

    invoke-static {v0}, Lcom/parse/ParseObject;->unregisterSubclass(Ljava/lang/Class;)V

    .line 3830
    return-void
.end method

.method static unregisterSubclass(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 537
    .local p0, subclass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseObject;->unregisterSubclass(Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method static unregisterSubclass(Ljava/lang/String;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 541
    sget-object v0, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3201
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->addAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 3202
    return-void
.end method

.method public addAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 3214
    .local p2, values:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Lcom/parse/ParseAddOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseAddOperation;-><init>(Ljava/util/Collection;)V

    .line 3215
    .local v0, operation:Lcom/parse/ParseAddOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 3216
    return-void
.end method

.method public addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 3242
    .local p2, values:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Lcom/parse/ParseAddUniqueOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseAddUniqueOperation;-><init>(Ljava/util/Collection;)V

    .line 3243
    .local v0, operation:Lcom/parse/ParseAddUniqueOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 3244
    return-void
.end method

.method public addUnique(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3228
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V

    .line 3229
    return-void
.end method

.method build(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    .locals 9
    .parameter "json"
    .parameter "decoder"

    .prologue
    .line 1015
    :try_start_0
    new-instance v7, Lcom/parse/ParseObject$State$Builder;

    iget-object v8, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-direct {v7, v8}, Lcom/parse/ParseObject$State$Builder;-><init>(Lcom/parse/ParseObject$State;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/parse/ParseObject$State$Builder;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject$State$Builder;

    .line 1018
    .local v0, builder:Lcom/parse/ParseObject$State$Builder;
    invoke-virtual {v0}, Lcom/parse/ParseObject$State$Builder;->clear()Lcom/parse/ParseObject$State$Init;

    .line 1020
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 1021
    .local v4, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1022
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1026
    .local v3, key:Ljava/lang/String;
    const-string v7, "className"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1029
    const-string v7, "objectId"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1030
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1031
    .local v5, newObjectId:Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/parse/ParseObject$State$Builder;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1054
    .end local v0           #builder:Lcom/parse/ParseObject$State$Builder;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v5           #newObjectId:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1055
    .local v2, e:Lorg/json/JSONException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 1034
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v0       #builder:Lcom/parse/ParseObject$State$Builder;
    .restart local v3       #key:Ljava/lang/String;
    .restart local v4       #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_1
    :try_start_1
    const-string v7, "createdAt"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1035
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v7

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/parse/ParseObject$State$Builder;->createdAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    goto :goto_0

    .line 1038
    :cond_2
    const-string v7, "updatedAt"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1039
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v7

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/parse/ParseObject$State$Builder;->updatedAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    goto :goto_0

    .line 1043
    :cond_3
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1044
    .local v6, value:Ljava/lang/Object;
    invoke-virtual {p2, v6}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1045
    .local v1, decodedObject:Ljava/lang/Object;
    instance-of v7, v1, Lcom/parse/ParseFieldOperation;

    if-eqz v7, :cond_4

    .line 1046
    check-cast v1, Lcom/parse/ParseFieldOperation;

    .end local v1           #decodedObject:Ljava/lang/Object;
    invoke-virtual {p0, v3, v1}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    goto :goto_0

    .line 1049
    .restart local v1       #decodedObject:Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0, v3, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1053
    .end local v1           #decodedObject:Ljava/lang/Object;
    .end local v3           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/Object;
    :cond_5
    invoke-virtual {v0}, Lcom/parse/ParseObject$State$Builder;->build()Lcom/parse/ParseObject$State;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1057
    return-void
.end method

.method checkForChangesToMutableContainers()V
    .locals 5

    .prologue
    .line 1387
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1388
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1389
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/parse/ParseObject;->checkForChangesToMutableContainer(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1392
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1391
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 1392
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1393
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 3305
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3306
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3307
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method copyChangesFrom(Lcom/parse/ParseObject;)V
    .locals 5
    .parameter "other"

    .prologue
    .line 851
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 852
    :try_start_0
    iget-object v3, p1, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseOperationSet;

    .line 853
    .local v2, operations:Lcom/parse/ParseOperationSet;
    invoke-virtual {v2}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 854
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseFieldOperation;

    invoke-virtual {p0, v1, v3}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    goto :goto_0

    .line 856
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #operations:Lcom/parse/ParseOperationSet;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #operations:Lcom/parse/ParseOperationSet;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 857
    return-void
.end method

.method public final delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2395
    invoke-virtual {p0}, Lcom/parse/ParseObject;->deleteInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 2396
    return-void
.end method

.method deleteAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .parameter "sessionToken"
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2332
    invoke-static {}, Lcom/parse/ParseObject;->getObjectController()Lcom/parse/ParseObjectController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/parse/ParseObjectController;->deleteAsync(Lcom/parse/ParseObject$State;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public final deleteEventually()Lbolts/Task;
    .locals 7
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
    .line 2034
    iget-object v6, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v6

    .line 2035
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 2036
    iget v5, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    .line 2038
    const/4 v2, 0x0

    .line 2039
    .local v2, localId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 2040
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v2

    .line 2044
    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v4

    .line 2047
    .local v4, sessionToken:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/parse/ParseRESTObjectCommand;->deleteObjectCommand(Lcom/parse/ParseObject$State;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    .line 2049
    .local v0, command:Lcom/parse/ParseRESTCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->enableRetrying()V

    .line 2050
    invoke-virtual {v0, v2}, Lcom/parse/ParseRESTCommand;->setLocalId(Ljava/lang/String;)V

    .line 2052
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v5

    invoke-virtual {v5, v0, p0}, Lcom/parse/ParseEventuallyQueue;->enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v3

    .line 2053
    .local v3, runEventuallyTask:Lbolts/Task;,"Lbolts/Task<Lorg/json/JSONObject;>;"
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2056
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2058
    invoke-virtual {v3}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    .line 2068
    .local v1, handleDeleteResultTask:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    return-object v1

    .line 2053
    .end local v0           #command:Lcom/parse/ParseRESTCommand;
    .end local v1           #handleDeleteResultTask:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    .end local v2           #localId:Ljava/lang/String;
    .end local v3           #runEventuallyTask:Lbolts/Task;,"Lbolts/Task<Lorg/json/JSONObject;>;"
    .end local v4           #sessionToken:Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 2060
    .restart local v0       #command:Lcom/parse/ParseRESTCommand;
    .restart local v2       #localId:Ljava/lang/String;
    .restart local v3       #runEventuallyTask:Lbolts/Task;,"Lbolts/Task<Lorg/json/JSONObject;>;"
    .restart local v4       #sessionToken:Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/parse/ParseObject$18;

    invoke-direct {v5, p0}, Lcom/parse/ParseObject$18;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v3, v5}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .restart local v1       #handleDeleteResultTask:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    goto :goto_0
.end method

.method public final deleteEventually(Lcom/parse/DeleteCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 2013
    invoke-virtual {p0}, Lcom/parse/ParseObject;->deleteEventually()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 2014
    return-void
.end method

.method public final deleteInBackground()Lbolts/Task;
    .locals 2
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
    .line 2374
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$32;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$32;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public final deleteInBackground(Lcom/parse/DeleteCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 2406
    invoke-virtual {p0}, Lcom/parse/ParseObject;->deleteInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 2407
    return-void
.end method

.method public fetch()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2201
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method fetchAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 2
    .parameter "sessionToken"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2207
    .local p2, toAwait:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/ParseObject$27;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$27;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$26;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$26;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$25;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$25;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public fetchFromLocalDatastore()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 4245
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchFromLocalDatastoreAsync()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 4246
    return-void
.end method

.method fetchFromLocalDatastoreAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4221
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method requires Local Datastore. Please refer to `Parse#enableLocalDatastore(Context)`."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4225
    :cond_0
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public fetchFromLocalDatastoreInBackground(Lcom/parse/GetCallback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 4234
    .local p1, callback:Lcom/parse/GetCallback;,"Lcom/parse/GetCallback<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchFromLocalDatastoreAsync()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 4235
    return-void
.end method

.method public fetchIfNeeded()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2290
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchIfNeededInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method public final fetchIfNeededInBackground()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2273
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2274
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2275
    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    .line 2277
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchInBackground()Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 2278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final fetchIfNeededInBackground(Lcom/parse/GetCallback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2302
    .local p1, callback:Lcom/parse/GetCallback;,"Lcom/parse/GetCallback<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchIfNeededInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 2303
    return-void
.end method

.method public final fetchInBackground()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2240
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$28;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$28;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public final fetchInBackground(Lcom/parse/GetCallback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2262
    .local p1, callback:Lcom/parse/GetCallback;,"Lcom/parse/GetCallback<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 2263
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "key"

    .prologue
    .line 3725
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 3726
    :try_start_0
    const-string v2, "ACL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3727
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getACL()Lcom/parse/ParseACL;

    move-result-object v1

    monitor-exit v3

    .line 3739
    :goto_0
    return-object v1

    .line 3730
    :cond_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3731
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3735
    .local v1, value:Ljava/lang/Object;
    instance-of v2, v1, Lcom/parse/ParseRelation;

    if-eqz v2, :cond_1

    .line 3736
    move-object v0, v1

    check-cast v0, Lcom/parse/ParseRelation;

    move-object v2, v0

    invoke-virtual {v2, p0, p1}, Lcom/parse/ParseRelation;->ensureParentAndKey(Lcom/parse/ParseObject;Ljava/lang/String;)V

    .line 3739
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 3740
    .end local v1           #value:Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getACL()Lcom/parse/ParseACL;
    .locals 1

    .prologue
    .line 3634
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 3531
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3532
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3533
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3534
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 3535
    const/4 v1, 0x0

    monitor-exit v2

    .line 3537
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 3538
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 3
    .parameter "key"

    .prologue
    .line 3336
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3337
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3338
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3339
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, [B

    if-nez v1, :cond_0

    .line 3340
    const/4 v0, 0x0

    monitor-exit v2

    .line 3343
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    check-cast v0, [B

    .end local v0           #value:Ljava/lang/Object;
    check-cast v0, [B

    monitor-exit v2

    goto :goto_0

    .line 3344
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 801
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 802
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v0}, Lcom/parse/ParseObject$State;->className()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 803
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 4

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v0

    .line 829
    .local v0, createdAt:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .parameter "key"

    .prologue
    .line 3549
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3550
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3551
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3552
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Date;

    if-nez v1, :cond_0

    .line 3553
    const/4 v0, 0x0

    monitor-exit v2

    .line 3555
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/util/Date;

    .end local v0           #value:Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3556
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 4
    .parameter "key"

    .prologue
    .line 3501
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 3502
    .local v0, number:Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 3503
    const-wide/16 v2, 0x0

    .line 3505
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 3486
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 3487
    .local v0, number:Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 3488
    const/4 v1, 0x0

    .line 3490
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3
    .parameter "key"

    .prologue
    .line 3377
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3378
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3379
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3381
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3382
    invoke-static {}, Lcom/parse/PointerOrLocalIdEncoder;->get()Lcom/parse/PointerOrLocalIdEncoder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parse/PointerOrLocalIdEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3383
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3386
    :cond_0
    instance-of v1, v0, Lorg/json/JSONArray;

    if-nez v1, :cond_1

    .line 3387
    const/4 v0, 0x0

    monitor-exit v2

    .line 3389
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    check-cast v0, Lorg/json/JSONArray;

    .end local v0           #value:Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3390
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .parameter "key"

    .prologue
    .line 3461
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3462
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3463
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3465
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 3466
    invoke-static {}, Lcom/parse/PointerOrLocalIdEncoder;->get()Lcom/parse/PointerOrLocalIdEncoder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parse/PointerOrLocalIdEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3467
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3470
    :cond_0
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_1

    .line 3471
    const/4 v0, 0x0

    monitor-exit v2

    .line 3474
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    check-cast v0, Lorg/json/JSONObject;

    .end local v0           #value:Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3475
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3403
    iget-object v5, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 3404
    :try_start_0
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3406
    .local v3, value:Ljava/lang/Object;
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    .line 3407
    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v1

    .line 3408
    .local v1, decoder:Lcom/parse/ParseDecoder;
    check-cast v3, Lorg/json/JSONArray;

    .end local v3           #value:Ljava/lang/Object;
    invoke-virtual {v1, v3}, Lcom/parse/ParseDecoder;->convertJSONArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    .line 3409
    .local v3, value:Ljava/util/List;
    invoke-virtual {p0, p1, v3}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3412
    .end local v1           #decoder:Lcom/parse/ParseDecoder;
    .end local v3           #value:Ljava/util/List;
    :cond_0
    instance-of v4, v3, Ljava/util/List;

    if-nez v4, :cond_1

    .line 3413
    const/4 v2, 0x0

    monitor-exit v5

    .line 3417
    :goto_0
    return-object v2

    .line 3416
    :cond_1
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 3417
    .local v2, returnValue:Ljava/util/List;,"Ljava/util/List<TT;>;"
    monitor-exit v5

    goto :goto_0

    .line 3418
    .end local v2           #returnValue:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .parameter "key"

    .prologue
    .line 3516
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 3517
    .local v0, number:Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 3518
    const-wide/16 v2, 0x0

    .line 3520
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 3431
    iget-object v5, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 3432
    :try_start_0
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3434
    .local v3, value:Ljava/lang/Object;
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 3435
    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v1

    .line 3436
    .local v1, decoder:Lcom/parse/ParseDecoder;
    check-cast v3, Lorg/json/JSONObject;

    .end local v3           #value:Ljava/lang/Object;
    invoke-virtual {v1, v3}, Lcom/parse/ParseDecoder;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 3437
    .local v3, value:Ljava/util/Map;
    invoke-virtual {p0, p1, v3}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3440
    .end local v1           #decoder:Lcom/parse/ParseDecoder;
    .end local v3           #value:Ljava/util/Map;
    :cond_0
    instance-of v4, v3, Ljava/util/Map;

    if-nez v4, :cond_1

    .line 3441
    const/4 v2, 0x0

    monitor-exit v5

    .line 3445
    :goto_0
    return-object v2

    .line 3444
    :cond_1
    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    .line 3445
    .local v2, returnValue:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;TV;>;"
    monitor-exit v5

    goto :goto_0

    .line 3446
    .end local v2           #returnValue:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;TV;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 3
    .parameter "key"

    .prologue
    .line 3355
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3356
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3357
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3358
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_0

    .line 3359
    const/4 v0, 0x0

    monitor-exit v2

    .line 3361
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3362
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1405
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1406
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v0}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1407
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getOrCreateLocalId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1433
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1434
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1435
    iget-object v0, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v0}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1436
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Attempted to get a localId for an object with an objectId."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1442
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1439
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/LocalIdManager;->createLocalId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    .line 1441
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getParseFile(Ljava/lang/String;)Lcom/parse/ParseFile;
    .locals 2
    .parameter "key"

    .prologue
    .line 3605
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3606
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseFile;

    if-nez v1, :cond_0

    .line 3607
    const/4 v0, 0x0

    .line 3609
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseFile;

    goto :goto_0
.end method

.method public getParseGeoPoint(Ljava/lang/String;)Lcom/parse/ParseGeoPoint;
    .locals 3
    .parameter "key"

    .prologue
    .line 3620
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3621
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3622
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3623
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseGeoPoint;

    if-nez v1, :cond_0

    .line 3624
    const/4 v0, 0x0

    monitor-exit v2

    .line 3626
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseGeoPoint;

    .end local v0           #value:Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3627
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 2
    .parameter "key"

    .prologue
    .line 3570
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3571
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseObject;

    if-nez v1, :cond_0

    .line 3572
    const/4 v0, 0x0

    .line 3574
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseObject;

    goto :goto_0
.end method

.method public getParseUser(Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 2
    .parameter "key"

    .prologue
    .line 3588
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3589
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseUser;

    if-nez v1, :cond_0

    .line 3590
    const/4 v0, 0x0

    .line 3592
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseUser;

    goto :goto_0
.end method

.method public getRelation(Ljava/lang/String;)Lcom/parse/ParseRelation;
    .locals 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseRelation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3692
    iget-object v5, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 3694
    :try_start_0
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3695
    .local v3, value:Ljava/lang/Object;
    instance-of v4, v3, Lcom/parse/ParseRelation;

    if-eqz v4, :cond_0

    .line 3697
    move-object v0, v3

    check-cast v0, Lcom/parse/ParseRelation;

    move-object v1, v0

    .line 3698
    .local v1, relation:Lcom/parse/ParseRelation;,"Lcom/parse/ParseRelation<TT;>;"
    invoke-virtual {v1, p0, p1}, Lcom/parse/ParseRelation;->ensureParentAndKey(Lcom/parse/ParseObject;Ljava/lang/String;)V

    .line 3699
    monitor-exit v5

    move-object v2, v1

    .line 3711
    .end local v1           #relation:Lcom/parse/ParseRelation;,"Lcom/parse/ParseRelation<TT;>;"
    .local v2, relation:Ljava/lang/Object;,"Lcom/parse/ParseRelation<TT;>;"
    :goto_0
    return-object v2

    .line 3701
    .end local v2           #relation:Ljava/lang/Object;,"Lcom/parse/ParseRelation<TT;>;"
    :cond_0
    new-instance v1, Lcom/parse/ParseRelation;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseRelation;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    .line 3710
    .restart local v1       #relation:Lcom/parse/ParseRelation;,"Lcom/parse/ParseRelation<TT;>;"
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3711
    monitor-exit v5

    move-object v2, v1

    .restart local v2       #relation:Ljava/lang/Object;,"Lcom/parse/ParseRelation<TT;>;"
    goto :goto_0

    .line 3713
    .end local v1           #relation:Lcom/parse/ParseRelation;,"Lcom/parse/ParseRelation<TT;>;"
    .end local v2           #relation:Ljava/lang/Object;,"Lcom/parse/ParseRelation<TT;>;"
    .end local v3           #value:Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method getState()Lcom/parse/ParseObject$State;
    .locals 2

    .prologue
    .line 764
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 765
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    monitor-exit v1

    return-object v0

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"

    .prologue
    .line 3318
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3319
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3320
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3321
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3322
    const/4 v0, 0x0

    monitor-exit v2

    .line 3324
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #value:Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3325
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 4

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v0

    .line 815
    .local v0, updatedAt:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method handleDeleteEventuallyResultAsync()Lbolts/Task;
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
    .line 2077
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2078
    :try_start_0
    iget v1, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    .line 2079
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2080
    invoke-virtual {p0}, Lcom/parse/ParseObject;->handleDeleteResultAsync()Lbolts/Task;

    move-result-object v0

    .line 2082
    .local v0, handleDeleteResultTask:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v1, Lcom/parse/ParseObject$19;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$19;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1

    .line 2079
    .end local v0           #handleDeleteResultTask:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method handleDeleteResultAsync()Lbolts/Task;
    .locals 4
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
    .line 2341
    const/4 v2, 0x0

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 2343
    .local v1, task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 2344
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/parse/ParseObject;->isDeleted:Z

    .line 2345
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2347
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v0

    .line 2348
    .local v0, store:Lcom/parse/OfflineStore;
    if-eqz v0, :cond_0

    .line 2349
    new-instance v2, Lcom/parse/ParseObject$31;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseObject$31;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 2364
    :cond_0
    return-object v1

    .line 2345
    .end local v0           #store:Lcom/parse/OfflineStore;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method handleFetchResultAsync(Lcom/parse/ParseObject$State;)Lbolts/Task;
    .locals 4
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2098
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Void;

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 2104
    .local v1, task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v0

    .line 2105
    .local v0, store:Lcom/parse/OfflineStore;
    if-eqz v0, :cond_0

    .line 2106
    new-instance v2, Lcom/parse/ParseObject$21;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseObject$21;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$20;

    invoke-direct {v3, p0}, Lcom/parse/ParseObject$20;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 2124
    :cond_0
    new-instance v2, Lcom/parse/ParseObject$22;

    invoke-direct {v2, p0, p1}, Lcom/parse/ParseObject$22;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseObject$State;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 2142
    if-eqz v0, :cond_1

    .line 2143
    new-instance v2, Lcom/parse/ParseObject$24;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseObject$24;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$23;

    invoke-direct {v3, p0}, Lcom/parse/ParseObject$23;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 2161
    :cond_1
    return-object v1
.end method

.method handleSaveEventuallyResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 3
    .parameter "json"
    .parameter "operationSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1972
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 1973
    .local v1, success:Z
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v0

    .line 1975
    .local v0, handleSaveResultTask:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v2, Lcom/parse/ParseObject$17;

    invoke-direct {v2, p0, v1}, Lcom/parse/ParseObject$17;-><init>(Lcom/parse/ParseObject;Z)V

    invoke-virtual {v0, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    return-object v2

    .line 1972
    .end local v0           #handleSaveResultTask:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    .end local v1           #success:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 9
    .parameter "result"
    .parameter "operationsBeforeSave"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1599
    const/4 v6, 0x0

    check-cast v6, Ljava/lang/Void;

    invoke-static {v6}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v4

    .line 1601
    .local v4, task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1602
    .local v3, success:Z
    :goto_0
    iget-object v7, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v7

    .line 1605
    :try_start_0
    iget-object v6, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    iget-object v8, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v8, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 1607
    .local v1, opIterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/parse/ParseOperationSet;>;"
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1608
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 1609
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseOperationSet;

    .line 1611
    .local v0, nextOperation:Lcom/parse/ParseOperationSet;
    if-nez v3, :cond_1

    .line 1613
    invoke-virtual {v0, p2}, Lcom/parse/ParseOperationSet;->mergeFrom(Lcom/parse/ParseOperationSet;)V

    .line 1614
    monitor-exit v7

    move-object v5, v4

    .line 1671
    .end local v4           #task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    .local v5, task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    :goto_1
    return-object v5

    .line 1601
    .end local v0           #nextOperation:Lcom/parse/ParseOperationSet;
    .end local v1           #opIterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/parse/ParseOperationSet;>;"
    .end local v3           #success:Z
    .end local v5           #task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    .restart local v4       #task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1616
    .restart local v0       #nextOperation:Lcom/parse/ParseOperationSet;
    .restart local v1       #opIterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/parse/ParseOperationSet;>;"
    .restart local v3       #success:Z
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1622
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v2

    .line 1623
    .local v2, store:Lcom/parse/OfflineStore;
    if-eqz v2, :cond_2

    .line 1624
    new-instance v6, Lcom/parse/ParseObject$6;

    invoke-direct {v6, p0, v2}, Lcom/parse/ParseObject$6;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v4, v6}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    .line 1633
    :cond_2
    new-instance v6, Lcom/parse/ParseObject$7;

    invoke-direct {v6, p0, p1, p2}, Lcom/parse/ParseObject$7;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v4, v6}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    .line 1654
    if-eqz v2, :cond_3

    .line 1655
    new-instance v6, Lcom/parse/ParseObject$8;

    invoke-direct {v6, p0, v2}, Lcom/parse/ParseObject$8;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v4, v6}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    .line 1663
    :cond_3
    new-instance v6, Lcom/parse/ParseObject$9;

    invoke-direct {v6, p0}, Lcom/parse/ParseObject$9;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v4, v6}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    move-object v5, v4

    .line 1671
    .end local v4           #task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    .restart local v5       #task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    goto :goto_1

    .line 1616
    .end local v0           #nextOperation:Lcom/parse/ParseOperationSet;
    .end local v1           #opIterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/parse/ParseOperationSet;>;"
    .end local v2           #store:Lcom/parse/OfflineStore;
    .end local v5           #task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    .restart local v4       #task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 7
    .parameter "result"
    .parameter "operationsBeforeSave"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1579
    const/4 v2, 0x0

    .line 1581
    .local v2, newState:Lcom/parse/ParseObject$State;
    if-eqz p1, :cond_0

    .line 1582
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 1583
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->collectFetchedObjects()Ljava/util/Map;

    move-result-object v1

    .line 1584
    .local v1, fetchedObjects:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    new-instance v0, Lcom/parse/KnownParseObjectDecoder;

    invoke-direct {v0, v1}, Lcom/parse/KnownParseObjectDecoder;-><init>(Ljava/util/Map;)V

    .line 1585
    .local v0, decoder:Lcom/parse/ParseDecoder;
    invoke-static {}, Lcom/parse/ParseObject;->getObjectController()Lcom/parse/ParseObjectController;

    move-result-object v3

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v5, p1, v0, v6}, Lcom/parse/ParseObjectController;->stateFromJSON(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)Lcom/parse/ParseObject$State;

    move-result-object v2

    .line 1586
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1589
    .end local v0           #decoder:Lcom/parse/ParseDecoder;
    .end local v1           #fetchedObjects:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    :cond_0
    invoke-virtual {p0, v2, p2}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v3

    return-object v3

    .line 1586
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 3166
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method hasChanges()Z
    .locals 2

    .prologue
    .line 1294
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1295
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseOperationSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1296
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasOutstandingOperations()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1304
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1306
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1307
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasSameId(Lcom/parse/ParseObject;)Z
    .locals 3
    .parameter "other"

    .prologue
    .line 3751
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3752
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3755
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public increment(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 3176
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->increment(Ljava/lang/String;Ljava/lang/Number;)V

    .line 3177
    return-void
.end method

.method public increment(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .parameter "key"
    .parameter "amount"

    .prologue
    .line 3188
    new-instance v0, Lcom/parse/ParseIncrementOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseIncrementOperation;-><init>(Ljava/lang/Number;)V

    .line 3189
    .local v0, operation:Lcom/parse/ParseIncrementOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 3190
    return-void
.end method

.method isContainerObject(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"
    .parameter "object"

    .prologue
    .line 1326
    instance-of v0, p2, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/util/Map;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/parse/ParseACL;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/parse/ParseGeoPoint;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDataAvailable()Z
    .locals 2

    .prologue
    .line 3671
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3672
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v0}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3673
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 1283
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->isDirty(Z)Z

    move-result v0

    return v0
.end method

.method public isDirty(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 1318
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1319
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/ParseOperationSet;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1320
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isDirty(Z)Z
    .locals 2
    .parameter "considerChildren"

    .prologue
    .line 1287
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1288
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkForChangesToMutableContainers()V

    .line 1289
    iget-boolean v0, p0, Lcom/parse/ParseObject;->isDeleted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/parse/ParseObject;->hasDirtyChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isKeyMutable(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 3294
    const/4 v0, 0x1

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 841
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 842
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 843
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method mergeFromDiskJSON(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;)Lcom/parse/ParseObject$State;
    .locals 16
    .parameter "state"
    .parameter "object"

    .prologue
    .line 934
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/parse/ParseObject$State$Init;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    .line 939
    .local v1, builder:Lcom/parse/ParseObject$State$Init;,"Lcom/parse/ParseObject$State$Init<*>;"
    const-string v14, "id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 940
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_0

    .line 941
    const-string v14, "id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 942
    .local v9, newObjectId:Ljava/lang/String;
    invoke-virtual {v1, v9}, Lcom/parse/ParseObject$State$Init;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    .line 945
    .end local v9           #newObjectId:Ljava/lang/String;
    :cond_0
    const-string v14, "created_at"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 946
    const-string v14, "created_at"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 947
    .local v2, createdAtString:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 948
    invoke-static {}, Lcom/parse/ParseImpreciseDateFormat;->getInstance()Lcom/parse/ParseImpreciseDateFormat;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/parse/ParseImpreciseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/parse/ParseObject$State$Init;->createdAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    .line 951
    .end local v2           #createdAtString:Ljava/lang/String;
    :cond_1
    const-string v14, "updated_at"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 952
    const-string v14, "updated_at"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 953
    .local v12, updatedAtString:Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 954
    invoke-static {}, Lcom/parse/ParseImpreciseDateFormat;->getInstance()Lcom/parse/ParseImpreciseDateFormat;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/parse/ParseImpreciseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/parse/ParseObject$State$Init;->updatedAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    .line 957
    .end local v12           #updatedAtString:Ljava/lang/String;
    :cond_2
    const-string v14, "pointers"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 958
    const-string v14, "pointers"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 959
    .local v10, newPointers:Lorg/json/JSONObject;
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 960
    .local v8, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 961
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 962
    .local v7, key:Ljava/lang/String;
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 963
    .local v11, pointerArray:Lorg/json/JSONArray;
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v14

    invoke-virtual {v1, v7, v14}, Lcom/parse/ParseObject$State$Init;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 996
    .end local v1           #builder:Lcom/parse/ParseObject$State$Init;,"Lcom/parse/ParseObject$State$Init<*>;"
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v10           #newPointers:Lorg/json/JSONObject;
    .end local v11           #pointerArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v6

    .line 997
    .local v6, e:Lorg/json/JSONException;
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 968
    .end local v6           #e:Lorg/json/JSONException;
    .restart local v1       #builder:Lcom/parse/ParseObject$State$Init;,"Lcom/parse/ParseObject$State$Init<*>;"
    :cond_3
    :try_start_1
    const-string v14, "data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 969
    .local v3, data:Lorg/json/JSONObject;
    if-eqz v3, :cond_7

    .line 970
    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v5

    .line 971
    .local v5, decoder:Lcom/parse/ParseDecoder;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 972
    .restart local v8       #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 973
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 975
    .restart local v7       #key:Ljava/lang/String;
    const-string v14, "objectId"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 976
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 977
    .restart local v9       #newObjectId:Ljava/lang/String;
    invoke-virtual {v1, v9}, Lcom/parse/ParseObject$State$Init;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    goto :goto_1

    .line 980
    .end local v9           #newObjectId:Ljava/lang/String;
    :cond_4
    const-string v14, "createdAt"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 981
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v14

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/parse/ParseObject$State$Init;->createdAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    goto :goto_1

    .line 984
    :cond_5
    const-string v14, "updatedAt"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 985
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v14

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/parse/ParseObject$State$Init;->updatedAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    goto :goto_1

    .line 989
    :cond_6
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 990
    .local v13, value:Ljava/lang/Object;
    invoke-virtual {v5, v13}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 991
    .local v4, decodedObject:Ljava/lang/Object;
    invoke-virtual {v1, v7, v4}, Lcom/parse/ParseObject$State$Init;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;

    goto :goto_1

    .line 995
    .end local v4           #decodedObject:Ljava/lang/Object;
    .end local v5           #decoder:Lcom/parse/ParseDecoder;
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v13           #value:Ljava/lang/Object;
    :cond_7
    invoke-virtual {v1}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    return-object v14
.end method

.method mergeFromObject(Lcom/parse/ParseObject;)V
    .locals 3
    .parameter "other"

    .prologue
    .line 860
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 862
    if-ne p0, p1, :cond_0

    .line 863
    :try_start_0
    monitor-exit v2

    .line 875
    :goto_0
    return-void

    .line 866
    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;

    move-result-object v0

    .line 873
    .local v0, copy:Lcom/parse/ParseObject$State;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;Z)V

    .line 874
    monitor-exit v2

    goto :goto_0

    .end local v0           #copy:Lcom/parse/ParseObject$State;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method mergeFromServer(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)Lcom/parse/ParseObject$State;
    .locals 10
    .parameter "state"
    .parameter "json"
    .parameter "decoder"
    .parameter "completeData"

    .prologue
    .line 1070
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    .line 1071
    .local v1, builder:Lcom/parse/ParseObject$State$Init;,"Lcom/parse/ParseObject$State$Init<*>;"
    if-eqz p4, :cond_0

    .line 1072
    invoke-virtual {v1}, Lcom/parse/ParseObject$State$Init;->clear()Lcom/parse/ParseObject$State$Init;

    .line 1074
    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz p4, :cond_3

    :cond_1
    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v1, v8}, Lcom/parse/ParseObject$State$Init;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    .line 1076
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 1077
    .local v5, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1078
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1083
    .local v4, key:Ljava/lang/String;
    const-string v8, "__type"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "className"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1086
    const-string v8, "objectId"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1087
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1088
    .local v6, newObjectId:Ljava/lang/String;
    invoke-virtual {v1, v6}, Lcom/parse/ParseObject$State$Init;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1111
    .end local v1           #builder:Lcom/parse/ParseObject$State$Init;,"Lcom/parse/ParseObject$State$Init<*>;"
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v6           #newObjectId:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1112
    .local v3, e:Lorg/json/JSONException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 1074
    .end local v3           #e:Lorg/json/JSONException;
    .restart local v1       #builder:Lcom/parse/ParseObject$State$Init;,"Lcom/parse/ParseObject$State$Init<*>;"
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 1091
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_4
    :try_start_1
    const-string v8, "createdAt"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1092
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v8

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/parse/ParseObject$State$Init;->createdAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    goto :goto_1

    .line 1095
    :cond_5
    const-string v8, "updatedAt"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1096
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v8

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/parse/ParseObject$State$Init;->updatedAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    goto :goto_1

    .line 1099
    :cond_6
    const-string v8, "ACL"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1100
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8, p3}, Lcom/parse/ParseACL;->createACLFromJSONObject(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseACL;

    move-result-object v0

    .line 1101
    .local v0, acl:Lcom/parse/ParseACL;
    const-string v8, "ACL"

    invoke-virtual {v1, v8, v0}, Lcom/parse/ParseObject$State$Init;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;

    goto :goto_1

    .line 1105
    .end local v0           #acl:Lcom/parse/ParseACL;
    :cond_7
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1106
    .local v7, value:Ljava/lang/Object;
    invoke-virtual {p3, v7}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1107
    .local v2, decodedObject:Ljava/lang/Object;
    invoke-virtual {v1, v4, v2}, Lcom/parse/ParseObject$State$Init;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;

    goto/16 :goto_1

    .line 1110
    .end local v2           #decodedObject:Ljava/lang/Object;
    .end local v4           #key:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/Object;
    :cond_8
    invoke-virtual {v1}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    return-object v8
.end method

.method mergeREST(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    .locals 24
    .parameter "state"
    .parameter "json"
    .parameter "decoder"

    .prologue
    .line 1187
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1189
    .local v17, saveEventuallyOperationSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/parse/ParseOperationSet;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1191
    :try_start_0
    const-string v18, "__complete"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 1192
    .local v8, isComplete:Z
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    const-string v21, "__isDeletingEventually"

    aput-object v21, v18, v20

    const/16 v20, 0x1

    const-string v21, "isDeletingEventually"

    aput-object v21, v18, v20

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/parse/ParseJSONUtils;->getInt(Lorg/json/JSONObject;Ljava/util/List;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parse/ParseObject;->isDeletingEventually:I

    .line 1196
    const-string v18, "__operations"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 1198
    .local v15, operations:Lorg/json/JSONArray;
    invoke-direct/range {p0 .. p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v12

    .line 1199
    .local v12, newerOperations:Lcom/parse/ParseOperationSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->clear()V

    .line 1203
    const/4 v4, 0x0

    .line 1204
    .local v4, current:Lcom/parse/ParseOperationSet;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_3

    .line 1205
    invoke-virtual {v15, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 1206
    .local v14, operationSetJSON:Lorg/json/JSONObject;
    move-object/from16 v0, p3

    invoke-static {v14, v0}, Lcom/parse/ParseOperationSet;->fromRest(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseOperationSet;

    move-result-object v13

    .line 1208
    .local v13, operationSet:Lcom/parse/ParseOperationSet;
    invoke-virtual {v13}, Lcom/parse/ParseOperationSet;->isSaveEventually()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1209
    if-eqz v4, :cond_0

    .line 1210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1211
    const/4 v4, 0x0

    .line 1213
    :cond_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1204
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1218
    :cond_1
    if-eqz v4, :cond_2

    .line 1219
    invoke-virtual {v13, v4}, Lcom/parse/ParseOperationSet;->mergeFrom(Lcom/parse/ParseOperationSet;)V

    .line 1221
    :cond_2
    move-object v4, v13

    goto :goto_1

    .line 1223
    .end local v13           #operationSet:Lcom/parse/ParseOperationSet;
    .end local v14           #operationSetJSON:Lorg/json/JSONObject;
    :cond_3
    if-eqz v4, :cond_4

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1228
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/parse/ParseOperationSet;->mergeFrom(Lcom/parse/ParseOperationSet;)V

    .line 1233
    const/4 v10, 0x0

    .line 1234
    .local v10, mergeServerData:Z
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v18, v20, v22

    if-gez v18, :cond_7

    .line 1235
    const/4 v10, 0x1

    .line 1243
    :cond_5
    :goto_2
    if-eqz v10, :cond_6

    .line 1245
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    const-string v21, "__complete"

    aput-object v21, v18, v20

    const/16 v20, 0x1

    const-string v21, "__isDeletingEventually"

    aput-object v21, v18, v20

    const/16 v20, 0x2

    const-string v21, "isDeletingEventually"

    aput-object v21, v18, v20

    const/16 v20, 0x3

    const-string v21, "__operations"

    aput-object v21, v18, v20

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/parse/ParseJSONUtils;->create(Lorg/json/JSONObject;Ljava/util/Collection;)Lorg/json/JSONObject;

    move-result-object v9

    .line 1249
    .local v9, mergeJSON:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v9, v2, v8}, Lcom/parse/ParseObject;->mergeFromServer(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)Lcom/parse/ParseObject$State;

    move-result-object v11

    .line 1250
    .local v11, newState:Lcom/parse/ParseObject$State;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1255
    .end local v9           #mergeJSON:Lorg/json/JSONObject;
    .end local v11           #newState:Lcom/parse/ParseObject$State;
    :cond_6
    :try_start_1
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1258
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/parse/ParseOperationSet;

    .line 1259
    .restart local v13       #operationSet:Lcom/parse/ParseOperationSet;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/parse/ParseObject;->enqueueSaveEventuallyOperationAsync(Lcom/parse/ParseOperationSet;)Lbolts/Task;

    goto :goto_3

    .line 1236
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v13           #operationSet:Lcom/parse/ParseOperationSet;
    :cond_7
    :try_start_2
    const-string v18, "updatedAt"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1237
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v18

    const-string v20, "updatedAt"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v16

    .line 1238
    .local v16, otherUpdatedAt:Ljava/util/Date;
    new-instance v18, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v18

    if-gez v18, :cond_5

    .line 1239
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1252
    .end local v4           #current:Lcom/parse/ParseOperationSet;
    .end local v6           #i:I
    .end local v8           #isComplete:Z
    .end local v10           #mergeServerData:Z
    .end local v12           #newerOperations:Lcom/parse/ParseOperationSet;
    .end local v15           #operations:Lorg/json/JSONArray;
    .end local v16           #otherUpdatedAt:Ljava/util/Date;
    :catch_0
    move-exception v5

    .line 1253
    .local v5, e:Lorg/json/JSONException;
    :try_start_3
    new-instance v18, Ljava/lang/RuntimeException;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 1255
    .end local v5           #e:Lorg/json/JSONException;
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v18

    .line 1261
    .restart local v4       #current:Lcom/parse/ParseOperationSet;
    .restart local v6       #i:I
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #isComplete:Z
    .restart local v10       #mergeServerData:Z
    .restart local v12       #newerOperations:Lcom/parse/ParseOperationSet;
    .restart local v15       #operations:Lorg/json/JSONArray;
    :cond_8
    return-void
.end method

.method needsDefaultACL()Z
    .locals 1

    .prologue
    .line 3804
    const/4 v0, 0x1

    return v0
.end method

.method newStateBuilder(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseObject$State$Init",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 760
    new-instance v0, Lcom/parse/ParseObject$State$Builder;

    invoke-direct {v0, p1}, Lcom/parse/ParseObject$State$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V
    .locals 7
    .parameter "key"
    .parameter "operation"

    .prologue
    .line 3108
    iget-object v5, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 3109
    :try_start_0
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3110
    .local v3, oldValue:Ljava/lang/Object;
    invoke-interface {p2, v3, p1}, Lcom/parse/ParseFieldOperation;->apply(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 3111
    .local v1, newValue:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 3112
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3117
    :goto_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseFieldOperation;

    .line 3118
    .local v2, oldOperation:Lcom/parse/ParseFieldOperation;
    invoke-interface {p2, v2}, Lcom/parse/ParseFieldOperation;->mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;

    move-result-object v0

    .line 3119
    .local v0, newOperation:Lcom/parse/ParseFieldOperation;
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/parse/ParseOperationSet;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3121
    invoke-direct {p0, p1, v1}, Lcom/parse/ParseObject;->checkpointMutableContainer(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3122
    iget-object v4, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3123
    monitor-exit v5

    .line 3124
    return-void

    .line 3114
    .end local v0           #newOperation:Lcom/parse/ParseFieldOperation;
    .end local v2           #oldOperation:Lcom/parse/ParseFieldOperation;
    :cond_0
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3123
    .end local v1           #newValue:Ljava/lang/Object;
    .end local v3           #oldValue:Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method performPut(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3143
    if-nez p1, :cond_0

    .line 3144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3147
    :cond_0
    if-nez p2, :cond_1

    .line 3148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3151
    :cond_1
    invoke-static {p2}, Lcom/parse/ParseEncoder;->isValidType(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type for value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3155
    :cond_2
    new-instance v0, Lcom/parse/ParseSetOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 3156
    return-void
.end method

.method performRemove(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 3259
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3260
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3262
    .local v0, object:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 3263
    invoke-static {}, Lcom/parse/ParseDeleteOperation;->getInstance()Lcom/parse/ParseDeleteOperation;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 3265
    :cond_0
    monitor-exit v2

    .line 3266
    return-void

    .line 3265
    .end local v0           #object:Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pin()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 4350
    invoke-virtual {p0}, Lcom/parse/ParseObject;->pinInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 4351
    return-void
.end method

.method public pin(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 4298
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->pinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 4299
    return-void
.end method

.method public pinInBackground()Lbolts/Task;
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
    .line 4333
    const-string v0, "_default"

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/parse/ParseObject;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public pinInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .parameter "name"
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
    .line 4278
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/parse/ParseObject;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method pinInBackground(Ljava/lang/String;Z)Lbolts/Task;
    .locals 2
    .parameter "name"
    .parameter "includeAllChildren"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4282
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/parse/ParseObject;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public pinInBackground(Lcom/parse/SaveCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 4316
    invoke-virtual {p0}, Lcom/parse/ParseObject;->pinInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 4317
    return-void
.end method

.method public pinInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 1
    .parameter "name"
    .parameter "callback"

    .prologue
    .line 4262
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->pinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 4263
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3137
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkKeyIsMutable(Ljava/lang/String;)V

    .line 3139
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseObject;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3140
    return-void
.end method

.method public final refresh()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2175
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetch()Lcom/parse/ParseObject;

    .line 2176
    return-void
.end method

.method public final refreshInBackground(Lcom/parse/RefreshCallback;)V
    .locals 1
    .parameter "callback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2189
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 2190
    return-void
.end method

.method registerSaveListener(Lcom/parse/GetCallback;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/GetCallback",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3759
    .local p1, callback:Lcom/parse/GetCallback;,"Lcom/parse/GetCallback<Lcom/parse/ParseObject;>;"
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3760
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    invoke-virtual {v0, p1}, Lcom/parse/ParseMulticastDelegate;->subscribe(Lcom/parse/ParseCallback2;)V

    .line 3761
    monitor-exit v1

    .line 3762
    return-void

    .line 3761
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 3253
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkKeyIsMutable(Ljava/lang/String;)V

    .line 3255
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->performRemove(Ljava/lang/String;)V

    .line 3256
    return-void
.end method

.method public removeAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 3280
    .local p2, values:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkKeyIsMutable(Ljava/lang/String;)V

    .line 3282
    new-instance v0, Lcom/parse/ParseRemoveOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseRemoveOperation;-><init>(Ljava/util/Collection;)V

    .line 3283
    .local v0, operation:Lcom/parse/ParseRemoveOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 3284
    return-void
.end method

.method revert()V
    .locals 2

    .prologue
    .line 891
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 892
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseOperationSet;->clear()V

    .line 893
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 894
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildDataAvailability()V

    .line 895
    invoke-direct {p0}, Lcom/parse/ParseObject;->checkpointAllMutableContainers()V

    .line 896
    monitor-exit v1

    .line 897
    return-void

    .line 896
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method revert(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 878
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 879
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/ParseOperationSet;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 881
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildDataAvailability()V

    .line 882
    invoke-direct {p0}, Lcom/parse/ParseObject;->checkpointAllMutableContainers()V

    .line 883
    monitor-exit v1

    .line 884
    return-void

    .line 883
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final save()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1694
    invoke-virtual {p0}, Lcom/parse/ParseObject;->saveInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 1695
    return-void
.end method

.method saveAsync(Lcom/parse/ParseOperationSet;Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .parameter "operationSet"
    .parameter "sessionToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1811
    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2}, Lcom/parse/ParseObject;->currentSaveCommand(Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    .line 1813
    .local v0, command:Lcom/parse/ParseRESTCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->executeAsync()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method saveAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .parameter "sessionToken"
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
    .line 1749
    iget-object v0, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseObject$12;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseObject$12;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method saveAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 4
    .parameter "sessionToken"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1758
    .local p2, toAwait:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDirty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1759
    const/4 v2, 0x0

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    .line 1781
    :goto_0
    return-object v2

    .line 1763
    :cond_0
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1764
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->updateBeforeSave()V

    .line 1765
    invoke-virtual {p0}, Lcom/parse/ParseObject;->validateSave()V

    .line 1766
    invoke-virtual {p0}, Lcom/parse/ParseObject;->startSave()Lcom/parse/ParseOperationSet;

    move-result-object v0

    .line 1767
    .local v0, operations:Lcom/parse/ParseOperationSet;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1770
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1778
    :try_start_1
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-static {v2, p1}, Lcom/parse/ParseObject;->deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    .line 1779
    .local v1, task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1781
    invoke-static {p2}, Lcom/parse/TaskQueue;->waitFor(Lbolts/Task;)Lbolts/Continuation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$14;

    invoke-direct {v3, p0, v0, p1}, Lcom/parse/ParseObject$14;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$13;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseObject$13;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    goto :goto_0

    .line 1767
    .end local v0           #operations:Lcom/parse/ParseOperationSet;
    .end local v1           #task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1779
    .restart local v0       #operations:Lcom/parse/ParseOperationSet;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public final saveEventually()Lbolts/Task;
    .locals 14
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
    const/4 v12, 0x0

    .line 1863
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDirty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1864
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v11

    invoke-virtual {v11}, Lcom/parse/ParseEventuallyQueue;->fakeObjectUpdate()V

    .line 1865
    invoke-static {v12}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v3

    .line 1937
    :goto_0
    return-object v3

    .line 1872
    :cond_0
    iget-object v12, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v12

    .line 1873
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->updateBeforeSave()V

    .line 1880
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1881
    .local v10, unsavedChildren:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    iget-object v11, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const/4 v13, 0x0

    invoke-static {v11, v10, v13}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1883
    const/4 v5, 0x0

    .line 1884
    .local v5, localId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1

    .line 1885
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v5

    .line 1888
    :cond_1
    invoke-virtual {p0}, Lcom/parse/ParseObject;->startSave()Lcom/parse/ParseOperationSet;

    move-result-object v7

    .line 1889
    .local v7, operationSet:Lcom/parse/ParseOperationSet;
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/parse/ParseOperationSet;->setIsSaveEventually(Z)V

    .line 1892
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1896
    .local v9, sessionToken:Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/parse/PointerOrLocalIdEncoder;->get()Lcom/parse/PointerOrLocalIdEncoder;

    move-result-object v11

    invoke-direct {p0, v7, v11, v9}, Lcom/parse/ParseObject;->currentSaveCommand(Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v1

    .line 1900
    .local v1, command:Lcom/parse/ParseRESTCommand;
    invoke-virtual {v1, v5}, Lcom/parse/ParseRESTCommand;->setLocalId(Ljava/lang/String;)V

    .line 1903
    invoke-virtual {v7}, Lcom/parse/ParseOperationSet;->getUUID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/parse/ParseRESTCommand;->setOperationSetUUID(Ljava/lang/String;)V

    .line 1906
    invoke-virtual {v1}, Lcom/parse/ParseRESTCommand;->retainLocalIds()V

    .line 1908
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseObject;

    .line 1909
    .local v6, object:Lcom/parse/ParseObject;
    invoke-virtual {v6}, Lcom/parse/ParseObject;->saveEventually()Lbolts/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/parse/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1911
    .end local v1           #command:Lcom/parse/ParseRESTCommand;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #object:Lcom/parse/ParseObject;
    :catch_0
    move-exception v2

    .line 1912
    .local v2, exception:Lcom/parse/ParseException;
    :try_start_2
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v13, "Unable to saveEventually."

    invoke-direct {v11, v13, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 1914
    .end local v2           #exception:Lcom/parse/ParseException;
    .end local v5           #localId:Ljava/lang/String;
    .end local v7           #operationSet:Lcom/parse/ParseOperationSet;
    .end local v9           #sessionToken:Ljava/lang/String;
    .end local v10           #unsavedChildren:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .restart local v1       #command:Lcom/parse/ParseRESTCommand;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #localId:Ljava/lang/String;
    .restart local v7       #operationSet:Lcom/parse/ParseOperationSet;
    .restart local v9       #sessionToken:Ljava/lang/String;
    .restart local v10       #unsavedChildren:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    :cond_2
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1917
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v0

    .line 1918
    .local v0, cache:Lcom/parse/ParseEventuallyQueue;
    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseEventuallyQueue;->enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v8

    .line 1919
    .local v8, runEventuallyTask:Lbolts/Task;,"Lbolts/Task<Lorg/json/JSONObject;>;"
    invoke-direct {p0, v7}, Lcom/parse/ParseObject;->enqueueSaveEventuallyOperationAsync(Lcom/parse/ParseOperationSet;)Lbolts/Task;

    .line 1922
    invoke-virtual {v1}, Lcom/parse/ParseRESTCommand;->releaseLocalIds()V

    .line 1925
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1927
    invoke-virtual {v8}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v3

    .local v3, handleSaveResultTask:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    goto :goto_0

    .line 1929
    .end local v3           #handleSaveResultTask:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    :cond_3
    new-instance v11, Lcom/parse/ParseObject$15;

    invoke-direct {v11, p0, v7}, Lcom/parse/ParseObject$15;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v8, v11}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    .restart local v3       #handleSaveResultTask:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    goto/16 :goto_0
.end method

.method public final saveEventually(Lcom/parse/SaveCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 1844
    invoke-virtual {p0}, Lcom/parse/ParseObject;->saveEventually()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 1845
    return-void
.end method

.method public final saveInBackground()Lbolts/Task;
    .locals 2
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
    .line 1704
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$11;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$11;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$10;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$10;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public final saveInBackground(Lcom/parse/SaveCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 1824
    invoke-virtual {p0}, Lcom/parse/ParseObject;->saveInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 1825
    return-void
.end method

.method saveToDisk(Ljava/lang/String;)V
    .locals 4
    .parameter "filename"

    .prologue
    .line 631
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ParseObject#saveToDisk is not allowed when OfflineStore is enabled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 634
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 635
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/parse/ParseObject;->toJSONObjectForDataFile(Lcom/parse/ParseObject$State;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 637
    .local v0, json:Lorg/json/JSONObject;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/parse/ParseFileUtils;->writeJSONObjectToFile(Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 641
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 642
    return-void

    .line 641
    .end local v0           #json:Lorg/json/JSONObject;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 638
    .restart local v0       #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setACL(Lcom/parse/ParseACL;)V
    .locals 1
    .parameter "acl"

    .prologue
    .line 3661
    const-string v0, "ACL"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3662
    return-void
.end method

.method setDefaultValues()V
    .locals 1

    .prologue
    .line 3794
    invoke-virtual {p0}, Lcom/parse/ParseObject;->needsDefaultACL()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/parse/ParseACL;->getDefaultACL()Lcom/parse/ParseACL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3795
    invoke-static {}, Lcom/parse/ParseACL;->getDefaultACL()Lcom/parse/ParseACL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->setACL(Lcom/parse/ParseACL;)V

    .line 3797
    :cond_0
    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 3
    .parameter "newObjectId"

    .prologue
    .line 1416
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1417
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    .line 1418
    .local v0, oldObjectId:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/parse/ParseTextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1419
    monitor-exit v2

    .line 1426
    :goto_0
    return-void

    .line 1423
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v1}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/parse/ParseObject$State$Init;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    .line 1424
    invoke-direct {p0, v0, p1}, Lcom/parse/ParseObject;->notifyObjectIdChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    monitor-exit v2

    goto :goto_0

    .end local v0           #oldObjectId:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setState(Lcom/parse/ParseObject$State;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 775
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 776
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;Z)V

    .line 777
    monitor-exit v1

    .line 778
    return-void

    .line 777
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startSave()Lcom/parse/ParseOperationSet;
    .locals 4

    .prologue
    .line 1675
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1676
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    .line 1677
    .local v0, currentOperations:Lcom/parse/ParseOperationSet;
    iget-object v1, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    new-instance v3, Lcom/parse/ParseOperationSet;

    invoke-direct {v3}, Lcom/parse/ParseOperationSet;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1678
    monitor-exit v2

    return-object v0

    .line 1679
    .end local v0           #currentOperations:Lcom/parse/ParseOperationSet;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method toJSONObjectForDataFile(Lcom/parse/ParseObject$State;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 12
    .parameter
    .parameter "objectEncoder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject$State;",
            ">(TT;",
            "Lcom/parse/ParseEncoder;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 1500
    .local p1, state:Lcom/parse/ParseObject$State;,"TT;"
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1501
    .local v5, objectJSON:Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1505
    .local v0, dataJSON:Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1506
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/parse/ParseObject$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1507
    .local v4, object:Ljava/lang/Object;
    invoke-virtual {p2, v4}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1526
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #object:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 1527
    .local v1, e:Lorg/json/JSONException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "could not serialize object to JSON"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1512
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 1513
    const-string v6, "createdAt"

    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Lcom/parse/ParseDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1516
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 1517
    const-string v6, "updatedAt"

    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Lcom/parse/ParseDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1520
    :cond_2
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1521
    const-string v6, "objectId"

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1524
    :cond_3
    const-string v6, "data"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1525
    const-string v6, "classname"

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->className()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1530
    return-object v5
.end method

.method toJSONObjectForSaving(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 7
    .parameter
    .parameter "operations"
    .parameter "objectEncoder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject$State;",
            ">(TT;",
            "Lcom/parse/ParseOperationSet;",
            "Lcom/parse/ParseEncoder;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 1549
    .local p1, state:Lcom/parse/ParseObject$State;,"TT;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1553
    .local v3, objectJSON:Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p2}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1554
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p2, v2}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseFieldOperation;

    .line 1555
    .local v4, operation:Lcom/parse/ParseFieldOperation;
    invoke-virtual {p3, v4}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1563
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #operation:Lcom/parse/ParseFieldOperation;
    :catch_0
    move-exception v0

    .line 1564
    .local v0, e:Lorg/json/JSONException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "could not serialize object to JSON"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1560
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1561
    const-string v5, "objectId"

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1567
    :cond_1
    return-object v3
.end method

.method toRest(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 4
    .parameter "encoder"

    .prologue
    .line 1126
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1127
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v1

    .line 1128
    .local v1, state:Lcom/parse/ParseObject$State;
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    .line 1129
    .local v0, operationSetQueue:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    invoke-virtual {p0, v1, v0, p1}, Lcom/parse/ParseObject;->toRest(Lcom/parse/ParseObject$State;Ljava/util/List;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 1130
    .end local v0           #operationSetQueue:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    .end local v1           #state:Lcom/parse/ParseObject$State;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method toRest(Lcom/parse/ParseObject$State;Ljava/util/List;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 16
    .parameter "state"
    .parameter
    .parameter "objectEncoder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseOperationSet;",
            ">;",
            "Lcom/parse/ParseEncoder;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 1135
    .local p2, operationSetQueue:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v10

    .line 1136
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/parse/ParseObject;->checkForChangesToMutableContainers()V

    .line 1139
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1143
    .local v4, json:Lorg/json/JSONObject;
    :try_start_1
    const-string v9, "className"

    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseObject$State;->className()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1144
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1145
    const-string v9, "objectId"

    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1147
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-lez v9, :cond_1

    .line 1148
    const-string v9, "createdAt"

    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v11

    new-instance v12, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v14

    invoke-direct {v12, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Lcom/parse/ParseDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1151
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-lez v9, :cond_2

    .line 1152
    const-string v9, "updatedAt"

    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v11

    new-instance v12, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v14

    invoke-direct {v12, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Lcom/parse/ParseDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1155
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseObject$State;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1156
    .local v5, key:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/parse/ParseObject$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 1157
    .local v8, value:Ljava/lang/Object;
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1173
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 1174
    .local v2, e:Lorg/json/JSONException;
    :try_start_2
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v11, "could not serialize object to JSON"

    invoke-direct {v9, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1178
    .end local v2           #e:Lorg/json/JSONException;
    .end local v4           #json:Lorg/json/JSONObject;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 1163
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #json:Lorg/json/JSONObject;
    :cond_3
    :try_start_3
    const-string v9, "__complete"

    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v11

    invoke-virtual {v4, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1164
    const-string v9, "__isDeletingEventually"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/parse/ParseObject;->isDeletingEventually:I

    invoke-virtual {v4, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1167
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 1168
    .local v7, operations:Lorg/json/JSONArray;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseOperationSet;

    .line 1169
    .local v6, operationSet:Lcom/parse/ParseOperationSet;
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/parse/ParseOperationSet;->toRest(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 1171
    .end local v6           #operationSet:Lcom/parse/ParseOperationSet;
    :cond_4
    const-string v9, "__operations"

    invoke-virtual {v4, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1177
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v4
.end method

.method public unpin()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 4417
    invoke-virtual {p0}, Lcom/parse/ParseObject;->unpinInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 4418
    return-void
.end method

.method public unpin(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 4382
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->unpinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 4383
    return-void
.end method

.method public unpinInBackground()Lbolts/Task;
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
    .line 4407
    const-string v0, "_default"

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/parse/ParseObject;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public unpinInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .parameter "name"
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
    .line 4373
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/parse/ParseObject;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public unpinInBackground(Lcom/parse/DeleteCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 4395
    invoke-virtual {p0}, Lcom/parse/ParseObject;->unpinInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 4396
    return-void
.end method

.method public unpinInBackground(Ljava/lang/String;Lcom/parse/DeleteCallback;)V
    .locals 1
    .parameter "name"
    .parameter "callback"

    .prologue
    .line 4362
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->unpinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 4363
    return-void
.end method

.method unregisterSaveListener(Lcom/parse/GetCallback;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/GetCallback",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3765
    .local p1, callback:Lcom/parse/GetCallback;,"Lcom/parse/GetCallback<Lcom/parse/ParseObject;>;"
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3766
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    invoke-virtual {v0, p1}, Lcom/parse/ParseMulticastDelegate;->unsubscribe(Lcom/parse/ParseCallback2;)V

    .line 3767
    monitor-exit v1

    .line 3768
    return-void

    .line 3767
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateBeforeSave()V
    .locals 0

    .prologue
    .line 1994
    return-void
.end method

.method validateDelete()V
    .locals 0

    .prologue
    .line 2308
    return-void
.end method

.method validateSave()V
    .locals 0

    .prologue
    .line 1684
    return-void
.end method
