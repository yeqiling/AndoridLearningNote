.class Lcom/easemob/chat/EMGroupManager$5;
.super Lorg/jivesoftware/smack/filter/PacketTypeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMGroupManager;->retrieveUserMucsOnServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMGroupManager;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMGroupManager;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMGroupManager$5;->this$0:Lcom/easemob/chat/EMGroupManager;

    invoke-direct {p0, p2}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 4

    instance-of v0, p1, Lorg/jivesoftware/smack/packet/IQ;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jivesoftware/smack/packet/IQ;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getChildElementXML()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "childXML:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
