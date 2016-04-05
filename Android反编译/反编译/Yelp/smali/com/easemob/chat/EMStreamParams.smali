.class Lcom/easemob/chat/EMStreamParams;
.super Ljava/lang/Object;


# instance fields
.field public channelId:I

.field public conferenceId:Ljava/lang/String;

.field public isRelayCall:Z

.field public localAddress:Ljava/lang/String;

.field public localPort:I

.field public rcode:Ljava/lang/String;

.field public remoteAddress:Ljava/lang/String;

.field public remotePort:I

.field public videoChannelId:I

.field public videoLocalPort:I

.field public videoRemoteAddress:Ljava/lang/String;

.field public videoRemotePort:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/easemob/chat/EMStreamParams;->remoteAddress:Ljava/lang/String;

    iput-object v1, p0, Lcom/easemob/chat/EMStreamParams;->localAddress:Ljava/lang/String;

    iput-object v1, p0, Lcom/easemob/chat/EMStreamParams;->videoRemoteAddress:Ljava/lang/String;

    iput v0, p0, Lcom/easemob/chat/EMStreamParams;->remotePort:I

    iput v0, p0, Lcom/easemob/chat/EMStreamParams;->videoRemotePort:I

    iput v0, p0, Lcom/easemob/chat/EMStreamParams;->localPort:I

    iput v0, p0, Lcom/easemob/chat/EMStreamParams;->videoLocalPort:I

    iput v0, p0, Lcom/easemob/chat/EMStreamParams;->channelId:I

    iput v0, p0, Lcom/easemob/chat/EMStreamParams;->videoChannelId:I

    iput-object v1, p0, Lcom/easemob/chat/EMStreamParams;->conferenceId:Ljava/lang/String;

    iput-object v1, p0, Lcom/easemob/chat/EMStreamParams;->rcode:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/chat/EMStreamParams;->isRelayCall:Z

    return-void
.end method
