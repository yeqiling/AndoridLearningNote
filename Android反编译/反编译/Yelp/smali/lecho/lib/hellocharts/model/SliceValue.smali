.class public Llecho/lib/hellocharts/model/SliceValue;
.super Ljava/lang/Object;
.source "SliceValue.java"


# static fields
.field private static final DEFAULT_SLICE_SPACING_DP:I = 0x2


# instance fields
.field private color:I

.field private darkenColor:I

.field private diff:F

.field private label:[C

.field private originValue:F

.field private sliceSpacing:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private value:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    .line 32
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->color:I

    .line 36
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->darkenColor:I

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/SliceValue;->setValue(F)Llecho/lib/hellocharts/model/SliceValue;

    .line 44
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    .line 32
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->color:I

    .line 36
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->darkenColor:I

    .line 47
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/SliceValue;->setValue(F)Llecho/lib/hellocharts/model/SliceValue;

    .line 48
    return-void
.end method

.method public constructor <init>(FI)V
    .locals 1
    .parameter "value"
    .parameter "color"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    .line 32
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->color:I

    .line 36
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->darkenColor:I

    .line 51
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/SliceValue;->setValue(F)Llecho/lib/hellocharts/model/SliceValue;

    .line 52
    invoke-virtual {p0, p2}, Llecho/lib/hellocharts/model/SliceValue;->setColor(I)Llecho/lib/hellocharts/model/SliceValue;

    .line 53
    return-void
.end method

.method public constructor <init>(FII)V
    .locals 1
    .parameter "value"
    .parameter "color"
    .parameter "sliceSpacing"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    .line 32
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->color:I

    .line 36
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->darkenColor:I

    .line 56
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/SliceValue;->setValue(F)Llecho/lib/hellocharts/model/SliceValue;

    .line 57
    invoke-virtual {p0, p2}, Llecho/lib/hellocharts/model/SliceValue;->setColor(I)Llecho/lib/hellocharts/model/SliceValue;

    .line 58
    iput p3, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    .line 59
    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/SliceValue;)V
    .locals 1
    .parameter "sliceValue"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    .line 32
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->color:I

    .line 36
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->darkenColor:I

    .line 62
    iget v0, p1, Llecho/lib/hellocharts/model/SliceValue;->value:F

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/SliceValue;->setValue(F)Llecho/lib/hellocharts/model/SliceValue;

    .line 63
    iget v0, p1, Llecho/lib/hellocharts/model/SliceValue;->color:I

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/SliceValue;->setColor(I)Llecho/lib/hellocharts/model/SliceValue;

    .line 64
    iget v0, p1, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    .line 65
    iget-object v0, p1, Llecho/lib/hellocharts/model/SliceValue;->label:[C

    iput-object v0, p0, Llecho/lib/hellocharts/model/SliceValue;->label:[C

    .line 66
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    if-ne p0, p1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v1

    .line 152
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 154
    check-cast v0, Llecho/lib/hellocharts/model/SliceValue;

    .line 156
    .local v0, that:Llecho/lib/hellocharts/model/SliceValue;
    iget v3, p0, Llecho/lib/hellocharts/model/SliceValue;->color:I

    iget v4, v0, Llecho/lib/hellocharts/model/SliceValue;->color:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 157
    :cond_4
    iget v3, p0, Llecho/lib/hellocharts/model/SliceValue;->darkenColor:I

    iget v4, v0, Llecho/lib/hellocharts/model/SliceValue;->darkenColor:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 158
    :cond_5
    iget v3, v0, Llecho/lib/hellocharts/model/SliceValue;->diff:F

    iget v4, p0, Llecho/lib/hellocharts/model/SliceValue;->diff:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 159
    :cond_6
    iget v3, v0, Llecho/lib/hellocharts/model/SliceValue;->originValue:F

    iget v4, p0, Llecho/lib/hellocharts/model/SliceValue;->originValue:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 160
    :cond_7
    iget v3, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    iget v4, v0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 161
    :cond_8
    iget v3, v0, Llecho/lib/hellocharts/model/SliceValue;->value:F

    iget v4, p0, Llecho/lib/hellocharts/model/SliceValue;->value:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_9

    move v1, v2

    goto :goto_0

    .line 162
    :cond_9
    iget-object v3, p0, Llecho/lib/hellocharts/model/SliceValue;->label:[C

    iget-object v4, v0, Llecho/lib/hellocharts/model/SliceValue;->label:[C

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Llecho/lib/hellocharts/model/SliceValue;->originValue:F

    iget v1, p0, Llecho/lib/hellocharts/model/SliceValue;->diff:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/SliceValue;->setValue(F)Llecho/lib/hellocharts/model/SliceValue;

    .line 74
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Llecho/lib/hellocharts/model/SliceValue;->color:I

    return v0
.end method

.method public getDarkenColor()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Llecho/lib/hellocharts/model/SliceValue;->darkenColor:I

    return v0
.end method

.method public getLabel()[C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Llecho/lib/hellocharts/model/SliceValue;->label:[C

    return-object v0
.end method

.method public getLabelAsChars()[C
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Llecho/lib/hellocharts/model/SliceValue;->label:[C

    return-object v0
.end method

.method public getSliceSpacing()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    iget v0, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    return v0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Llecho/lib/hellocharts/model/SliceValue;->value:F

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 169
    iget v2, p0, Llecho/lib/hellocharts/model/SliceValue;->value:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    iget v2, p0, Llecho/lib/hellocharts/model/SliceValue;->value:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 170
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Llecho/lib/hellocharts/model/SliceValue;->originValue:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    iget v2, p0, Llecho/lib/hellocharts/model/SliceValue;->originValue:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 171
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Llecho/lib/hellocharts/model/SliceValue;->diff:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_3

    iget v2, p0, Llecho/lib/hellocharts/model/SliceValue;->diff:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 172
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Llecho/lib/hellocharts/model/SliceValue;->color:I

    add-int v0, v2, v3

    .line 173
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Llecho/lib/hellocharts/model/SliceValue;->darkenColor:I

    add-int v0, v2, v3

    .line 174
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    add-int v0, v2, v3

    .line 175
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Llecho/lib/hellocharts/model/SliceValue;->label:[C

    if-eqz v3, :cond_0

    iget-object v1, p0, Llecho/lib/hellocharts/model/SliceValue;->label:[C

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([C)I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 176
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 169
    goto :goto_0

    .restart local v0       #result:I
    :cond_2
    move v2, v1

    .line 170
    goto :goto_1

    :cond_3
    move v2, v1

    .line 171
    goto :goto_2
.end method

.method public setColor(I)Llecho/lib/hellocharts/model/SliceValue;
    .locals 1
    .parameter "color"

    .prologue
    .line 104
    iput p1, p0, Llecho/lib/hellocharts/model/SliceValue;->color:I

    .line 105
    invoke-static {p1}, Llecho/lib/hellocharts/util/ChartUtils;->darkenColor(I)I

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->darkenColor:I

    .line 106
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/SliceValue;
    .locals 1
    .parameter "label"

    .prologue
    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/model/SliceValue;->label:[C

    .line 137
    return-object p0
.end method

.method public setLabel([C)Llecho/lib/hellocharts/model/SliceValue;
    .locals 0
    .parameter "label"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 131
    iput-object p1, p0, Llecho/lib/hellocharts/model/SliceValue;->label:[C

    .line 132
    return-object p0
.end method

.method public setSliceSpacing(I)Llecho/lib/hellocharts/model/SliceValue;
    .locals 0
    .parameter "sliceSpacing"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    iput p1, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    .line 121
    return-object p0
.end method

.method public setTarget(F)Llecho/lib/hellocharts/model/SliceValue;
    .locals 1
    .parameter "target"

    .prologue
    .line 94
    iget v0, p0, Llecho/lib/hellocharts/model/SliceValue;->value:F

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/SliceValue;->setValue(F)Llecho/lib/hellocharts/model/SliceValue;

    .line 95
    iget v0, p0, Llecho/lib/hellocharts/model/SliceValue;->originValue:F

    sub-float v0, p1, v0

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->diff:F

    .line 96
    return-object p0
.end method

.method public setValue(F)Llecho/lib/hellocharts/model/SliceValue;
    .locals 1
    .parameter "value"

    .prologue
    .line 81
    iput p1, p0, Llecho/lib/hellocharts/model/SliceValue;->value:F

    .line 82
    iput p1, p0, Llecho/lib/hellocharts/model/SliceValue;->originValue:F

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->diff:F

    .line 84
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SliceValue [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llecho/lib/hellocharts/model/SliceValue;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(F)V
    .locals 2
    .parameter "scale"

    .prologue
    .line 69
    iget v0, p0, Llecho/lib/hellocharts/model/SliceValue;->originValue:F

    iget v1, p0, Llecho/lib/hellocharts/model/SliceValue;->diff:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->value:F

    .line 70
    return-void
.end method
