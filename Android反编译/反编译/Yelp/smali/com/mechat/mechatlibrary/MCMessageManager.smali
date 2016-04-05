.class public Lcom/mechat/mechatlibrary/MCMessageManager;
.super Ljava/lang/Object;
.source "MCMessageManager.java"


# static fields
.field private static final NEW_MESSAGE_RECEIVED_ACTION:Ljava/lang/String; = "new_message_received_action"

.field private static final RE_ALLOCATION_EVENT_ACTION:Ljava/lang/String; = "re_allocation_action"

.field private static final SERVICE_INPUTTING_ACTION:Ljava/lang/String; = "service_inputting_action"

.field private static final USER_IS_REDIRECTED_EVENT_ACTION:Ljava/lang/String; = "user_is_redirected_action"

.field private static instance:Lcom/mechat/mechatlibrary/MCMessageManager;


# instance fields
.field private cacheEventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mechat/mechatlibrary/bean/MCEvent;",
            ">;"
        }
    .end annotation
.end field

.field private cacheMessageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mechat/mechatlibrary/bean/MCMessage;",
            ">;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;

.field private preEventId:Ljava/lang/String;

.field private preMsgId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->cacheMessageMap:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->cacheEventMap:Ljava/util/Map;

    .line 27
    invoke-static {p1}, Lcom/mechat/mechatlibrary/utils/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->packageName:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->preMsgId:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->preEventId:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/mechat/mechatlibrary/MCMessageManager;->instance:Lcom/mechat/mechatlibrary/MCMessageManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 33
    sget-object v0, Lcom/mechat/mechatlibrary/MCMessageManager;->instance:Lcom/mechat/mechatlibrary/MCMessageManager;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/mechat/mechatlibrary/MCMessageManager;

    invoke-direct {v0, p0}, Lcom/mechat/mechatlibrary/MCMessageManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mechat/mechatlibrary/MCMessageManager;->instance:Lcom/mechat/mechatlibrary/MCMessageManager;

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method protected addEvent(Lcom/mechat/mechatlibrary/bean/MCEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->cacheEventMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCEvent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method protected addMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->cacheMessageMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public getEvent(Ljava/lang/String;)Lcom/mechat/mechatlibrary/bean/MCEvent;
    .locals 2
    .parameter "eventId"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->cacheEventMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mechat/mechatlibrary/bean/MCEvent;

    .line 95
    .local v0, event:Lcom/mechat/mechatlibrary/bean/MCEvent;
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->preEventId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->preEventId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->cacheEventMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->preEventId:Ljava/lang/String;

    .line 99
    return-object v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/mechat/mechatlibrary/bean/MCMessage;
    .locals 3
    .parameter "msgId"

    .prologue
    .line 79
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->cacheMessageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mechat/mechatlibrary/bean/MCMessage;

    .line 81
    .local v0, message:Lcom/mechat/mechatlibrary/bean/MCMessage;
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->preMsgId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->preMsgId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->cacheMessageMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->preMsgId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->preMsgId:Ljava/lang/String;

    .line 85
    return-object v0
.end method

.method public getNewMessageReceivedAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new_message_received_action"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReAllocationEventAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "re_allocation_action"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInputtingAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service_inputting_action"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserIsRedirectedEventAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "user_is_redirected_action"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCMessageManager;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
