.class public Llecho/lib/hellocharts/model/PointValue;
.super Ljava/lang/Object;
.source "PointValue.java"


# instance fields
.field private data:Ljava/lang/Object;

.field private diffX:F

.field private diffY:F

.field private label:[C

.field private originX:F

.field private originY:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iget-object v0, p0, Llecho/lib/hellocharts/model/PointValue;->data:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0, v1, v1}, Llecho/lib/hellocharts/model/PointValue;->set(FF)Llecho/lib/hellocharts/model/PointValue;

    .line 29
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/model/PointValue;->data:Ljava/lang/Object;

    invoke-virtual {p0, v1, v1, v0}, Llecho/lib/hellocharts/model/PointValue;->set(FFLjava/lang/Object;)Llecho/lib/hellocharts/model/PointValue;

    goto :goto_0
.end method

.method public constructor <init>(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p1, p2}, Llecho/lib/hellocharts/model/PointValue;->set(FF)Llecho/lib/hellocharts/model/PointValue;

    .line 33
    return-void
.end method

.method public constructor <init>(FFLjava/lang/Object;)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "data"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Llecho/lib/hellocharts/model/PointValue;->set(FFLjava/lang/Object;)Llecho/lib/hellocharts/model/PointValue;

    .line 37
    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/PointValue;)V
    .locals 3
    .parameter "pointValue"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iget-object v0, p0, Llecho/lib/hellocharts/model/PointValue;->data:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 41
    iget v0, p1, Llecho/lib/hellocharts/model/PointValue;->x:F

    iget v1, p1, Llecho/lib/hellocharts/model/PointValue;->y:F

    invoke-virtual {p0, v0, v1}, Llecho/lib/hellocharts/model/PointValue;->set(FF)Llecho/lib/hellocharts/model/PointValue;

    .line 46
    :goto_0
    iget-object v0, p1, Llecho/lib/hellocharts/model/PointValue;->label:[C

    iput-object v0, p0, Llecho/lib/hellocharts/model/PointValue;->label:[C

    .line 47
    return-void

    .line 43
    :cond_0
    iget v0, p1, Llecho/lib/hellocharts/model/PointValue;->x:F

    iget v1, p1, Llecho/lib/hellocharts/model/PointValue;->y:F

    iget-object v2, p1, Llecho/lib/hellocharts/model/PointValue;->data:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Llecho/lib/hellocharts/model/PointValue;->set(FFLjava/lang/Object;)Llecho/lib/hellocharts/model/PointValue;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    if-ne p0, p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v1

    .line 139
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

    .line 141
    check-cast v0, Llecho/lib/hellocharts/model/PointValue;

    .line 143
    .local v0, that:Llecho/lib/hellocharts/model/PointValue;
    iget v3, v0, Llecho/lib/hellocharts/model/PointValue;->diffX:F

    iget v4, p0, Llecho/lib/hellocharts/model/PointValue;->diffX:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 144
    :cond_4
    iget v3, v0, Llecho/lib/hellocharts/model/PointValue;->diffY:F

    iget v4, p0, Llecho/lib/hellocharts/model/PointValue;->diffY:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 145
    :cond_5
    iget v3, v0, Llecho/lib/hellocharts/model/PointValue;->originX:F

    iget v4, p0, Llecho/lib/hellocharts/model/PointValue;->originX:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 146
    :cond_6
    iget v3, v0, Llecho/lib/hellocharts/model/PointValue;->originY:F

    iget v4, p0, Llecho/lib/hellocharts/model/PointValue;->originY:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 147
    :cond_7
    iget v3, v0, Llecho/lib/hellocharts/model/PointValue;->x:F

    iget v4, p0, Llecho/lib/hellocharts/model/PointValue;->x:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_8

    move v1, v2

    goto :goto_0

    .line 148
    :cond_8
    iget v3, v0, Llecho/lib/hellocharts/model/PointValue;->y:F

    iget v4, p0, Llecho/lib/hellocharts/model/PointValue;->y:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_9

    move v1, v2

    goto :goto_0

    .line 149
    :cond_9
    iget-object v3, p0, Llecho/lib/hellocharts/model/PointValue;->label:[C

    iget-object v4, v0, Llecho/lib/hellocharts/model/PointValue;->label:[C

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Llecho/lib/hellocharts/model/PointValue;->data:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 56
    iget v0, p0, Llecho/lib/hellocharts/model/PointValue;->originX:F

    iget v1, p0, Llecho/lib/hellocharts/model/PointValue;->diffX:F

    add-float/2addr v0, v1

    iget v1, p0, Llecho/lib/hellocharts/model/PointValue;->originY:F

    iget v2, p0, Llecho/lib/hellocharts/model/PointValue;->diffY:F

    add-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Llecho/lib/hellocharts/model/PointValue;->set(FF)Llecho/lib/hellocharts/model/PointValue;

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    iget v0, p0, Llecho/lib/hellocharts/model/PointValue;->originX:F

    iget v1, p0, Llecho/lib/hellocharts/model/PointValue;->diffX:F

    add-float/2addr v0, v1

    iget v1, p0, Llecho/lib/hellocharts/model/PointValue;->originY:F

    iget v2, p0, Llecho/lib/hellocharts/model/PointValue;->diffY:F

    add-float/2addr v1, v2

    iget-object v2, p0, Llecho/lib/hellocharts/model/PointValue;->data:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Llecho/lib/hellocharts/model/PointValue;->set(FFLjava/lang/Object;)Llecho/lib/hellocharts/model/PointValue;

    goto :goto_0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Llecho/lib/hellocharts/model/PointValue;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getLabel()[C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Llecho/lib/hellocharts/model/PointValue;->label:[C

    return-object v0
.end method

.method public getLabelAsChars()[C
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Llecho/lib/hellocharts/model/PointValue;->label:[C

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Llecho/lib/hellocharts/model/PointValue;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Llecho/lib/hellocharts/model/PointValue;->y:F

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 156
    iget v2, p0, Llecho/lib/hellocharts/model/PointValue;->x:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    iget v2, p0, Llecho/lib/hellocharts/model/PointValue;->x:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 157
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Llecho/lib/hellocharts/model/PointValue;->y:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    iget v2, p0, Llecho/lib/hellocharts/model/PointValue;->y:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 158
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Llecho/lib/hellocharts/model/PointValue;->originX:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_3

    iget v2, p0, Llecho/lib/hellocharts/model/PointValue;->originX:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 159
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Llecho/lib/hellocharts/model/PointValue;->originY:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_4

    iget v2, p0, Llecho/lib/hellocharts/model/PointValue;->originY:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 160
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Llecho/lib/hellocharts/model/PointValue;->diffX:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_5

    iget v2, p0, Llecho/lib/hellocharts/model/PointValue;->diffX:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 161
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Llecho/lib/hellocharts/model/PointValue;->diffY:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_6

    iget v2, p0, Llecho/lib/hellocharts/model/PointValue;->diffY:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 162
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Llecho/lib/hellocharts/model/PointValue;->label:[C

    if-eqz v3, :cond_0

    iget-object v1, p0, Llecho/lib/hellocharts/model/PointValue;->label:[C

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([C)I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 163
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 156
    goto :goto_0

    .restart local v0       #result:I
    :cond_2
    move v2, v1

    .line 157
    goto :goto_1

    :cond_3
    move v2, v1

    .line 158
    goto :goto_2

    :cond_4
    move v2, v1

    .line 159
    goto :goto_3

    :cond_5
    move v2, v1

    .line 160
    goto :goto_4

    :cond_6
    move v2, v1

    .line 161
    goto :goto_5
.end method

.method public set(FF)Llecho/lib/hellocharts/model/PointValue;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 64
    iput p1, p0, Llecho/lib/hellocharts/model/PointValue;->x:F

    .line 65
    iput p2, p0, Llecho/lib/hellocharts/model/PointValue;->y:F

    .line 66
    iput p1, p0, Llecho/lib/hellocharts/model/PointValue;->originX:F

    .line 67
    iput p2, p0, Llecho/lib/hellocharts/model/PointValue;->originY:F

    .line 68
    iput v0, p0, Llecho/lib/hellocharts/model/PointValue;->diffX:F

    .line 69
    iput v0, p0, Llecho/lib/hellocharts/model/PointValue;->diffY:F

    .line 70
    return-object p0
.end method

.method public set(FFLjava/lang/Object;)Llecho/lib/hellocharts/model/PointValue;
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 74
    iput p1, p0, Llecho/lib/hellocharts/model/PointValue;->x:F

    .line 75
    iput p2, p0, Llecho/lib/hellocharts/model/PointValue;->y:F

    .line 76
    iput p1, p0, Llecho/lib/hellocharts/model/PointValue;->originX:F

    .line 77
    iput p2, p0, Llecho/lib/hellocharts/model/PointValue;->originY:F

    .line 78
    iput v0, p0, Llecho/lib/hellocharts/model/PointValue;->diffX:F

    .line 79
    iput v0, p0, Llecho/lib/hellocharts/model/PointValue;->diffY:F

    .line 80
    iput-object p3, p0, Llecho/lib/hellocharts/model/PointValue;->data:Ljava/lang/Object;

    .line 81
    return-object p0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 124
    iput-object p1, p0, Llecho/lib/hellocharts/model/PointValue;->data:Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/PointValue;
    .locals 1
    .parameter "label"

    .prologue
    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/model/PointValue;->label:[C

    .line 109
    return-object p0
.end method

.method public setLabel([C)Llecho/lib/hellocharts/model/PointValue;
    .locals 0
    .parameter "label"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    iput-object p1, p0, Llecho/lib/hellocharts/model/PointValue;->label:[C

    .line 119
    return-object p0
.end method

.method public setTarget(FFLjava/lang/Object;)Llecho/lib/hellocharts/model/PointValue;
    .locals 2
    .parameter "targetX"
    .parameter "targetY"
    .parameter "data"

    .prologue
    .line 88
    iget v0, p0, Llecho/lib/hellocharts/model/PointValue;->x:F

    iget v1, p0, Llecho/lib/hellocharts/model/PointValue;->y:F

    invoke-virtual {p0, v0, v1, p3}, Llecho/lib/hellocharts/model/PointValue;->set(FFLjava/lang/Object;)Llecho/lib/hellocharts/model/PointValue;

    .line 89
    iget v0, p0, Llecho/lib/hellocharts/model/PointValue;->originX:F

    sub-float v0, p1, v0

    iput v0, p0, Llecho/lib/hellocharts/model/PointValue;->diffX:F

    .line 90
    iget v0, p0, Llecho/lib/hellocharts/model/PointValue;->originY:F

    sub-float v0, p2, v0

    iput v0, p0, Llecho/lib/hellocharts/model/PointValue;->diffY:F

    .line 91
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PointValue [x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llecho/lib/hellocharts/model/PointValue;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llecho/lib/hellocharts/model/PointValue;->y:F

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
    .line 50
    iget v0, p0, Llecho/lib/hellocharts/model/PointValue;->originX:F

    iget v1, p0, Llecho/lib/hellocharts/model/PointValue;->diffX:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Llecho/lib/hellocharts/model/PointValue;->x:F

    .line 51
    iget v0, p0, Llecho/lib/hellocharts/model/PointValue;->originY:F

    iget v1, p0, Llecho/lib/hellocharts/model/PointValue;->diffY:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Llecho/lib/hellocharts/model/PointValue;->y:F

    .line 52
    return-void
.end method
