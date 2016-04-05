.class public Lcom/easemob/chat/EMCustomerServiceConfiguration;
.super Ljava/lang/Object;


# instance fields
.field private agents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private connectionExpiredDuration:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/EMCustomerServiceConfiguration;->agents:Ljava/util/List;

    const-wide/32 v0, 0xa4cb800

    iput-wide v0, p0, Lcom/easemob/chat/EMCustomerServiceConfiguration;->connectionExpiredDuration:J

    return-void
.end method


# virtual methods
.method public getAgents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMCustomerServiceConfiguration;->agents:Ljava/util/List;

    return-object v0
.end method

.method public setAgents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/easemob/chat/EMCustomerServiceConfiguration;->agents:Ljava/util/List;

    return-void
.end method
