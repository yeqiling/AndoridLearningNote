.class Lcom/easemob/chat/EMGroupManager$MUCSearchIQ;
.super Lorg/jivesoftware/smack/packet/IQ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMGroupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MUCSearchIQ"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMGroupManager;


# direct methods
.method public constructor <init>(Lcom/easemob/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/easemob/chat/EMGroupManager$MUCSearchIQ;->this$0:Lcom/easemob/chat/EMGroupManager;

    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMGroupManager$MUCSearchIQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    invoke-virtual {p0, p2}, Lcom/easemob/chat/EMGroupManager$MUCSearchIQ;->setFrom(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/easemob/chat/EMGroupManager$MUCSearchIQ;->setTo(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 1

    const-string v0, "<query xmlns=\'http://jabber.org/protocol/disco#items\' node=\'http://jabber.org/protocol/muc#rooms\'/>"

    return-object v0
.end method
