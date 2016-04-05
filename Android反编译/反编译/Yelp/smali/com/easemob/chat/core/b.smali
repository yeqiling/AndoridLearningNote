.class public Lcom/easemob/chat/core/b;
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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Lcom/easemob/chat/core/a;

    const-string v0, "received"

    invoke-direct {v1, v0}, Lcom/easemob/chat/core/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, ""

    const-string v3, "mid"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/easemob/chat/core/a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/easemob/chat/core/a;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/easemob/chat/core/a;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "received"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
