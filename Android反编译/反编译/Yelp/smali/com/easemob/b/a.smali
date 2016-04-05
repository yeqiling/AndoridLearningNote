.class public Lcom/easemob/b/a;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "net"

.field protected static b:Lcom/easemob/b/a;

.field static c:J

.field static d:J

.field static e:J

.field static f:J

.field static g:J

.field static h:J

.field static i:J

.field static j:J

.field static k:J

.field static l:J

.field static m:J

.field static n:J

.field static o:J

.field static p:J

.field static q:J

.field static r:J

.field static s:I

.field static t:J

.field static u:J

.field static v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/b/a;->b:Lcom/easemob/b/a;

    sput-wide v2, Lcom/easemob/b/a;->c:J

    sput-wide v2, Lcom/easemob/b/a;->d:J

    sput-wide v2, Lcom/easemob/b/a;->e:J

    sput-wide v2, Lcom/easemob/b/a;->f:J

    sput-wide v2, Lcom/easemob/b/a;->g:J

    sput-wide v2, Lcom/easemob/b/a;->h:J

    sput-wide v2, Lcom/easemob/b/a;->i:J

    sput-wide v2, Lcom/easemob/b/a;->j:J

    sput-wide v2, Lcom/easemob/b/a;->m:J

    sput-wide v2, Lcom/easemob/b/a;->n:J

    sput-wide v2, Lcom/easemob/b/a;->o:J

    sput-wide v2, Lcom/easemob/b/a;->p:J

    sput-wide v2, Lcom/easemob/b/a;->q:J

    sput-wide v2, Lcom/easemob/b/a;->r:J

    sput-wide v2, Lcom/easemob/b/a;->t:J

    sput-wide v2, Lcom/easemob/b/a;->u:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/easemob/b/a;->v:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/easemob/b/a;->s:I

    invoke-static {}, Lcom/easemob/b/a;->b()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/easemob/b/a;->v:Z

    return-void
.end method

.method public static b()V
    .locals 4

    const-wide/16 v2, 0x0

    sget v0, Lcom/easemob/b/a;->s:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    sput-wide v0, Lcom/easemob/b/a;->c:J

    sget v0, Lcom/easemob/b/a;->s:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    sput-wide v0, Lcom/easemob/b/a;->d:J

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    sget v0, Lcom/easemob/b/a;->s:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxPackets(I)J

    move-result-wide v0

    sput-wide v0, Lcom/easemob/b/a;->e:J

    sget v0, Lcom/easemob/b/a;->s:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxPackets(I)J

    move-result-wide v0

    sput-wide v0, Lcom/easemob/b/a;->f:J

    :goto_0
    sput-wide v2, Lcom/easemob/b/a;->k:J

    sput-wide v2, Lcom/easemob/b/a;->l:J

    sput-wide v2, Lcom/easemob/b/a;->m:J

    sput-wide v2, Lcom/easemob/b/a;->n:J

    sput-wide v2, Lcom/easemob/b/a;->o:J

    sput-wide v2, Lcom/easemob/b/a;->p:J

    sput-wide v2, Lcom/easemob/b/a;->q:J

    sput-wide v2, Lcom/easemob/b/a;->r:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/easemob/b/a;->u:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/easemob/b/a;->t:J

    return-void

    :cond_0
    sput-wide v2, Lcom/easemob/b/a;->e:J

    sput-wide v2, Lcom/easemob/b/a;->f:J

    goto :goto_0
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/easemob/b/a;->v:Z

    invoke-static {}, Lcom/easemob/b/a;->b()V

    return-void
.end method

.method public static d()V
    .locals 14

    const-wide/16 v12, 0x3e8

    const/16 v10, 0xc

    const-wide/16 v8, 0x0

    sget-boolean v0, Lcom/easemob/b/a;->v:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-wide v4, Lcom/easemob/b/a;->t:J

    sub-long/2addr v0, v4

    div-long/2addr v0, v12

    cmp-long v3, v0, v8

    if-nez v3, :cond_1

    const-wide/16 v0, 0x1

    :cond_1
    sget v3, Lcom/easemob/b/a;->s:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v4

    sput-wide v4, Lcom/easemob/b/a;->o:J

    sget v3, Lcom/easemob/b/a;->s:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    sput-wide v4, Lcom/easemob/b/a;->p:J

    sget-wide v4, Lcom/easemob/b/a;->o:J

    sget-wide v6, Lcom/easemob/b/a;->c:J

    sub-long/2addr v4, v6

    sput-wide v4, Lcom/easemob/b/a;->k:J

    sget-wide v4, Lcom/easemob/b/a;->p:J

    sget-wide v6, Lcom/easemob/b/a;->d:J

    sub-long/2addr v4, v6

    sput-wide v4, Lcom/easemob/b/a;->l:J

    sget-wide v4, Lcom/easemob/b/a;->g:J

    sget-wide v6, Lcom/easemob/b/a;->k:J

    add-long/2addr v4, v6

    sput-wide v4, Lcom/easemob/b/a;->g:J

    sget-wide v4, Lcom/easemob/b/a;->h:J

    sget-wide v6, Lcom/easemob/b/a;->l:J

    add-long/2addr v4, v6

    sput-wide v4, Lcom/easemob/b/a;->h:J

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v10, :cond_2

    sget v3, Lcom/easemob/b/a;->s:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidRxPackets(I)J

    move-result-wide v4

    sput-wide v4, Lcom/easemob/b/a;->q:J

    sget v3, Lcom/easemob/b/a;->s:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidTxPackets(I)J

    move-result-wide v4

    sput-wide v4, Lcom/easemob/b/a;->r:J

    sget-wide v4, Lcom/easemob/b/a;->q:J

    sget-wide v6, Lcom/easemob/b/a;->e:J

    sub-long/2addr v4, v6

    sput-wide v4, Lcom/easemob/b/a;->m:J

    sget-wide v4, Lcom/easemob/b/a;->r:J

    sget-wide v6, Lcom/easemob/b/a;->f:J

    sub-long/2addr v4, v6

    sput-wide v4, Lcom/easemob/b/a;->n:J

    sget-wide v4, Lcom/easemob/b/a;->i:J

    sget-wide v6, Lcom/easemob/b/a;->m:J

    add-long/2addr v4, v6

    sput-wide v4, Lcom/easemob/b/a;->i:J

    sget-wide v4, Lcom/easemob/b/a;->j:J

    sget-wide v6, Lcom/easemob/b/a;->n:J

    add-long/2addr v4, v6

    sput-wide v4, Lcom/easemob/b/a;->j:J

    :cond_2
    sget-wide v4, Lcom/easemob/b/a;->k:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_3

    sget-wide v4, Lcom/easemob/b/a;->l:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_6

    :cond_3
    const-string v3, "net"

    new-instance v4, Ljava/lang/StringBuilder;

    sget-wide v6, Lcom/easemob/b/a;->l:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " bytes send; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lcom/easemob/b/a;->k:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes received in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sec"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v10, :cond_4

    sget-wide v4, Lcom/easemob/b/a;->n:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_4

    const-string v3, "net"

    new-instance v4, Ljava/lang/StringBuilder;

    sget-wide v6, Lcom/easemob/b/a;->n:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " packets send; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lcom/easemob/b/a;->m:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packets received in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "net"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "total:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lcom/easemob/b/a;->h:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes send; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v4, Lcom/easemob/b/a;->g:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes received"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v10, :cond_5

    sget-wide v0, Lcom/easemob/b/a;->j:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lcom/easemob/b/a;->u:J

    sub-long/2addr v0, v4

    div-long/2addr v0, v12

    const-string v3, "net"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "total:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v6, Lcom/easemob/b/a;->j:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packets send; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lcom/easemob/b/a;->i:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packets received in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-wide v0, Lcom/easemob/b/a;->o:J

    sput-wide v0, Lcom/easemob/b/a;->c:J

    sget-wide v0, Lcom/easemob/b/a;->p:J

    sput-wide v0, Lcom/easemob/b/a;->d:J

    sget-wide v0, Lcom/easemob/b/a;->q:J

    sput-wide v0, Lcom/easemob/b/a;->e:J

    sget-wide v0, Lcom/easemob/b/a;->r:J

    sput-wide v0, Lcom/easemob/b/a;->f:J

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/easemob/b/a;->t:J

    goto/16 :goto_0

    :cond_6
    const-string v0, "net"

    const-string v1, "no network traffice"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
