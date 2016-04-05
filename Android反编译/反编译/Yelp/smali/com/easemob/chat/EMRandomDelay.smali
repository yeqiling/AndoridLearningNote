.class Lcom/easemob/chat/EMRandomDelay;
.super Ljava/lang/Object;


# instance fields
.field randomBase:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/easemob/chat/EMRandomDelay;->randomBase:I

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/easemob/chat/EMRandomDelay;->randomBase:I

    return-void
.end method

.method public timeDelay(I)I
    .locals 4

    const/16 v3, 0x9

    const/4 v2, 0x5

    iget v0, p0, Lcom/easemob/chat/EMRandomDelay;->randomBase:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/easemob/chat/EMRandomDelay;->randomBase:I

    iget v0, p0, Lcom/easemob/chat/EMRandomDelay;->randomBase:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    if-gt p1, v3, :cond_1

    iget v0, p0, Lcom/easemob/chat/EMRandomDelay;->randomBase:I

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    if-le p1, v3, :cond_2

    iget v0, p0, Lcom/easemob/chat/EMRandomDelay;->randomBase:I

    mul-int/lit8 v0, v0, 0x3

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/easemob/chat/EMRandomDelay;->randomBase:I

    goto :goto_0
.end method
