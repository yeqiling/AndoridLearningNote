.class public Llecho/lib/hellocharts/model/AxisValue;
.super Ljava/lang/Object;
.source "AxisValue.java"


# instance fields
.field private data:Ljava/lang/Object;

.field private label:[C

.field private value:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/AxisValue;->setValue(F)Llecho/lib/hellocharts/model/AxisValue;

    .line 16
    return-void
.end method

.method public constructor <init>(F[C)V
    .locals 0
    .parameter "value"
    .parameter "label"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Llecho/lib/hellocharts/model/AxisValue;->value:F

    .line 20
    iput-object p2, p0, Llecho/lib/hellocharts/model/AxisValue;->label:[C

    .line 21
    return-void
.end method

.method public constructor <init>(F[CLjava/lang/Object;)V
    .locals 0
    .parameter "value"
    .parameter "label"
    .parameter "data"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Llecho/lib/hellocharts/model/AxisValue;->value:F

    .line 25
    iput-object p2, p0, Llecho/lib/hellocharts/model/AxisValue;->label:[C

    .line 26
    iput-object p3, p0, Llecho/lib/hellocharts/model/AxisValue;->data:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/AxisValue;)V
    .locals 1
    .parameter "axisValue"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iget v0, p1, Llecho/lib/hellocharts/model/AxisValue;->value:F

    iput v0, p0, Llecho/lib/hellocharts/model/AxisValue;->value:F

    .line 31
    iget-object v0, p1, Llecho/lib/hellocharts/model/AxisValue;->label:[C

    iput-object v0, p0, Llecho/lib/hellocharts/model/AxisValue;->label:[C

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    if-ne p0, p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 84
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

    .line 86
    check-cast v0, Llecho/lib/hellocharts/model/AxisValue;

    .line 88
    .local v0, axisValue:Llecho/lib/hellocharts/model/AxisValue;
    iget v3, v0, Llecho/lib/hellocharts/model/AxisValue;->value:F

    iget v4, p0, Llecho/lib/hellocharts/model/AxisValue;->value:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 89
    :cond_4
    iget-object v3, p0, Llecho/lib/hellocharts/model/AxisValue;->label:[C

    iget-object v4, v0, Llecho/lib/hellocharts/model/AxisValue;->label:[C

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Llecho/lib/hellocharts/model/AxisValue;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getLabel()[C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Llecho/lib/hellocharts/model/AxisValue;->label:[C

    return-object v0
.end method

.method public getLabelAsChars()[C
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Llecho/lib/hellocharts/model/AxisValue;->label:[C

    return-object v0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Llecho/lib/hellocharts/model/AxisValue;->value:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 96
    iget v2, p0, Llecho/lib/hellocharts/model/AxisValue;->value:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget v2, p0, Llecho/lib/hellocharts/model/AxisValue;->value:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 97
    .local v0, result:I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Llecho/lib/hellocharts/model/AxisValue;->label:[C

    if-eqz v3, :cond_0

    iget-object v1, p0, Llecho/lib/hellocharts/model/AxisValue;->label:[C

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([C)I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 98
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 96
    goto :goto_0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 74
    iput-object p1, p0, Llecho/lib/hellocharts/model/AxisValue;->data:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;
    .locals 1
    .parameter "label"

    .prologue
    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/model/AxisValue;->label:[C

    .line 55
    return-object p0
.end method

.method public setLabel([C)Llecho/lib/hellocharts/model/AxisValue;
    .locals 0
    .parameter "label"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    iput-object p1, p0, Llecho/lib/hellocharts/model/AxisValue;->label:[C

    .line 70
    return-object p0
.end method

.method public setValue(F)Llecho/lib/hellocharts/model/AxisValue;
    .locals 0
    .parameter "value"

    .prologue
    .line 39
    iput p1, p0, Llecho/lib/hellocharts/model/AxisValue;->value:F

    .line 40
    return-object p0
.end method
