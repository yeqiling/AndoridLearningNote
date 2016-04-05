.class public Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;
.super Ljava/lang/Object;
.source "DominatorsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/snapshot/DominatorsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassloaderDominatorRecord"
.end annotation


# instance fields
.field dominated:I

.field dominatedNetSize:J

.field dominatedRetainedSize:J

.field dominator:I

.field dominatorNetSize:J

.field dominatorRetainedSize:J

.field protected id:I

.field protected name:Ljava/lang/String;

.field protected records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->records:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDominatedCount()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->dominated:I

    return v0
.end method

.method public getDominatedNetSize()J
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->dominatedNetSize:J

    return-wide v0
.end method

.method public getDominatedRetainedSize()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->dominatedRetainedSize:J

    return-wide v0
.end method

.method public getDominatorCount()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->dominator:I

    return v0
.end method

.method public getDominatorNetSize()J
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->dominatorNetSize:J

    return-wide v0
.end method

.method public getDominatorRetainedSize()J
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->dominatorRetainedSize:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->records:Ljava/util/List;

    return-object v0
.end method

.method public setDominatedRetainedSize(J)V
    .locals 1
    .parameter "dominatedRetainedSize"

    .prologue
    .line 194
    iput-wide p1, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->dominatedRetainedSize:J

    .line 195
    return-void
.end method

.method public setDominatorRetainedSize(J)V
    .locals 1
    .parameter "dominatorRetainedSize"

    .prologue
    .line 202
    iput-wide p1, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->dominatorRetainedSize:J

    .line 203
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 186
    iput p1, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->id:I

    .line 187
    return-void
.end method
