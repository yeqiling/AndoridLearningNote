.class public Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;
.super Ljava/lang/Object;
.source "DominatorsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/snapshot/DominatorsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassDominatorRecord"
.end annotation


# instance fields
.field classId:I

.field className:Ljava/lang/String;

.field classloaderId:I

.field dominated:Lorg/eclipse/mat/collect/SetInt;

.field dominatedNetSize:J

.field dominatedRetainedSize:J

.field dominator:Lorg/eclipse/mat/collect/SetInt;

.field dominatorNetSize:J

.field dominatorRetainedSize:J

.field summary:Lorg/eclipse/mat/snapshot/DominatorsSummary;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x1f4

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Lorg/eclipse/mat/collect/SetInt;

    invoke-direct {v0, v1}, Lorg/eclipse/mat/collect/SetInt;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->dominated:Lorg/eclipse/mat/collect/SetInt;

    .line 224
    new-instance v0, Lorg/eclipse/mat/collect/SetInt;

    invoke-direct {v0, v1}, Lorg/eclipse/mat/collect/SetInt;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->dominator:Lorg/eclipse/mat/collect/SetInt;

    return-void
.end method


# virtual methods
.method public addDominated(I)Z
    .locals 1
    .parameter "objectId"

    .prologue
    .line 324
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->dominated:Lorg/eclipse/mat/collect/SetInt;

    invoke-virtual {v0, p1}, Lorg/eclipse/mat/collect/SetInt;->add(I)Z

    move-result v0

    return v0
.end method

.method public addDominatedNetSize(J)V
    .locals 3
    .parameter "size"

    .prologue
    .line 338
    iget-wide v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->dominatedNetSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->dominatedNetSize:J

    .line 339
    return-void
.end method

.method public addDominator(I)Z
    .locals 1
    .parameter "objectId"

    .prologue
    .line 331
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->dominator:Lorg/eclipse/mat/collect/SetInt;

    invoke-virtual {v0, p1}, Lorg/eclipse/mat/collect/SetInt;->add(I)Z

    move-result v0

    return v0
.end method

.method public addDominatorNetSize(J)V
    .locals 3
    .parameter "size"

    .prologue
    .line 345
    iget-wide v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->dominatorNetSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->dominatorNetSize:J

    .line 346
    return-void
.end method

.method public getClassId()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->classId:I

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getClassloaderId()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->classloaderId:I

    return v0
.end method

.method public getDominated()[I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->dominated:Lorg/eclipse/mat/collect/SetInt;

    invoke-virtual {v0}, Lorg/eclipse/mat/collect/SetInt;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public getDominatedCount()I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->dominated:Lorg/eclipse/mat/collect/SetInt;

    invoke-virtual {v0}, Lorg/eclipse/mat/collect/SetInt;->size()I

    move-result v0

    return v0
.end method

.method public getDominatedNetSize()J
    .locals 2

    .prologue
    .line 252
    iget-wide v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->dominatedNetSize:J

    return-wide v0
.end method

.method public getDominatedRetainedSize()J
    .locals 2

    .prologue
    .line 266
    iget-wide v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->dominatedRetainedSize:J

    return-wide v0
.end method

.method public getDominatorCount()I
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->dominator:Lorg/eclipse/mat/collect/SetInt;

    invoke-virtual {v0}, Lorg/eclipse/mat/collect/SetInt;->size()I

    move-result v0

    return v0
.end method

.method public getDominatorNetSize()J
    .locals 2

    .prologue
    .line 259
    iget-wide v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->dominatorNetSize:J

    return-wide v0
.end method

.method public getDominatorRetainedSize()J
    .locals 2

    .prologue
    .line 280
    iget-wide v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->dominatorRetainedSize:J

    return-wide v0
.end method

.method public getDominators()[I
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->dominator:Lorg/eclipse/mat/collect/SetInt;

    invoke-virtual {v0}, Lorg/eclipse/mat/collect/SetInt;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Lorg/eclipse/mat/snapshot/DominatorsSummary;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->summary:Lorg/eclipse/mat/snapshot/DominatorsSummary;

    return-object v0
.end method

.method public setClassId(I)V
    .locals 0
    .parameter "classId"

    .prologue
    .line 245
    iput p1, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->classId:I

    .line 246
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 237
    iput-object p1, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->className:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setClassloaderId(I)V
    .locals 0
    .parameter "classloaderId"

    .prologue
    .line 317
    iput p1, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->classloaderId:I

    .line 318
    return-void
.end method

.method public setDominatedRetainedSize(J)V
    .locals 1
    .parameter "dominatedRetainedSize"

    .prologue
    .line 273
    iput-wide p1, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->dominatedRetainedSize:J

    .line 274
    return-void
.end method

.method public setDominatorRetainedSize(J)V
    .locals 1
    .parameter "dominatorRetainedSize"

    .prologue
    .line 287
    iput-wide p1, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->dominatorRetainedSize:J

    .line 288
    return-void
.end method
