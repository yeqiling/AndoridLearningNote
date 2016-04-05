.class public Lcom/easemob/chat/core/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/chat/core/p$a;,
        Lcom/easemob/chat/core/p$b;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "a1.dev.easemob.com"

.field private static D:Ljava/lang/String; = null

.field private static E:I = 0x0

.field private static final J:Ljava/lang/String; = "www.easemob.com"

.field private static K:[Ljava/lang/String; = null

.field static a:I = 0x0

.field private static final f:Ljava/lang/String; = null

.field private static final g:Ljava/lang/String; = "access_token"

.field private static o:Lcom/easemob/chat/core/p; = null

.field private static final p:Ljava/lang/String; = "im1.easemob.com"

.field private static final q:Ljava/lang/String; = "a1.easemob.com"

.field private static final r:Ljava/lang/String; = "im1.vip1.easemob.com"

.field private static final s:Ljava/lang/String; = "a1.vip1.easemob.com"

.field private static final v:Ljava/lang/String; = "im1.sandbox.easemob.com"

.field private static final w:Ljava/lang/String; = "a1.sdb.easemob.com"

.field private static final z:Ljava/lang/String; = "im1.dev.easemob.com"


# instance fields
.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private F:Lcom/easemob/util/CryptoUtils;

.field private G:Z

.field private H:Z

.field private I:Z

.field private L:Ljava/lang/String;

.field private M:Z

.field private N:Ljava/lang/String;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/core/p$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/easemob/chat/EMChatConfig$EMEnvMode;

.field d:Lcom/easemob/chat/EMChatConfig$EMSDKMode;

.field e:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/easemob/chat/core/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/easemob/chat/core/p;->f:Ljava/lang/String;

    const/16 v0, 0x1466

    sput v0, Lcom/easemob/chat/core/p;->a:I

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/chat/core/p;->o:Lcom/easemob/chat/core/p;

    const-string v0, "203.195.185.236"

    sput-object v0, Lcom/easemob/chat/core/p;->D:Ljava/lang/String;

    const/16 v0, 0xda0

    sput v0, Lcom/easemob/chat/core/p;->E:I

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Hy+xe9oDskKv5ZSkV4gLlCEW+t5gJOlzVd2oYYSJ9PY="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "6UJPCvc50DcJzJPQrh9GTxzLx7ExBUk/d/QSveCDBHA="

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "IW07cwaTAhAm741v3TDuuvW/i8SGwkKPuxFbXhtyegk="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "MxmVut7Ui09MCvgOTcmgB+cDXhq+g0vPxG5Sz+OVkfI="

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Ok6j+A2TySWNmuZms7cji8eTdxYMoxuugbsghZT5Oss="

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "f8K5HQ82hreMKpawCmtAikMcvoTfGm/pSPtHgwUvsPk="

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ZrJ41xgzvmNvhKDz7ZhTaRzLx7ExBUk/d/QSveCDBHA="

    aput-object v2, v0, v1

    sput-object v0, Lcom/easemob/chat/core/p;->K:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/easemob/chat/core/p;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/easemob/chat/core/p;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/easemob/chat/core/p;->j:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/easemob/chat/core/p;->k:J

    iput-boolean v4, p0, Lcom/easemob/chat/core/p;->l:Z

    iput-object v2, p0, Lcom/easemob/chat/core/p;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/easemob/chat/core/p;->n:Ljava/lang/String;

    const-string v0, "im1.easemob.com"

    iput-object v0, p0, Lcom/easemob/chat/core/p;->t:Ljava/lang/String;

    const-string v0, "a1.easemob.com"

    iput-object v0, p0, Lcom/easemob/chat/core/p;->u:Ljava/lang/String;

    const-string v0, "im1.sandbox.easemob.com"

    iput-object v0, p0, Lcom/easemob/chat/core/p;->x:Ljava/lang/String;

    const-string v0, "a1.sdb.easemob.com"

    iput-object v0, p0, Lcom/easemob/chat/core/p;->y:Ljava/lang/String;

    const-string v0, "im1.dev.easemob.com"

    iput-object v0, p0, Lcom/easemob/chat/core/p;->B:Ljava/lang/String;

    const-string v0, "a1.dev.easemob.com"

    iput-object v0, p0, Lcom/easemob/chat/core/p;->C:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/core/p;->b:Ljava/util/List;

    iput-object v2, p0, Lcom/easemob/chat/core/p;->F:Lcom/easemob/util/CryptoUtils;

    sget-object v0, Lcom/easemob/chat/EMChatConfig$EMEnvMode;->EMProductMode:Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    iput-object v0, p0, Lcom/easemob/chat/core/p;->c:Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    sget-object v0, Lcom/easemob/chat/EMChatConfig$EMSDKMode;->EMChatMode:Lcom/easemob/chat/EMChatConfig$EMSDKMode;

    iput-object v0, p0, Lcom/easemob/chat/core/p;->d:Lcom/easemob/chat/EMChatConfig$EMSDKMode;

    iput-boolean v3, p0, Lcom/easemob/chat/core/p;->e:Z

    iput-boolean v3, p0, Lcom/easemob/chat/core/p;->G:Z

    iput-boolean v3, p0, Lcom/easemob/chat/core/p;->H:Z

    iput-boolean v3, p0, Lcom/easemob/chat/core/p;->I:Z

    const-string v0, "2.2.2"

    iput-object v0, p0, Lcom/easemob/chat/core/p;->L:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/easemob/chat/core/p;->M:Z

    iput-object v2, p0, Lcom/easemob/chat/core/p;->N:Ljava/lang/String;

    new-instance v0, Lcom/easemob/chat/core/p$a;

    invoke-direct {v0}, Lcom/easemob/chat/core/p$a;-><init>()V

    sget-object v1, Lcom/easemob/chat/core/p;->D:Ljava/lang/String;

    iput-object v1, v0, Lcom/easemob/chat/core/p$a;->a:Ljava/lang/String;

    sget v1, Lcom/easemob/chat/core/p;->E:I

    iput v1, v0, Lcom/easemob/chat/core/p$a;->b:I

    iget-object v1, p0, Lcom/easemob/chat/core/p;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v4}, Lcom/easemob/chat/core/p;->b(Z)V

    new-instance v0, Lcom/easemob/util/CryptoUtils;

    invoke-direct {v0}, Lcom/easemob/util/CryptoUtils;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/core/p;->F:Lcom/easemob/util/CryptoUtils;

    iget-object v0, p0, Lcom/easemob/chat/core/p;->F:Lcom/easemob/util/CryptoUtils;

    invoke-virtual {v0}, Lcom/easemob/util/CryptoUtils;->initAES()V

    return-void
.end method

.method public static declared-synchronized c()Lcom/easemob/chat/core/p;
    .locals 2

    const-class v1, Lcom/easemob/chat/core/p;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/easemob/chat/core/p;->o:Lcom/easemob/chat/core/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/chat/core/p;

    invoke-direct {v0}, Lcom/easemob/chat/core/p;-><init>()V

    sput-object v0, Lcom/easemob/chat/core/p;->o:Lcom/easemob/chat/core/p;

    :cond_0
    sget-object v0, Lcom/easemob/chat/core/p;->o:Lcom/easemob/chat/core/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public A()V
    .locals 4

    new-instance v0, Lcom/easemob/chat/core/p$b;

    invoke-direct {v0}, Lcom/easemob/chat/core/p$b;-><init>()V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/easemob/chat/core/p$b;->a(J)Lcom/easemob/chat/core/p$b;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/p$b;->a(Ljava/lang/String;)Lcom/easemob/chat/core/p$b;

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/chat/core/p;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Lcom/easemob/chat/core/p$b;)V

    return-void
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/core/p;->l:Z

    return v0
.end method

.method public C()J
    .locals 2

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/v;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/v;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/v;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F()J
    .locals 2

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/v;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public G()Z
    .locals 4

    invoke-virtual {p0}, Lcom/easemob/chat/core/p;->F()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public H()Z
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/v;->f()Z

    move-result v0

    return v0
.end method

.method public I()J
    .locals 2

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/v;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public J()V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/v;->h()V

    return-void
.end method

.method public K()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/easemob/cloud/HttpClientConfig;->getFileDirRemoteUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/easemob/cloud/HttpClientConfig;->getBaseUrlByAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public M()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/core/p$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/core/p;->b:Ljava/util/List;

    return-object v0
.end method

.method public N()Z
    .locals 2

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/j;->c()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/core/j$c;->c:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public O()Lcom/easemob/chat/core/v;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/v;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;,
            Lcom/easemob/exceptions/EMAuthenticationException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/easemob/chat/core/p;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/easemob/chat/core/p;->i:Ljava/lang/String;

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->l(Ljava/lang/String;)Lcom/easemob/chat/core/p$b;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/easemob/chat/core/p$b;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/easemob/chat/core/p$b;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/easemob/chat/core/p;->j:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/easemob/chat/core/p$b;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/easemob/chat/core/p;->k:J

    :goto_0
    iget-object v3, p0, Lcom/easemob/chat/core/p;->j:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-wide v4, p0, Lcom/easemob/chat/core/p;->k:J

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x21795600

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/easemob/cloud/HttpClientConfig;->getBaseUrlByAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/token"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "grant_type"

    const-string v4, "password"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "password"

    iget-object v4, p0, Lcom/easemob/chat/core/p;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    new-instance v1, Lcom/easemob/analytics/EMTimeTag;

    invoke-direct {v1}, Lcom/easemob/analytics/EMTimeTag;-><init>()V

    invoke-virtual {v1}, Lcom/easemob/analytics/EMTimeTag;->start()V

    sget-object v4, Lcom/easemob/chat/core/p;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "try to retrieve token : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget-object v5, Lcom/easemob/cloud/HttpClientConfig;->EM_TIME_OUT_KEY:Ljava/lang/String;

    const/16 v6, 0x4e20

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/easemob/cloud/EMHttpClient;->getInstance()Lcom/easemob/cloud/EMHttpClient;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    instance-of v6, v0, Lorg/json/JSONObject;

    if-nez v6, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    sget-object v6, Lcom/easemob/cloud/EMHttpClient;->POST:Ljava/lang/String;

    invoke-virtual {v5, v3, v4, v0, v6}, Lcom/easemob/cloud/EMHttpClient;->sendRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v1}, Lcom/easemob/analytics/EMTimeTag;->stop()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/easemob/analytics/EMLoginCollector;->collectRetrieveTokenTime(J)V

    if-nez v3, :cond_3

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const/16 v1, -0x3e7

    const-string v2, "failed to retrieve token"

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v3, 0x0

    :try_start_3
    iput-object v3, p0, Lcom/easemob/chat/core/p;->j:Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_2
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_6

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/easemob/chat/core/p;->f:Ljava/lang/String;

    const-string v1, "return code is ok, but content is empty!"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const/16 v1, -0x3e7

    const-string v2, "failed to retrieve token, the content is empty!"

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/core/p;->j:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/easemob/chat/core/p;->k:J

    if-nez v2, :cond_9

    new-instance v0, Lcom/easemob/chat/core/p$b;

    invoke-direct {v0}, Lcom/easemob/chat/core/p$b;-><init>()V

    :goto_3
    iget-object v1, p0, Lcom/easemob/chat/core/p;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/p$b;->a(Ljava/lang/String;)Lcom/easemob/chat/core/p$b;

    move-result-object v1

    iget-wide v4, p0, Lcom/easemob/chat/core/p;->k:J

    invoke-virtual {v1, v4, v5}, Lcom/easemob/chat/core/p$b;->a(J)Lcom/easemob/chat/core/p$b;

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Lcom/easemob/chat/core/p$b;)V

    sget-object v1, Lcom/easemob/chat/core/p;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "accesstoken : "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/easemob/chat/core/p;->j:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_1
    move-exception v0

    :try_start_6
    sget-object v1, Lcom/easemob/chat/core/p;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "accesstoken:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    const/16 v2, -0x3e7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "wrong content is returned : "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_6
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x191

    if-eq v0, v1, :cond_7

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x190

    if-eq v0, v1, :cond_7

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_8

    :cond_7
    new-instance v0, Lcom/easemob/exceptions/EMAuthenticationException;

    const-string v1, "invalid user or password!"

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EMAuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const/16 v1, -0x3e7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "failed to retrieve token with error code : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_9
    move-object v0, v2

    goto/16 :goto_3
.end method

.method public a(J)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/core/v;->a(J)V

    return-void
.end method

.method public a(Lcom/easemob/chat/EMChatConfig$EMEnvMode;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/easemob/chat/core/p;->c:Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    iget-object v0, p0, Lcom/easemob/chat/core/p;->c:Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    sget-object v1, Lcom/easemob/chat/EMChatConfig$EMEnvMode;->EMSandboxMode:Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/p;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/easemob/chat/core/p;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/easemob/chat/core/p;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/easemob/chat/core/p;->u:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/easemob/chat/core/p;->b(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/core/p;->c:Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    sget-object v1, Lcom/easemob/chat/EMChatConfig$EMEnvMode;->EMDevMode:Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/core/p;->B:Ljava/lang/String;

    iput-object v0, p0, Lcom/easemob/chat/core/p;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/easemob/chat/core/p;->C:Ljava/lang/String;

    iput-object v0, p0, Lcom/easemob/chat/core/p;->u:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/easemob/chat/core/p;->b(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "im1.easemob.com"

    iput-object v0, p0, Lcom/easemob/chat/core/p;->t:Ljava/lang/String;

    const-string v0, "a1.easemob.com"

    iput-object v0, p0, Lcom/easemob/chat/core/p;->u:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/easemob/chat/core/p;->b(Z)V

    goto :goto_0
.end method

.method public a(Lcom/easemob/chat/EMChatConfig$EMSDKMode;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/p;->d:Lcom/easemob/chat/EMChatConfig$EMSDKMode;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/p;->N:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/core/p$a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/core/p;->M:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/core/p;->M:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/p;->N:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/core/v;->b(J)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/p;->t:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/easemob/chat/core/p;->c(Z)V

    invoke-virtual {p0, p1}, Lcom/easemob/chat/core/p;->d(Z)V

    invoke-virtual {p0, p1}, Lcom/easemob/chat/core/p;->e(Z)V

    return-void
.end method

.method public c(J)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/core/v;->c(J)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/p;->u:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/core/p;->G:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/p;->L:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/p;->m:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/core/p;->H:Z

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/p;->n:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/core/p;->I:Z

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/core/p;->G:Z

    return v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v1, ""

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/core/p;->e:Z

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/core/p;->H:Z

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/v;->a(Ljava/lang/String;)V

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/core/p;->l:Z

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/core/p;->I:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/easemob/chat/core/p;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "im1.vip1.easemob.com"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/core/p;->t:Ljava/lang/String;

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/v;->b(Ljava/lang/String;)V

    return-void
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/easemob/cloud/HttpClientConfig;->getFileRemoteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/v;->d(Ljava/lang/String;)V

    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/core/p;->e:Z

    return v0
.end method

.method k()Z
    .locals 6

    const/4 v0, 0x0

    sget-object v3, Lcom/easemob/chat/core/p;->K:[Ljava/lang/String;

    array-length v4, v3

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_0

    :goto_1
    return v0

    :cond_0
    aget-object v1, v3, v2

    :try_start_0
    iget-object v5, p0, Lcom/easemob/chat/core/p;->F:Lcom/easemob/util/CryptoUtils;

    invoke-virtual {v5, v1}, Lcom/easemob/util/CryptoUtils;->decryptBase64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/easemob/chat/core/p;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "a1.vip1.easemob.com"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/core/p;->u:Ljava/lang/String;

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "www.easemob.com"

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/p;->x:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/p;->y:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/p;->B:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/p;->C:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    const-string v0, "im1.easemob.com"

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    const-string v0, "a1.easemob.com"

    return-object v0
.end method

.method public t()Lcom/easemob/chat/EMChatConfig$EMEnvMode;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/p;->c:Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    return-object v0
.end method

.method public u()Lcom/easemob/chat/EMChatConfig$EMSDKMode;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/p;->d:Lcom/easemob/chat/EMChatConfig$EMSDKMode;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/p;->m:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/p;->n:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized x()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/easemob/chat/core/p;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easemob/chat/core/p;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/easemob/chat/core/p;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/easemob/chat/core/p;->i:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/easemob/chat/core/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/easemob/chat/core/p;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public y()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->A()V

    const/4 v1, 0x0

    const/4 v0, 0x3

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    if-gtz v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/easemob/chat/core/p;->x()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public z()J
    .locals 2

    iget-wide v0, p0, Lcom/easemob/chat/core/p;->k:J

    return-wide v0
.end method
