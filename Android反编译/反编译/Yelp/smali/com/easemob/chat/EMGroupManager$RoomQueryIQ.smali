.class Lcom/easemob/chat/EMGroupManager$RoomQueryIQ;
.super Lorg/jivesoftware/smack/packet/IQ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMGroupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoomQueryIQ"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMGroupManager;


# direct methods
.method private constructor <init>(Lcom/easemob/chat/EMGroupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMGroupManager$RoomQueryIQ;->this$0:Lcom/easemob/chat/EMGroupManager;

    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 1

    const-string v0, "<query xmlns=\"http://jabber.org/protocol/disco#items\" node=\"http://jabber.org/protocol/muc#rooms\"></query>"

    return-object v0
.end method
