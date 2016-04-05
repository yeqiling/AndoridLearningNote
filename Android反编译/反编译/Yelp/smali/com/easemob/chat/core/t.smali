.class public Lcom/easemob/chat/core/t;
.super Lorg/jivesoftware/smack/packet/IQ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/chat/core/t$a;,
        Lcom/easemob/chat/core/t$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "urn:xmpp:media-conference"

.field public static final b:Ljava/lang/String; = "query"


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/core/f;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/core/p$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/core/t;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/core/t;->d:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/easemob/chat/core/t;
    .locals 3

    new-instance v0, Lcom/easemob/chat/core/t;

    invoke-direct {v0}, Lcom/easemob/chat/core/t;-><init>()V

    new-instance v1, Lcom/easemob/chat/core/f;

    invoke-direct {v1}, Lcom/easemob/chat/core/f;-><init>()V

    invoke-virtual {v1, p0}, Lcom/easemob/chat/core/f;->c(Ljava/lang/String;)V

    sget-object v2, Lcom/easemob/chat/core/t$a;->c:Lcom/easemob/chat/core/t$a;

    invoke-virtual {v2}, Lcom/easemob/chat/core/t$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/easemob/chat/core/f;->h(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/t;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/t;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    return-object v0
.end method

.method public static a(ZLjava/lang/String;)Lcom/easemob/chat/core/t;
    .locals 3

    new-instance v0, Lcom/easemob/chat/core/t;

    invoke-direct {v0}, Lcom/easemob/chat/core/t;-><init>()V

    new-instance v1, Lcom/easemob/chat/core/f;

    invoke-direct {v1}, Lcom/easemob/chat/core/f;-><init>()V

    invoke-virtual {v1, p1}, Lcom/easemob/chat/core/f;->a(Ljava/lang/String;)V

    if-nez p0, :cond_0

    sget-object v2, Lcom/easemob/chat/core/t$a;->a:Lcom/easemob/chat/core/t$a;

    invoke-virtual {v2}, Lcom/easemob/chat/core/t$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/easemob/chat/core/f;->h(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/t;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/t;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    return-object v0

    :cond_0
    sget-object v2, Lcom/easemob/chat/core/t$a;->b:Lcom/easemob/chat/core/t$a;

    invoke-virtual {v2}, Lcom/easemob/chat/core/t$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/easemob/chat/core/f;->h(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/core/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/core/t;->c:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/easemob/chat/core/f;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/t;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    iput-object p1, p0, Lcom/easemob/chat/core/t;->d:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/util/List;
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

    iget-object v0, p0, Lcom/easemob/chat/core/t;->d:Ljava/util/List;

    return-object v0
.end method

.method public getChildElementXML()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<query xmlns=\"urn:xmpp:media-conference\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/easemob/chat/core/t;->getExtensionsXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</query>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
