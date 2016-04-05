.class public Lcom/easemob/chat/core/p$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/core/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/easemob/chat/core/p$b;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/easemob/chat/core/p$b;->b:J

    return-void
.end method


# virtual methods
.method public a(J)Lcom/easemob/chat/core/p$b;
    .locals 1

    iput-wide p1, p0, Lcom/easemob/chat/core/p$b;->b:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/easemob/chat/core/p$b;
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/p$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/easemob/chat/core/p$b;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/core/p$b;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/core/p$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/easemob/chat/core/p$b;->b:J

    return-wide v0
.end method
