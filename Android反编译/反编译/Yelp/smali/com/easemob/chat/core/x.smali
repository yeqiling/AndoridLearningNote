.class public Lcom/easemob/chat/core/x;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/chat/core/x$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "roomtype"

.field public static final b:Ljava/lang/String; = "easemob:x:roomtype"


# instance fields
.field private c:Lcom/easemob/chat/core/x$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/easemob/chat/core/x$a;->a:Lcom/easemob/chat/core/x$a;

    iput-object v0, p0, Lcom/easemob/chat/core/x;->c:Lcom/easemob/chat/core/x$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/easemob/chat/core/x$a;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/x;->c:Lcom/easemob/chat/core/x$a;

    return-object v0
.end method

.method public a(Lcom/easemob/chat/core/x$a;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/x;->c:Lcom/easemob/chat/core/x$a;

    return-void
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    const-string v0, "roomtype"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    const-string v0, "easemob:x:roomtype"

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/easemob/chat/core/x;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/easemob/chat/core/x;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/chat/core/x;->c:Lcom/easemob/chat/core/x$a;

    invoke-virtual {v2}, Lcom/easemob/chat/core/x$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
