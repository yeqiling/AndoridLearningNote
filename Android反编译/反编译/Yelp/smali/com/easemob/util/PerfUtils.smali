.class public Lcom/easemob/util/PerfUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSpeed(JJ)I
    .locals 4

    long-to-float v0, p0

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    long-to-float v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getTimeSpendSecond(J)I
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    long-to-int v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
