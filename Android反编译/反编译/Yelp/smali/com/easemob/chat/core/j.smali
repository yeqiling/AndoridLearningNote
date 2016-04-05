.class public Lcom/easemob/chat/core/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/chat/core/j$c;,
        Lcom/easemob/chat/core/j$b;,
        Lcom/easemob/chat/core/j$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = null

.field private static final b:Ljava/lang/String; = "file_version"

.field private static final c:Ljava/lang/String; = "app_key"

.field private static final d:Ljava/lang/String; = "sdk_version"

.field private static final e:I = 0x2

.field private static final j:Ljava/lang/String; = "http://www.easemob.com/easemob/server.xml"

.field private static final k:Ljava/lang/String; = "com.easemob.config.xml"

.field private static final l:Ljava/lang/String; = "com.easemob.config.ky.xml"

.field private static m:J

.field private static n:Lcom/easemob/chat/core/j;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Lcom/easemob/chat/core/j$a;

.field private o:Lcom/easemob/chat/core/n;

.field private p:Z

.field private q:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/easemob/chat/core/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/easemob/chat/core/j;->a:Ljava/lang/String;

    const-wide/32 v0, 0xf731400

    sput-wide v0, Lcom/easemob/chat/core/j;->m:J

    new-instance v0, Lcom/easemob/chat/core/j;

    invoke-direct {v0}, Lcom/easemob/chat/core/j;-><init>()V

    sput-object v0, Lcom/easemob/chat/core/j;->n:Lcom/easemob/chat/core/j;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "easemob"

    iput-object v0, p0, Lcom/easemob/chat/core/j;->f:Ljava/lang/String;

    const-string v0, "server.xml"

    iput-object v0, p0, Lcom/easemob/chat/core/j;->g:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/easemob/chat/core/j;->h:I

    iput-object v1, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;

    iput-object v1, p0, Lcom/easemob/chat/core/j;->o:Lcom/easemob/chat/core/n;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/chat/core/j;->p:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/core/j;->q:Ljava/lang/Object;

    new-instance v0, Lcom/easemob/chat/core/n;

    invoke-direct {v0}, Lcom/easemob/chat/core/n;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/core/j;->o:Lcom/easemob/chat/core/n;

    return-void
.end method

.method public static a()Lcom/easemob/chat/core/j;
    .locals 1

    sget-object v0, Lcom/easemob/chat/core/j;->n:Lcom/easemob/chat/core/j;

    return-object v0
.end method

.method private a(Lcom/easemob/chat/core/j$a;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->D()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/easemob/chat/core/j$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/easemob/util/CryptoUtils;

    invoke-direct {v1}, Lcom/easemob/util/CryptoUtils;-><init>()V

    invoke-virtual {v1}, Lcom/easemob/util/CryptoUtils;->initAES()V

    invoke-virtual {v1, p2}, Lcom/easemob/util/CryptoUtils;->encryptBase64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/p;->h(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/easemob/chat/core/j$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/p;->g(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/easemob/chat/core/p;->a(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/easemob/chat/core/j$a;->c:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/easemob/chat/core/j;->m:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/easemob/chat/core/p;->b(J)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-wide v2, p1, Lcom/easemob/chat/core/j$a;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/easemob/chat/core/p;->b(J)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/core/j$b;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->clear()V

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    add-int/lit8 v5, v4, -0x1

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    :goto_1
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/core/j$b;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/core/j$b;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/easemob/chat/core/j$b;

    invoke-direct {v0}, Lcom/easemob/chat/core/j$b;-><init>()V

    :cond_1
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    :cond_2
    const-string v2, "domain"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/easemob/chat/core/j$b;->a:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v2, "ip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/easemob/chat/core/j$b;->b:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v2, "port"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/easemob/chat/core/j$b;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/easemob/chat/core/j;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, v0, Lcom/easemob/chat/core/j$b;->c:I

    goto :goto_2

    :cond_5
    const-string v2, "protocol"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/easemob/chat/core/j$b;->d:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v0, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    const-string v2, "hosts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/easemob/chat/core/j;->a:Ljava/lang/String;

    const-string v1, "we reached end of document, but not end of hosts!"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private m()Lcom/easemob/chat/core/j$a;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/easemob/cloud/HttpClientConfig;->EM_TIME_OUT_KEY:Ljava/lang/String;

    const/16 v3, 0x4e20

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/easemob/chat/core/j;->n()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/easemob/chat/core/j;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config server url : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/cloud/EMHttpClient;->getInstance()Lcom/easemob/cloud/EMHttpClient;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/easemob/cloud/EMHttpClient;->GET:Ljava/lang/String;

    invoke-virtual {v3, v2, v1, v4, v5}, Lcom/easemob/cloud/EMHttpClient;->httpExecute(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/easemob/chat/core/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returned config content : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/easemob/chat/core/j;->a(Ljava/lang/String;)Lcom/easemob/chat/core/j$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/easemob/chat/core/j;->a(Lcom/easemob/chat/core/j$a;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_1
    const-string v0, "error to retrieve dns config"

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget-object v2, Lcom/easemob/chat/core/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieveDNSConfigWithCountDown error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;

    if-eqz v2, :cond_2

    const-string v2, "refused"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/core/j;->o:Lcom/easemob/chat/core/n;

    invoke-virtual {v0}, Lcom/easemob/chat/core/n;->h()Lcom/easemob/chat/core/j$c;

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_1
.end method

.method private n()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "http://www.easemob.com/easemob/server.xml"

    iget-object v1, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/core/j;->o:Lcom/easemob/chat/core/n;

    invoke-virtual {v0}, Lcom/easemob/chat/core/n;->d()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/easemob/chat/core/j$c;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/easemob/chat/core/j$c;->c:Ljava/lang/String;

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/easemob/chat/core/j$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/easemob/chat/core/j;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/easemob/chat/core/j;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sdk_version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/p;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "app_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file_version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/p;->D()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v2, v0, Lcom/easemob/chat/core/j$c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;

    iget-object v0, v0, Lcom/easemob/chat/core/j$a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;

    iget-object v0, v0, Lcom/easemob/chat/core/j$a;->f:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/easemob/chat/core/j;->a(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;

    iget-object v0, v0, Lcom/easemob/chat/core/j$a;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;

    iget-object v0, v0, Lcom/easemob/chat/core/j$a;->g:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/easemob/chat/core/j;->a(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;

    iget-object v0, v0, Lcom/easemob/chat/core/j$a;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;

    iget-object v0, v0, Lcom/easemob/chat/core/j$a;->e:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/easemob/chat/core/j;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method


# virtual methods
.method declared-synchronized a(Ljava/io/InputStream;)Lcom/easemob/chat/core/j$a;
    .locals 9

    const/4 v1, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    const-string v0, "UTF-8"

    invoke-interface {v3, p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v2, v0

    move-object v0, v1

    :goto_1
    const/4 v4, 0x1

    if-eq v2, v4, :cond_a

    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ebs"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Lcom/easemob/chat/core/j$a;

    invoke-direct {v0}, Lcom/easemob/chat/core/j$a;-><init>()V

    move-object v2, v0

    :goto_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v8, v0

    move-object v0, v2

    move v2, v8

    goto :goto_1

    :cond_1
    const-string v4, "deploy_name"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    if-eqz v0, :cond_9

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/easemob/chat/core/j$a;->a:Ljava/lang/String;

    move-object v2, v0

    goto :goto_2

    :cond_2
    const-string v4, "file_version"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    if-eqz v0, :cond_9

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/easemob/chat/core/j$a;->b:Ljava/lang/String;

    move-object v2, v0

    goto :goto_2

    :cond_3
    const-string v4, "valid_before"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_9

    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Lcom/easemob/chat/core/j$a;->c:J

    iget-wide v4, v0, Lcom/easemob/chat/core/j$a;->c:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gtz v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/easemob/chat/core/j;->m:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/easemob/chat/core/j$a;->c:J

    :goto_3
    move-object v2, v0

    goto :goto_2

    :cond_4
    iget-wide v4, v0, Lcom/easemob/chat/core/j$a;->c:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, v0, Lcom/easemob/chat/core/j$a;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v4, Lcom/easemob/chat/core/j;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/easemob/chat/core/j;->m:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/easemob/chat/core/j$a;->c:J

    move-object v2, v0

    goto :goto_2

    :cond_5
    const-string v4, "gcm_enabled"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    if-eqz v0, :cond_9

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/easemob/chat/core/j$a;->d:Z

    move-object v2, v0

    goto/16 :goto_2

    :cond_6
    const-string v4, "im"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    if-eqz v0, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/easemob/chat/core/j$a;->f:Ljava/util/List;

    iget-object v2, v0, Lcom/easemob/chat/core/j$a;->f:Ljava/util/List;

    invoke-direct {p0, v3, v2}, Lcom/easemob/chat/core/j;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    move-object v2, v0

    goto/16 :goto_2

    :cond_7
    const-string v4, "rest"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    if-eqz v0, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/easemob/chat/core/j$a;->g:Ljava/util/List;

    iget-object v2, v0, Lcom/easemob/chat/core/j$a;->g:Ljava/util/List;

    invoke-direct {p0, v3, v2}, Lcom/easemob/chat/core/j;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    move-object v2, v0

    goto/16 :goto_2

    :cond_8
    const-string v4, "resolver"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    if-eqz v0, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/easemob/chat/core/j$a;->e:Ljava/util/List;

    iget-object v2, v0, Lcom/easemob/chat/core/j$a;->e:Ljava/util/List;

    invoke-direct {p0, v3, v2}, Lcom/easemob/chat/core/j;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_9
    move-object v2, v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    move-object v0, v1

    :cond_a
    :goto_4
    move-object v1, v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)Lcom/easemob/chat/core/j$a;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/easemob/chat/core/j;->a(Ljava/io/InputStream;)Lcom/easemob/chat/core/j$a;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public b()Lcom/easemob/chat/core/j$c;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/j;->o:Lcom/easemob/chat/core/n;

    invoke-virtual {v0}, Lcom/easemob/chat/core/n;->b()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/easemob/chat/core/j$c;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/j;->o:Lcom/easemob/chat/core/n;

    invoke-virtual {v0}, Lcom/easemob/chat/core/n;->c()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/easemob/chat/core/j$c;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/j;->o:Lcom/easemob/chat/core/n;

    invoke-virtual {v0}, Lcom/easemob/chat/core/n;->d()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/easemob/chat/core/j$c;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/j;->o:Lcom/easemob/chat/core/n;

    invoke-virtual {v0}, Lcom/easemob/chat/core/n;->h()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/easemob/chat/core/j$c;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/j;->o:Lcom/easemob/chat/core/n;

    invoke-virtual {v0}, Lcom/easemob/chat/core/n;->i()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/easemob/chat/core/j$c;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/j;->o:Lcom/easemob/chat/core/n;

    invoke-virtual {v0}, Lcom/easemob/chat/core/n;->j()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized i()Lcom/easemob/chat/core/j$a;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->F()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/easemob/chat/core/j;->l()Lcom/easemob/chat/core/j$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/easemob/util/CryptoUtils;

    invoke-direct {v0}, Lcom/easemob/util/CryptoUtils;-><init>()V

    invoke-virtual {v0}, Lcom/easemob/util/CryptoUtils;->initAES()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/p;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easemob/util/CryptoUtils;->decryptBase64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/easemob/chat/core/j;->a(Ljava/lang/String;)Lcom/easemob/chat/core/j$a;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;

    invoke-direct {p0}, Lcom/easemob/chat/core/j;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/core/p;->C()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/easemob/chat/core/j;->l()Lcom/easemob/chat/core/j$a;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v1, Lcom/easemob/chat/core/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse dns xml from our store is failed with error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized j()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/easemob/chat/core/p;->a(J)V

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/easemob/chat/core/p;->b(J)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/p;->h(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/p;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/core/j;->o:Lcom/easemob/chat/core/n;

    invoke-virtual {v0}, Lcom/easemob/chat/core/n;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized k()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/j;->o:Lcom/easemob/chat/core/n;

    invoke-virtual {v0}, Lcom/easemob/chat/core/n;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l()Lcom/easemob/chat/core/j$a;
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/easemob/chat/core/j;->p:Z

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/easemob/chat/core/j;->q:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/j;->q:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/easemob/chat/core/j;->q:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/easemob/chat/core/j;->p:Z

    const/4 v0, 0x0

    :goto_2
    iget v3, p0, Lcom/easemob/chat/core/j;->h:I

    if-ge v1, v3, :cond_1

    sget-object v0, Lcom/easemob/chat/core/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to retrieve dns config! with retries number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/easemob/chat/core/j;->m()Lcom/easemob/chat/core/j$a;

    move-result-object v0

    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/easemob/chat/core/j;->i:Lcom/easemob/chat/core/j$a;

    :cond_1
    if-nez v0, :cond_2

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/p;->k()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v1

    const-string v3, "com.easemob.config.ky.xml"

    invoke-virtual {v1, v3}, Lcom/easemob/chat/core/p;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_2

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/easemob/chat/core/j;->a(Ljava/lang/String;)Lcom/easemob/chat/core/j$a;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/easemob/chat/core/j;->o()V

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/easemob/chat/core/j;->p:Z

    iget-object v1, p0, Lcom/easemob/chat/core/j;->q:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_4
    :try_start_4
    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/easemob/util/NetUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v1

    const-string v3, "com.easemob.config.xml"

    invoke-virtual {v1, v3}, Lcom/easemob/chat/core/p;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    goto :goto_3
.end method
