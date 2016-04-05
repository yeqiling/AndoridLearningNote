.class public Llecho/lib/hellocharts/model/BubbleValue;
.super Ljava/lang/Object;
.source "BubbleValue.java"


# instance fields
.field private color:I

.field private darkenColor:I

.field private diffX:F

.field private diffY:F

.field private diffZ:F

.field private label:[C

.field private originX:F

.field private originY:F

.field private originZ:F

.field private shape:Llecho/lib/hellocharts/model/ValueShape;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->color:I

    .line 54
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->darkenColor:I

    .line 55
    sget-object v0, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->shape:Llecho/lib/hellocharts/model/ValueShape;

    .line 59
    invoke-virtual {p0, v1, v1, v1}, Llecho/lib/hellocharts/model/BubbleValue;->set(FFF)Llecho/lib/hellocharts/model/BubbleValue;

    .line 60
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->color:I

    .line 54
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->darkenColor:I

    .line 55
    sget-object v0, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->shape:Llecho/lib/hellocharts/model/ValueShape;

    .line 63
    invoke-virtual {p0, p1, p2, p3}, Llecho/lib/hellocharts/model/BubbleValue;->set(FFF)Llecho/lib/hellocharts/model/BubbleValue;

    .line 64
    return-void
.end method

.method public constructor <init>(FFFI)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "color"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->color:I

    .line 54
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->darkenColor:I

    .line 55
    sget-object v0, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->shape:Llecho/lib/hellocharts/model/ValueShape;

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Llecho/lib/hellocharts/model/BubbleValue;->set(FFF)Llecho/lib/hellocharts/model/BubbleValue;

    .line 68
    invoke-virtual {p0, p4}, Llecho/lib/hellocharts/model/BubbleValue;->setColor(I)Llecho/lib/hellocharts/model/BubbleValue;

    .line 69
    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/BubbleValue;)V
    .locals 3
    .parameter "bubbleValue"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->color:I

    .line 54
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->darkenColor:I

    .line 55
    sget-object v0, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->shape:Llecho/lib/hellocharts/model/ValueShape;

    .line 72
    iget v0, p1, Llecho/lib/hellocharts/model/BubbleValue;->x:F

    iget v1, p1, Llecho/lib/hellocharts/model/BubbleValue;->y:F

    iget v2, p1, Llecho/lib/hellocharts/model/BubbleValue;->z:F

    invoke-virtual {p0, v0, v1, v2}, Llecho/lib/hellocharts/model/BubbleValue;->set(FFF)Llecho/lib/hellocharts/model/BubbleValue;

    .line 73
    iget v0, p1, Llecho/lib/hellocharts/model/BubbleValue;->color:I

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/BubbleValue;->setColor(I)Llecho/lib/hellocharts/model/BubbleValue;

    .line 74
    iget-object v0, p1, Llecho/lib/hellocharts/model/BubbleValue;->label:[C

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->label:[C

    .line 75
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    if-ne p0, p1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v1

    .line 174
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

    .line 176
    check-cast v0, Llecho/lib/hellocharts/model/BubbleValue;

    .line 178
    .local v0, that:Llecho/lib/hellocharts/model/BubbleValue;
    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->color:I

    iget v4, v0, Llecho/lib/hellocharts/model/BubbleValue;->color:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 179
    :cond_4
    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->darkenColor:I

    iget v4, v0, Llecho/lib/hellocharts/model/BubbleValue;->darkenColor:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 180
    :cond_5
    iget v3, v0, Llecho/lib/hellocharts/model/BubbleValue;->diffX:F

    iget v4, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffX:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 181
    :cond_6
    iget v3, v0, Llecho/lib/hellocharts/model/BubbleValue;->diffY:F

    iget v4, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffY:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 182
    :cond_7
    iget v3, v0, Llecho/lib/hellocharts/model/BubbleValue;->diffZ:F

    iget v4, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffZ:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_8

    move v1, v2

    goto :goto_0

    .line 183
    :cond_8
    iget v3, v0, Llecho/lib/hellocharts/model/BubbleValue;->originX:F

    iget v4, p0, Llecho/lib/hellocharts/model/BubbleValue;->originX:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_9

    move v1, v2

    goto :goto_0

    .line 184
    :cond_9
    iget v3, v0, Llecho/lib/hellocharts/model/BubbleValue;->originY:F

    iget v4, p0, Llecho/lib/hellocharts/model/BubbleValue;->originY:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_a

    move v1, v2

    goto :goto_0

    .line 185
    :cond_a
    iget v3, v0, Llecho/lib/hellocharts/model/BubbleValue;->originZ:F

    iget v4, p0, Llecho/lib/hellocharts/model/BubbleValue;->originZ:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_b

    move v1, v2

    goto :goto_0

    .line 186
    :cond_b
    iget v3, v0, Llecho/lib/hellocharts/model/BubbleValue;->x:F

    iget v4, p0, Llecho/lib/hellocharts/model/BubbleValue;->x:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_c

    move v1, v2

    goto :goto_0

    .line 187
    :cond_c
    iget v3, v0, Llecho/lib/hellocharts/model/BubbleValue;->y:F

    iget v4, p0, Llecho/lib/hellocharts/model/BubbleValue;->y:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_d

    move v1, v2

    goto/16 :goto_0

    .line 188
    :cond_d
    iget v3, v0, Llecho/lib/hellocharts/model/BubbleValue;->z:F

    iget v4, p0, Llecho/lib/hellocharts/model/BubbleValue;->z:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_e

    move v1, v2

    goto/16 :goto_0

    .line 189
    :cond_e
    iget-object v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->label:[C

    iget-object v4, v0, Llecho/lib/hellocharts/model/BubbleValue;->label:[C

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_f

    move v1, v2

    goto/16 :goto_0

    .line 190
    :cond_f
    iget-object v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->shape:Llecho/lib/hellocharts/model/ValueShape;

    iget-object v4, v0, Llecho/lib/hellocharts/model/BubbleValue;->shape:Llecho/lib/hellocharts/model/ValueShape;

    if-eq v3, v4, :cond_0

    move v1, v2

    goto/16 :goto_0
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 84
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->originX:F

    iget v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffX:F

    add-float/2addr v0, v1

    iget v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->originY:F

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffY:F

    add-float/2addr v1, v2

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->originZ:F

    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffZ:F

    add-float/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Llecho/lib/hellocharts/model/BubbleValue;->set(FFF)Llecho/lib/hellocharts/model/BubbleValue;

    .line 85
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->color:I

    return v0
.end method

.method public getDarkenColor()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->darkenColor:I

    return v0
.end method

.method public getLabel()[C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->label:[C

    return-object v0
.end method

.method public getLabelAsChars()[C
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->label:[C

    return-object v0
.end method

.method public getShape()Llecho/lib/hellocharts/model/ValueShape;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->shape:Llecho/lib/hellocharts/model/ValueShape;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->z:F

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 197
    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->x:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->x:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 198
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->y:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->y:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 199
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->z:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_3

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->z:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 200
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->originX:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_4

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->originX:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 201
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->originY:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_5

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->originY:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 202
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->originZ:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_6

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->originZ:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 203
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffX:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_7

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffX:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 204
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffY:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_8

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffY:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_7
    add-int v0, v3, v2

    .line 205
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffZ:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_9

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffZ:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_8
    add-int v0, v3, v2

    .line 206
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->color:I

    add-int v0, v2, v3

    .line 207
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->darkenColor:I

    add-int v0, v2, v3

    .line 208
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->shape:Llecho/lib/hellocharts/model/ValueShape;

    if-eqz v2, :cond_a

    iget-object v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->shape:Llecho/lib/hellocharts/model/ValueShape;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/ValueShape;->hashCode()I

    move-result v2

    :goto_9
    add-int v0, v3, v2

    .line 209
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->label:[C

    if-eqz v3, :cond_0

    iget-object v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->label:[C

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([C)I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 210
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 197
    goto/16 :goto_0

    .restart local v0       #result:I
    :cond_2
    move v2, v1

    .line 198
    goto/16 :goto_1

    :cond_3
    move v2, v1

    .line 199
    goto/16 :goto_2

    :cond_4
    move v2, v1

    .line 200
    goto/16 :goto_3

    :cond_5
    move v2, v1

    .line 201
    goto :goto_4

    :cond_6
    move v2, v1

    .line 202
    goto :goto_5

    :cond_7
    move v2, v1

    .line 203
    goto :goto_6

    :cond_8
    move v2, v1

    .line 204
    goto :goto_7

    :cond_9
    move v2, v1

    .line 205
    goto :goto_8

    :cond_a
    move v2, v1

    .line 208
    goto :goto_9
.end method

.method public set(FFF)Llecho/lib/hellocharts/model/BubbleValue;
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v0, 0x0

    .line 88
    iput p1, p0, Llecho/lib/hellocharts/model/BubbleValue;->x:F

    .line 89
    iput p2, p0, Llecho/lib/hellocharts/model/BubbleValue;->y:F

    .line 90
    iput p3, p0, Llecho/lib/hellocharts/model/BubbleValue;->z:F

    .line 91
    iput p1, p0, Llecho/lib/hellocharts/model/BubbleValue;->originX:F

    .line 92
    iput p2, p0, Llecho/lib/hellocharts/model/BubbleValue;->originY:F

    .line 93
    iput p3, p0, Llecho/lib/hellocharts/model/BubbleValue;->originZ:F

    .line 94
    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffX:F

    .line 95
    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffY:F

    .line 96
    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffZ:F

    .line 97
    return-object p0
.end method

.method public setColor(I)Llecho/lib/hellocharts/model/BubbleValue;
    .locals 1
    .parameter "color"

    .prologue
    .line 128
    iput p1, p0, Llecho/lib/hellocharts/model/BubbleValue;->color:I

    .line 129
    invoke-static {p1}, Llecho/lib/hellocharts/util/ChartUtils;->darkenColor(I)I

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->darkenColor:I

    .line 130
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/BubbleValue;
    .locals 1
    .parameter "label"

    .prologue
    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->label:[C

    .line 153
    return-object p0
.end method

.method public setLabel([C)Llecho/lib/hellocharts/model/BubbleValue;
    .locals 0
    .parameter "label"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 162
    iput-object p1, p0, Llecho/lib/hellocharts/model/BubbleValue;->label:[C

    .line 163
    return-object p0
.end method

.method public setShape(Llecho/lib/hellocharts/model/ValueShape;)Llecho/lib/hellocharts/model/BubbleValue;
    .locals 0
    .parameter "shape"

    .prologue
    .line 142
    iput-object p1, p0, Llecho/lib/hellocharts/model/BubbleValue;->shape:Llecho/lib/hellocharts/model/ValueShape;

    .line 143
    return-object p0
.end method

.method public setTarget(FFF)Llecho/lib/hellocharts/model/BubbleValue;
    .locals 3
    .parameter "targetX"
    .parameter "targetY"
    .parameter "targetZ"

    .prologue
    .line 104
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->x:F

    iget v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->y:F

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->z:F

    invoke-virtual {p0, v0, v1, v2}, Llecho/lib/hellocharts/model/BubbleValue;->set(FFF)Llecho/lib/hellocharts/model/BubbleValue;

    .line 105
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->originX:F

    sub-float v0, p1, v0

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffX:F

    .line 106
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->originY:F

    sub-float v0, p2, v0

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffY:F

    .line 107
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->originZ:F

    sub-float v0, p3, v0

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffZ:F

    .line 108
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BubbleValue [x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->z:F

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
    .line 78
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->originX:F

    iget v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffX:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->x:F

    .line 79
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->originY:F

    iget v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffY:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->y:F

    .line 80
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->originZ:F

    iget v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffZ:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->z:F

    .line 81
    return-void
.end method
