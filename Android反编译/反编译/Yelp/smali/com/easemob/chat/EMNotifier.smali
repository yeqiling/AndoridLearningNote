.class public Lcom/easemob/chat/EMNotifier;
.super Ljava/lang/Object;


# static fields
.field private static synthetic $SWITCH_TABLE$com$easemob$chat$EMMessage$Type:[I = null

.field private static final TAG:Ljava/lang/String; = "notify"

.field private static instance:Lcom/easemob/chat/EMNotifier;

.field private static final msg_ch:[Ljava/lang/String;

.field private static final msg_eng:[Ljava/lang/String;

.field private static notifyID:I

.field static ringtone:Landroid/media/Ringtone;


# instance fields
.field private appContext:Landroid/content/Context;

.field private appName:Ljava/lang/String;

.field private audioManager:Landroid/media/AudioManager;

.field private filteredEventListeners:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/easemob/EMNotifierEvent$Event;",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/EMEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private fromUsers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastNotifiyTime:J

.field private msgs:[Ljava/lang/String;

.field private notificationManager:Landroid/app/NotificationManager;

.field private notificationNum:I

.field private notifierThread:Ljava/util/concurrent/ExecutorService;

.field private onMessageNotifyListener:Lcom/easemob/chat/OnMessageNotifyListener;

.field private packageName:Ljava/lang/String;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic $SWITCH_TABLE$com$easemob$chat$EMMessage$Type()[I
    .locals 3

    sget-object v0, Lcom/easemob/chat/EMNotifier;->$SWITCH_TABLE$com$easemob$chat$EMMessage$Type:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/easemob/chat/EMMessage$Type;->values()[Lcom/easemob/chat/EMMessage$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->CMD:Lcom/easemob/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->FILE:Lcom/easemob/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->IMAGE:Lcom/easemob/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->LOCATION:Lcom/easemob/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->TXT:Lcom/easemob/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->VIDEO:Lcom/easemob/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->VOICE:Lcom/easemob/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/easemob/chat/EMNotifier;->$SWITCH_TABLE$com$easemob$chat$EMMessage$Type:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/chat/EMNotifier;->ringtone:Landroid/media/Ringtone;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sent a message"

    aput-object v1, v0, v3

    const-string v1, "sent a picture"

    aput-object v1, v0, v4

    const-string v1, "sent a voice"

    aput-object v1, v0, v5

    const-string v1, "sent location message"

    aput-object v1, v0, v6

    const-string v1, "sent a video"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sent a file"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "%1 contacts sent %2 messages"

    aput-object v2, v0, v1

    sput-object v0, Lcom/easemob/chat/EMNotifier;->msg_eng:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u53d1\u6765\u4e00\u6761\u6d88\u606f"

    aput-object v1, v0, v3

    const-string v1, "\u53d1\u6765\u4e00\u5f20\u56fe\u7247"

    aput-object v1, v0, v4

    const-string v1, "\u53d1\u6765\u4e00\u6bb5\u8bed\u97f3"

    aput-object v1, v0, v5

    const-string v1, "\u53d1\u6765\u4f4d\u7f6e\u4fe1\u606f"

    aput-object v1, v0, v6

    const-string v1, "\u53d1\u6765\u4e00\u4e2a\u89c6\u9891"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u53d1\u6765\u4e00\u4e2a\u6587\u4ef6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "%1\u4e2a\u8054\u7cfb\u4eba\u53d1\u6765%2\u6761\u6d88\u606f"

    aput-object v2, v0, v1

    sput-object v0, Lcom/easemob/chat/EMNotifier;->msg_ch:[Ljava/lang/String;

    const/16 v0, 0x155

    sput v0, Lcom/easemob/chat/EMNotifier;->notifyID:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/EMNotifier;->notificationManager:Landroid/app/NotificationManager;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMNotifier;->fromUsers:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/easemob/chat/EMNotifier;->notificationNum:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMNotifier;->filteredEventListeners:Ljava/util/Hashtable;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMNotifier;->notifierThread:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/easemob/chat/EMNotifier;->appContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->notificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/easemob/chat/EMNotifier;->notificationManager:Landroid/app/NotificationManager;

    :cond_0
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMChatOptions;->onMessageNotifyListener:Lcom/easemob/chat/OnMessageNotifyListener;

    iput-object v0, p0, Lcom/easemob/chat/EMNotifier;->onMessageNotifyListener:Lcom/easemob/chat/OnMessageNotifyListener;

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMNotifier;->appName:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/easemob/chat/EMNotifier;->packageName:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/easemob/chat/EMNotifier;->msg_ch:[Ljava/lang/String;

    iput-object v0, p0, Lcom/easemob/chat/EMNotifier;->msgs:[Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->appContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/easemob/chat/EMNotifier;->audioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->appContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/easemob/chat/EMNotifier;->vibrator:Landroid/os/Vibrator;

    return-void

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/easemob/chat/EMNotifier;->appName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/easemob/chat/EMNotifier;->msg_eng:[Ljava/lang/String;

    iput-object v0, p0, Lcom/easemob/chat/EMNotifier;->msgs:[Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/easemob/chat/EMNotifier;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->filteredEventListeners:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$1(Lcom/easemob/chat/EMNotifier;Lcom/easemob/EMNotifierEvent$Event;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMNotifier;->containsType(Lcom/easemob/EMNotifierEvent$Event;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/easemob/chat/EMNotifier;Ljava/util/Iterator;Lcom/easemob/EMNotifierEvent$Event;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/easemob/chat/EMNotifier;->publishEvent(Ljava/util/Iterator;Lcom/easemob/EMNotifierEvent$Event;Ljava/lang/Object;)V

    return-void
.end method

.method private containsType(Lcom/easemob/EMNotifierEvent$Event;)Z
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->filteredEventListeners:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/easemob/chat/EMNotifier;
    .locals 2

    const-class v1, Lcom/easemob/chat/EMNotifier;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/easemob/chat/EMNotifier;->instance:Lcom/easemob/chat/EMNotifier;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/chat/EMNotifier;

    invoke-direct {v0, p0}, Lcom/easemob/chat/EMNotifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/easemob/chat/EMNotifier;->instance:Lcom/easemob/chat/EMNotifier;

    sget-object v0, Lcom/easemob/chat/EMNotifier;->instance:Lcom/easemob/chat/EMNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/easemob/chat/EMNotifier;->instance:Lcom/easemob/chat/EMNotifier;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private publishEvent(Ljava/util/Iterator;Lcom/easemob/EMNotifierEvent$Event;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/easemob/EMEventListener;",
            ">;",
            "Lcom/easemob/EMNotifierEvent$Event;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/easemob/EMNotifierEvent;

    invoke-direct {v1}, Lcom/easemob/EMNotifierEvent;-><init>()V

    invoke-virtual {v1, p3}, Lcom/easemob/EMNotifierEvent;->setEventData(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/easemob/EMNotifierEvent;->setEvent(Lcom/easemob/EMNotifierEvent$Event;)V

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/EMEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/easemob/EMEventListener;->onEvent(Lcom/easemob/EMNotifierEvent;)V

    goto :goto_0
.end method

.method private registerEventListener(Lcom/easemob/EMEventListener;Lcom/easemob/EMNotifierEvent$Event;)V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->filteredEventListeners:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->filteredEventListeners:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->filteredEventListeners:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private remove(Ljava/util/List;Lcom/easemob/EMEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/EMEventListener;",
            ">;",
            "Lcom/easemob/EMEventListener;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/EMEventListener;

    if-ne v0, p2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private sendNotification(Lcom/easemob/chat/EMMessage;)V
    .locals 8

    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->from:Lcom/easemob/chat/EMContact;

    invoke-virtual {v0}, Lcom/easemob/chat/EMContact;->getNick()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/easemob/chat/EMNotifier;->$SWITCH_TABLE$com$easemob$chat$EMMessage$Type()[I

    move-result-object v0

    iget-object v1, p1, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMChatOptions;->onMessageNotifyListener:Lcom/easemob/chat/OnMessageNotifyListener;

    iput-object v0, p0, Lcom/easemob/chat/EMNotifier;->onMessageNotifyListener:Lcom/easemob/chat/OnMessageNotifyListener;

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->onMessageNotifyListener:Lcom/easemob/chat/OnMessageNotifyListener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->onMessageNotifyListener:Lcom/easemob/chat/OnMessageNotifyListener;

    invoke-interface {v1, p1}, Lcom/easemob/chat/OnMessageNotifyListener;->onNewMessageNotify(Lcom/easemob/chat/EMMessage;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->onMessageNotifyListener:Lcom/easemob/chat/OnMessageNotifyListener;

    invoke-interface {v1, p1}, Lcom/easemob/chat/OnMessageNotifyListener;->onSetNotificationTitle(Lcom/easemob/chat/EMMessage;)Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_0

    move-object v2, v3

    :cond_0
    if-eqz v1, :cond_4

    move-object v3, v2

    move-object v2, v1

    :goto_1
    new-instance v0, Lcom/easemob/chat/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/easemob/chat/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v1}, Lcom/easemob/chat/NotificationCompat$Builder;->setSmallIcon(I)Lcom/easemob/chat/NotificationCompat$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/easemob/chat/NotificationCompat$Builder;->setWhen(J)Lcom/easemob/chat/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/easemob/chat/NotificationCompat$Builder;

    move-result-object v4

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/easemob/chat/EMChatOptions;->onNotificationClickListener:Lcom/easemob/chat/OnNotificationClickListener;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMChatOptions;->onNotificationClickListener:Lcom/easemob/chat/OnNotificationClickListener;

    invoke-interface {v0, p1}, Lcom/easemob/chat/OnNotificationClickListener;->onNotificationClick(Lcom/easemob/chat/EMMessage;)Landroid/content/Intent;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->appContext:Landroid/content/Context;

    sget v5, Lcom/easemob/chat/EMNotifier;->notifyID:I

    const/high16 v6, 0x1000

    invoke-static {v1, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iget v0, p0, Lcom/easemob/chat/EMNotifier;->notificationNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/easemob/chat/EMNotifier;->notificationNum:I

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->fromUsers:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->fromUsers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->msgs:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v0, v0, v6

    const-string v6, "%1"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "%2"

    iget v7, p0, Lcom/easemob/chat/EMNotifier;->notificationNum:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/easemob/chat/EMNotifier;->onMessageNotifyListener:Lcom/easemob/chat/OnMessageNotifyListener;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/easemob/chat/EMNotifier;->onMessageNotifyListener:Lcom/easemob/chat/OnMessageNotifyListener;

    iget v7, p0, Lcom/easemob/chat/EMNotifier;->notificationNum:I

    invoke-interface {v6, p1, v1, v7}, Lcom/easemob/chat/OnMessageNotifyListener;->onLatestMessageNotify(Lcom/easemob/chat/EMMessage;II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v0, v1

    :cond_2
    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->onMessageNotifyListener:Lcom/easemob/chat/OnMessageNotifyListener;

    invoke-interface {v1, p1}, Lcom/easemob/chat/OnMessageNotifyListener;->onSetSmallIcon(Lcom/easemob/chat/EMMessage;)I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4, v1}, Lcom/easemob/chat/NotificationCompat$Builder;->setSmallIcon(I)Lcom/easemob/chat/NotificationCompat$Builder;

    :cond_3
    invoke-virtual {v4, v2}, Lcom/easemob/chat/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/easemob/chat/NotificationCompat$Builder;

    invoke-virtual {v4, v3}, Lcom/easemob/chat/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Lcom/easemob/chat/NotificationCompat$Builder;

    invoke-virtual {v4, v0}, Lcom/easemob/chat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/easemob/chat/NotificationCompat$Builder;

    invoke-virtual {v4, v5}, Lcom/easemob/chat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/easemob/chat/NotificationCompat$Builder;

    invoke-virtual {v4}, Lcom/easemob/chat/NotificationCompat$Builder;->build()Landroid/app/Notification;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->notificationManager:Landroid/app/NotificationManager;

    sget v2, Lcom/easemob/chat/EMNotifier;->notifyID:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->notificationManager:Landroid/app/NotificationManager;

    sget v2, Lcom/easemob/chat/EMNotifier;->notifyID:I

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_3
    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->msgs:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->body:Lcom/easemob/chat/MessageBody;

    check-cast v0, Lcom/easemob/chat/TextMessageBody;

    iget-object v0, v0, Lcom/easemob/chat/TextMessageBody;->message:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->msgs:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->msgs:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->msgs:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->msgs:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->msgs:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->body:Lcom/easemob/chat/MessageBody;

    check-cast v0, Lcom/easemob/chat/FileMessageBody;

    iget-object v0, v0, Lcom/easemob/chat/FileMessageBody;->fileName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catch_1
    move-exception v1

    goto/16 :goto_2

    :cond_4
    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method cancelNotificaton()V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->notificationManager:Landroid/app/NotificationManager;

    sget v1, Lcom/easemob/chat/EMNotifier;->notifyID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->filteredEventListeners:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method declared-synchronized notifyChatMsg(Lcom/easemob/chat/EMMessage;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/easemob/EMNotifierEvent$Event;->EventNewMessage:Lcom/easemob/EMNotifierEvent$Event;

    invoke-virtual {p0, v0, p1}, Lcom/easemob/chat/EMNotifier;->publishEvent(Lcom/easemob/EMNotifierEvent$Event;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "em_ignore_notification"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/easemob/chat/EMMessage;->getBooleanAttribute(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/easemob/util/EasyUtils;->isAppRunningForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMNotifier;->sendBroadcast(Lcom/easemob/chat/EMMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->chatType:Lcom/easemob/chat/EMMessage$ChatType;

    sget-object v1, Lcom/easemob/chat/EMMessage$ChatType;->Chat:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatOptions;->getUsersOfNotificationDisabled()Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatOptions;->isShowNotificationInBackgroud()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/easemob/chat/EMNotifier;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/easemob/util/EasyUtils;->isAppRunningForeground(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "notify"

    const-string v3, "easemob chat app is not running, sending notification"

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/easemob/chat/EMNotifier;->sendNotification(Lcom/easemob/chat/EMMessage;)V

    invoke-virtual {p0}, Lcom/easemob/chat/EMNotifier;->notifyOnNewMsg()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatOptions;->getGroupsOfNotificationDisabled()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMNotifier;->sendBroadcast(Lcom/easemob/chat/EMMessage;)V

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v2

    iget-boolean v2, v2, Lcom/easemob/chat/EMChat;->appInited:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-virtual {p0}, Lcom/easemob/chat/EMNotifier;->notifyOnNewMsg()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public notifyOnNewMsg()V
    .locals 4

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatOptions;->getNotificationEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatOptions;->getNotifyBySoundAndVibrate()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/easemob/chat/EMNotifier;->lastNotifiyTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/easemob/chat/EMNotifier;->lastNotifiyTime:J

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "notify"

    const-string v1, "in slient mode now"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatOptions;->getNoticedByVibrate()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    new-array v0, v0, [J

    const/4 v1, 0x1

    const-wide/16 v2, 0xb4

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide/16 v2, 0x50

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    const-wide/16 v2, 0x78

    aput-wide v2, v0, v1

    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->vibrator:Landroid/os/Vibrator;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_3
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatOptions;->getNoticedBySound()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v0, Lcom/easemob/chat/EMNotifier;->ringtone:Landroid/media/Ringtone;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatOptions;->getNotifyRingUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/easemob/chat/EMNotifier;->appContext:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    sput-object v2, Lcom/easemob/chat/EMNotifier;->ringtone:Landroid/media/Ringtone;

    sget-object v2, Lcom/easemob/chat/EMNotifier;->ringtone:Landroid/media/Ringtone;

    if-nez v2, :cond_5

    const-string v1, "notify"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cant find ringtone at:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatOptions;->getNotifyRingUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/easemob/chat/EMNotifier;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/easemob/chat/EMNotifier;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/easemob/chat/EMNotifier$2;

    invoke-direct {v0, p0}, Lcom/easemob/chat/EMNotifier$2;-><init>(Lcom/easemob/chat/EMNotifier;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method publishEvent(Lcom/easemob/EMNotifierEvent$Event;Ljava/lang/Object;)Z
    .locals 3

    const-string v0, "notify"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "publish event, event type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/EMNotifierEvent$Event;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMNotifier;->containsType(Lcom/easemob/EMNotifierEvent$Event;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->notifierThread:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/easemob/chat/EMNotifier$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/easemob/chat/EMNotifier$1;-><init>(Lcom/easemob/chat/EMNotifier;Lcom/easemob/EMNotifierEvent$Event;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerEventListener(Lcom/easemob/EMEventListener;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/easemob/EMNotifierEvent$Event;

    const/4 v1, 0x0

    sget-object v2, Lcom/easemob/EMNotifierEvent$Event;->EventNewCMDMessage:Lcom/easemob/EMNotifierEvent$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/easemob/EMNotifierEvent$Event;->EventNewMessage:Lcom/easemob/EMNotifierEvent$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/easemob/EMNotifierEvent$Event;->EventDeliveryAck:Lcom/easemob/EMNotifierEvent$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/easemob/EMNotifierEvent$Event;->EventOfflineMessage:Lcom/easemob/EMNotifierEvent$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/easemob/EMNotifierEvent$Event;->EventReadAck:Lcom/easemob/EMNotifierEvent$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/easemob/EMNotifierEvent$Event;->EventConversationListChanged:Lcom/easemob/EMNotifierEvent$Event;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/easemob/chat/EMNotifier;->registerEventListener(Lcom/easemob/EMEventListener;[Lcom/easemob/EMNotifierEvent$Event;)V

    goto :goto_0
.end method

.method public registerEventListener(Lcom/easemob/EMEventListener;[Lcom/easemob/EMNotifierEvent$Event;)V
    .locals 4

    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->filteredEventListeners:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    aget-object v3, p2, v0

    invoke-direct {p0, p1, v3}, Lcom/easemob/chat/EMNotifier;->registerEventListener(Lcom/easemob/EMEventListener;Lcom/easemob/EMNotifierEvent$Event;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeEventListener(Lcom/easemob/EMEventListener;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->filteredEventListeners:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->filteredEventListeners:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/easemob/chat/EMNotifier;->remove(Ljava/util/List;Lcom/easemob/EMEventListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method resetNotificationCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/easemob/chat/EMNotifier;->notificationNum:I

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->fromUsers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method sendBroadcast(Lcom/easemob/chat/EMMessage;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getNewMessageBroadcastAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "msgid"

    iget-object v2, p1, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from"

    iget-object v2, p1, Lcom/easemob/chat/EMMessage;->from:Lcom/easemob/chat/EMContact;

    iget-object v2, v2, Lcom/easemob/chat/EMContact;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    iget-object v2, p1, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage$Type;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "notify"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send new message broadcast for msg:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->appContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method sendCmdMsgBroadcast(Lcom/easemob/chat/EMMessage;)V
    .locals 5

    sget-object v0, Lcom/easemob/EMNotifierEvent$Event;->EventNewCMDMessage:Lcom/easemob/EMNotifierEvent$Event;

    invoke-virtual {p0, v0, p1}, Lcom/easemob/chat/EMNotifier;->publishEvent(Lcom/easemob/EMNotifierEvent$Event;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatManager;->getCmdMessageBroadcastAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "msgid"

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "notify"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "received cmd message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method sendDeliveryAckMsgBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/easemob/EMNotifierEvent$Event;->EventDeliveryAck:Lcom/easemob/EMNotifierEvent$Event;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/easemob/chat/EMChatManager;->getMessage(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/easemob/chat/EMNotifier;->publishEvent(Lcom/easemob/EMNotifierEvent$Event;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getDeliveryAckMessageBroadcastAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "msgid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notify"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send delivery ack message broadcast for msg:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->appContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method sendIncomingVoiceCallBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatManager;->getIncomingCallBroadcastAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "from"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "type"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "notify"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send incoming call broadcaset with user : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMVoiceCallManager;->getInstance()Lcom/easemob/chat/EMVoiceCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMVoiceCallManager;->getActiveSession()Lcom/easemob/chat/EMVoiceCallSession;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/easemob/chat/EMVoiceCallManager$CallType;->audio:Lcom/easemob/chat/EMVoiceCallManager$CallType;

    invoke-virtual {v2}, Lcom/easemob/chat/EMVoiceCallManager$CallType;->toString()Ljava/lang/String;

    move-result-object v2

    if-ne p2, v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/EMChatManager;->getIncomingVoiceCallBroadcastAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "from"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/EMNotifier;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method sendReadAckMsgBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/easemob/EMNotifierEvent$Event;->EventReadAck:Lcom/easemob/EMNotifierEvent$Event;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/easemob/chat/EMChatManager;->getMessage(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/easemob/chat/EMNotifier;->publishEvent(Lcom/easemob/EMNotifierEvent$Event;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getAckMessageBroadcastAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "msgid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notify"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send ack message broadcast for msg:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMNotifier;->appContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    sget-object v0, Lcom/easemob/chat/EMNotifier;->ringtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/easemob/chat/EMNotifier;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/chat/EMNotifier;->ringtone:Landroid/media/Ringtone;

    :cond_0
    return-void
.end method
