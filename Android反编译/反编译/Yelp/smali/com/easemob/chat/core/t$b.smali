.class Lcom/easemob/chat/core/t$b;
.super Lorg/jivesoftware/smack/packet/DefaultPacketExtension;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/core/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "turnServerList"

.field static final b:Ljava/lang/String; = "turnServer"


# instance fields
.field final synthetic c:Lcom/easemob/chat/core/t;


# direct methods
.method public constructor <init>(Lcom/easemob/chat/core/t;)V
    .locals 2

    iput-object p1, p0, Lcom/easemob/chat/core/t$b;->c:Lcom/easemob/chat/core/t;

    const-string v0, "turnServerList"

    const-string v1, "urn:xmpp:media-conference"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
