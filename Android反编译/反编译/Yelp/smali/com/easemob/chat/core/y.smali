.class public Lcom/easemob/chat/core/y;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/easemob/chat/core/x;

    invoke-direct {v0}, Lcom/easemob/chat/core/x;-><init>()V

    const-string v1, ""

    const-string v2, "type"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/easemob/chat/core/x$a;->valueOf(Ljava/lang/String;)Lcom/easemob/chat/core/x$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/x;->a(Lcom/easemob/chat/core/x$a;)V

    return-object v0
.end method
