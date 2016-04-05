.class public Llecho/lib/hellocharts/model/BubbleChartData;
.super Llecho/lib/hellocharts/model/AbstractChartData;
.source "BubbleChartData.java"


# static fields
.field public static final DEFAULT_BUBBLE_SCALE:F = 1.0f

.field public static final DEFAULT_MIN_BUBBLE_RADIUS_DP:I = 0x6


# instance fields
.field private bubbleScale:F

.field private formatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

.field private hasLabels:Z

.field private hasLabelsOnlyForSelected:Z

.field private minBubbleRadius:I

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/BubbleValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>()V

    .line 16
    new-instance v0, Llecho/lib/hellocharts/formatter/SimpleBubbleChartValueFormatter;

    invoke-direct {v0}, Llecho/lib/hellocharts/formatter/SimpleBubbleChartValueFormatter;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->formatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

    .line 17
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabels:Z

    .line 18
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabelsOnlyForSelected:Z

    .line 19
    const/4 v0, 0x6

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->minBubbleRadius:I

    .line 20
    const/high16 v0, 0x3f80

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->bubbleScale:F

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->values:Ljava/util/List;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/BubbleValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/BubbleValue;>;"
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>()V

    .line 16
    new-instance v0, Llecho/lib/hellocharts/formatter/SimpleBubbleChartValueFormatter;

    invoke-direct {v0}, Llecho/lib/hellocharts/formatter/SimpleBubbleChartValueFormatter;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->formatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

    .line 17
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabels:Z

    .line 18
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabelsOnlyForSelected:Z

    .line 19
    const/4 v0, 0x6

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->minBubbleRadius:I

    .line 20
    const/high16 v0, 0x3f80

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->bubbleScale:F

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->values:Ljava/util/List;

    .line 28
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/BubbleChartData;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/BubbleChartData;

    .line 29
    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/BubbleChartData;)V
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>(Llecho/lib/hellocharts/model/AbstractChartData;)V

    .line 16
    new-instance v2, Llecho/lib/hellocharts/formatter/SimpleBubbleChartValueFormatter;

    invoke-direct {v2}, Llecho/lib/hellocharts/formatter/SimpleBubbleChartValueFormatter;-><init>()V

    iput-object v2, p0, Llecho/lib/hellocharts/model/BubbleChartData;->formatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

    .line 17
    iput-boolean v3, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabels:Z

    .line 18
    iput-boolean v3, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabelsOnlyForSelected:Z

    .line 19
    const/4 v2, 0x6

    iput v2, p0, Llecho/lib/hellocharts/model/BubbleChartData;->minBubbleRadius:I

    .line 20
    const/high16 v2, 0x3f80

    iput v2, p0, Llecho/lib/hellocharts/model/BubbleChartData;->bubbleScale:F

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Llecho/lib/hellocharts/model/BubbleChartData;->values:Ljava/util/List;

    .line 36
    iget-object v2, p1, Llecho/lib/hellocharts/model/BubbleChartData;->formatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

    iput-object v2, p0, Llecho/lib/hellocharts/model/BubbleChartData;->formatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

    .line 37
    iget-boolean v2, p1, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabels:Z

    iput-boolean v2, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabels:Z

    .line 38
    iget-boolean v2, p1, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabelsOnlyForSelected:Z

    iput-boolean v2, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabelsOnlyForSelected:Z

    .line 39
    iget v2, p1, Llecho/lib/hellocharts/model/BubbleChartData;->minBubbleRadius:I

    iput v2, p0, Llecho/lib/hellocharts/model/BubbleChartData;->minBubbleRadius:I

    .line 40
    iget v2, p1, Llecho/lib/hellocharts/model/BubbleChartData;->bubbleScale:F

    iput v2, p0, Llecho/lib/hellocharts/model/BubbleChartData;->bubbleScale:F

    .line 42
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/BubbleChartData;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/BubbleValue;

    .line 43
    .local v0, bubbleValue:Llecho/lib/hellocharts/model/BubbleValue;
    iget-object v2, p0, Llecho/lib/hellocharts/model/BubbleChartData;->values:Ljava/util/List;

    new-instance v3, Llecho/lib/hellocharts/model/BubbleValue;

    invoke-direct {v3, v0}, Llecho/lib/hellocharts/model/BubbleValue;-><init>(Llecho/lib/hellocharts/model/BubbleValue;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    .end local v0           #bubbleValue:Llecho/lib/hellocharts/model/BubbleValue;
    :cond_0
    return-void
.end method

.method public static generateDummyData()Llecho/lib/hellocharts/model/BubbleChartData;
    .locals 8

    .prologue
    const/high16 v7, 0x41b0

    .line 48
    const/4 v1, 0x4

    .line 49
    .local v1, numValues:I
    new-instance v0, Llecho/lib/hellocharts/model/BubbleChartData;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/BubbleChartData;-><init>()V

    .line 50
    .local v0, data:Llecho/lib/hellocharts/model/BubbleChartData;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .local v2, values:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/BubbleValue;>;"
    new-instance v3, Llecho/lib/hellocharts/model/BubbleValue;

    const/4 v4, 0x0

    const/high16 v5, 0x41a0

    const v6, 0x466a6000

    invoke-direct {v3, v4, v5, v6}, Llecho/lib/hellocharts/model/BubbleValue;-><init>(FFF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v3, Llecho/lib/hellocharts/model/BubbleValue;

    const/high16 v4, 0x4040

    const v5, 0x469c4000

    invoke-direct {v3, v4, v7, v5}, Llecho/lib/hellocharts/model/BubbleValue;-><init>(FFF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v3, Llecho/lib/hellocharts/model/BubbleValue;

    const/high16 v4, 0x40a0

    const/high16 v5, 0x41c8

    const v6, 0x459c4000

    invoke-direct {v3, v4, v5, v6}, Llecho/lib/hellocharts/model/BubbleValue;-><init>(FFF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v3, Llecho/lib/hellocharts/model/BubbleValue;

    const/high16 v4, 0x40e0

    const/high16 v5, 0x41f0

    const v6, 0x46ea6000

    invoke-direct {v3, v4, v5, v6}, Llecho/lib/hellocharts/model/BubbleValue;-><init>(FFF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v3, Llecho/lib/hellocharts/model/BubbleValue;

    const/high16 v4, 0x4130

    const/high16 v5, 0x4120

    invoke-direct {v3, v4, v7, v5}, Llecho/lib/hellocharts/model/BubbleValue;-><init>(FFF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/BubbleChartData;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/BubbleChartData;

    .line 57
    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 69
    iget-object v2, p0, Llecho/lib/hellocharts/model/BubbleChartData;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/BubbleValue;

    .line 70
    .local v1, value:Llecho/lib/hellocharts/model/BubbleValue;
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/BubbleValue;->finish()V

    goto :goto_0

    .line 72
    .end local v1           #value:Llecho/lib/hellocharts/model/BubbleValue;
    :cond_0
    return-void
.end method

.method public getBubbleScale()F
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->bubbleScale:F

    return v0
.end method

.method public getFormatter()Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->formatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

    return-object v0
.end method

.method public getMinBubbleRadius()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->minBubbleRadius:I

    return v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/BubbleValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->values:Ljava/util/List;

    return-object v0
.end method

.method public hasLabels()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabels:Z

    return v0
.end method

.method public hasLabelsOnlyForSelected()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabelsOnlyForSelected:Z

    return v0
.end method

.method public setBubbleScale(F)V
    .locals 0
    .parameter "bubbleScale"

    .prologue
    .line 149
    iput p1, p0, Llecho/lib/hellocharts/model/BubbleChartData;->bubbleScale:F

    .line 150
    return-void
.end method

.method public setFormatter(Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;)Llecho/lib/hellocharts/model/BubbleChartData;
    .locals 0
    .parameter "formatter"

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 158
    iput-object p1, p0, Llecho/lib/hellocharts/model/BubbleChartData;->formatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

    .line 160
    :cond_0
    return-object p0
.end method

.method public setHasLabels(Z)Llecho/lib/hellocharts/model/BubbleChartData;
    .locals 1
    .parameter "hasLabels"

    .prologue
    .line 92
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabels:Z

    .line 93
    if-eqz p1, :cond_0

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabelsOnlyForSelected:Z

    .line 96
    :cond_0
    return-object p0
.end method

.method public setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/BubbleChartData;
    .locals 1
    .parameter "hasLabelsOnlyForSelected"

    .prologue
    .line 111
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabelsOnlyForSelected:Z

    .line 112
    if-eqz p1, :cond_0

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabels:Z

    .line 115
    :cond_0
    return-object p0
.end method

.method public setMinBubbleRadius(I)V
    .locals 0
    .parameter "minBubbleRadius"

    .prologue
    .line 132
    iput p1, p0, Llecho/lib/hellocharts/model/BubbleChartData;->minBubbleRadius:I

    .line 133
    return-void
.end method

.method public setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/BubbleChartData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/BubbleValue;",
            ">;)",
            "Llecho/lib/hellocharts/model/BubbleChartData;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/BubbleValue;>;"
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->values:Ljava/util/List;

    .line 84
    :goto_0
    return-object p0

    .line 82
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/model/BubbleChartData;->values:Ljava/util/List;

    goto :goto_0
.end method

.method public update(F)V
    .locals 3
    .parameter "scale"

    .prologue
    .line 62
    iget-object v2, p0, Llecho/lib/hellocharts/model/BubbleChartData;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/BubbleValue;

    .line 63
    .local v1, value:Llecho/lib/hellocharts/model/BubbleValue;
    invoke-virtual {v1, p1}, Llecho/lib/hellocharts/model/BubbleValue;->update(F)V

    goto :goto_0

    .line 65
    .end local v1           #value:Llecho/lib/hellocharts/model/BubbleValue;
    :cond_0
    return-void
.end method
