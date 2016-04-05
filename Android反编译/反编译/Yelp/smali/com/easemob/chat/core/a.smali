.class public Lcom/easemob/chat/core/a;
.super Lorg/jivesoftware/smack/packet/DefaultPacketExtension;


# static fields
.field public static final a:Ljava/lang/String; = "received"

.field public static final b:Ljava/lang/String; = "acked"

.field public static final c:Ljava/lang/String; = "delivery"

.field public static final d:Ljava/lang/String; = "request"

.field public static final e:Ljava/lang/String; = "urn:xmpp:receipts"

.field public static final f:Ljava/lang/String; = "id"


# instance fields
.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "urn:xmpp:receipts"

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/easemob/chat/core/a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/a;->g:Ljava/lang/String;

    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/easemob/chat/core/a;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/easemob/chat/core/a;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p0, v2}, Lcom/easemob/chat/core/a;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
