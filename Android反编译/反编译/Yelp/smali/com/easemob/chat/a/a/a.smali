.class public Lcom/easemob/chat/a/a/a;
.super Lorg/jivesoftware/smack/packet/IQ;


# static fields
.field public static final a:Ljava/lang/String; = "urn:xmpp:ping"

.field public static final b:Ljava/lang/String; = "ping"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/easemob/chat/a/a/a;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<ping xmlns=\"urn:xmpp:ping\" />"

    goto :goto_0
.end method
