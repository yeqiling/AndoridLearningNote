.class public Lcom/boohee/utils/WheelUtils;
.super Ljava/lang/Object;
.source "WheelUtils.java"


# static fields
.field private static lastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNumInterger(IILjava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "min"
    .parameter "max"
    .parameter "unit"

    .prologue
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v1, lists:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sub-int v2, p1, p0

    .line 29
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, v2, :cond_0

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int v4, v0, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public static getWeightDecimal()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, lists:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x9

    if-gt v0, v2, :cond_0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public static isFastDoubleClick()Z
    .locals 6

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 91
    .local v0, time:J
    sget-wide v4, Lcom/boohee/utils/WheelUtils;->lastClickTime:J

    sub-long v2, v0, v4

    .line 92
    .local v2, timeD:J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 93
    const/4 v4, 0x1

    .line 96
    :goto_0
    return v4

    .line 95
    :cond_0
    sput-wide v0, Lcom/boohee/utils/WheelUtils;->lastClickTime:J

    .line 96
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static setCurrentItem(Lkankan/wheel/widget/WheelView;III)V
    .locals 2
    .parameter "wheel"
    .parameter "value"
    .parameter "wheel_min"
    .parameter "defaultValue"

    .prologue
    .line 50
    sub-int v0, p1, p2

    .line 51
    .local v0, index:I
    if-gez v0, :cond_0

    .line 52
    move v0, p3

    .line 54
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lkankan/wheel/widget/WheelView;->setCurrentItem(IZ)V

    .line 55
    return-void
.end method

.method public static setHighlightArray(Lkankan/wheel/widget/WheelView;Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 3
    .parameter "wheel"
    .parameter "context"
    .parameter "strings"
    .parameter "current"

    .prologue
    .line 73
    new-instance v0, Lkankan/wheel/widget/adapters/HighlightArrayWheelAdapter;

    invoke-direct {v0, p1, p2, p3}, Lkankan/wheel/widget/adapters/HighlightArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 74
    .local v0, arrayWheelAdapter:Lkankan/wheel/widget/adapters/HighlightArrayWheelAdapter;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/adapters/HighlightArrayWheelAdapter;->setTextColor(I)V

    .line 75
    invoke-virtual {p0, v0}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    .line 76
    return-void
.end method

.method public static setHighlightNumeric(Lkankan/wheel/widget/WheelView;Landroid/content/Context;III)V
    .locals 3
    .parameter "wheel"
    .parameter "context"
    .parameter "min"
    .parameter "max"
    .parameter "current"

    .prologue
    .line 79
    new-instance v0, Lkankan/wheel/widget/adapters/HighlightNumericWheelAdapter;

    invoke-direct {v0, p1, p2, p3, p4}, Lkankan/wheel/widget/adapters/HighlightNumericWheelAdapter;-><init>(Landroid/content/Context;III)V

    .line 80
    .local v0, arrayWheelAdapter:Lkankan/wheel/widget/adapters/HighlightNumericWheelAdapter;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/adapters/HighlightNumericWheelAdapter;->setTextColor(I)V

    .line 81
    invoke-virtual {p0, v0}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    .line 82
    return-void
.end method

.method public static setWheelArrayText(Lkankan/wheel/widget/WheelView;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3
    .parameter "wheel"
    .parameter "context"
    .parameter "strings"

    .prologue
    .line 59
    new-instance v0, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;

    invoke-direct {v0, p1, p2}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 60
    .local v0, arrayWheelAdapter:Lkankan/wheel/widget/adapters/ArrayWheelAdapter;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d012d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->setTextColor(I)V

    .line 61
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->setTextSize(I)V

    .line 62
    invoke-virtual {p0, v0}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    .line 63
    return-void
.end method

.method public static setWheelNumericText(Lkankan/wheel/widget/WheelView;Landroid/content/Context;II)V
    .locals 3
    .parameter "wheel"
    .parameter "context"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 66
    new-instance v0, Lkankan/wheel/widget/adapters/NumericWheelAdapter;

    invoke-direct {v0, p1, p2, p3}, Lkankan/wheel/widget/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    .line 67
    .local v0, arrayWheelAdapter:Lkankan/wheel/widget/adapters/NumericWheelAdapter;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d012d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/adapters/NumericWheelAdapter;->setTextColor(I)V

    .line 68
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/adapters/NumericWheelAdapter;->setTextSize(I)V

    .line 69
    invoke-virtual {p0, v0}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    .line 70
    return-void
.end method
