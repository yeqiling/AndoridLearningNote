.class public Llecho/lib/hellocharts/model/Viewport;
.super Ljava/lang/Object;
.source "Viewport.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Llecho/lib/hellocharts/model/Viewport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Llecho/lib/hellocharts/model/Viewport$1;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Viewport$1;-><init>()V

    sput-object v0, Llecho/lib/hellocharts/model/Viewport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 57
    iput p2, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 58
    iput p3, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 59
    iput p4, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 60
    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/Viewport;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-nez p1, :cond_0

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    iget v0, p1, Llecho/lib/hellocharts/model/Viewport;->left:F

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 72
    iget v0, p1, Llecho/lib/hellocharts/model/Viewport;->top:F

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 73
    iget v0, p1, Llecho/lib/hellocharts/model/Viewport;->right:F

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 74
    iget v0, p1, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    goto :goto_0
.end method


# virtual methods
.method public final centerX()F
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    iget v1, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    return v0
.end method

.method public final centerY()F
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    iget v1, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    return v0
.end method

.method public contains(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 225
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    iget v1, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    iget v1, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(FFFF)Z
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 241
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    iget v1, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    iget v1, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_0

    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    cmpl-float v0, v0, p3

    if-ltz v0, :cond_0

    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    cmpg-float v0, v0, p4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Llecho/lib/hellocharts/model/Viewport;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 255
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    iget v1, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    iget v1, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    iget v1, p1, Llecho/lib/hellocharts/model/Viewport;->left:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    iget v1, p1, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    iget v1, p1, Llecho/lib/hellocharts/model/Viewport;->right:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    iget v1, p1, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    if-ne p0, p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 82
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 85
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 86
    check-cast v0, Llecho/lib/hellocharts/model/Viewport;

    .line 87
    .local v0, other:Llecho/lib/hellocharts/model/Viewport;
    iget v3, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    iget v3, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Llecho/lib/hellocharts/model/Viewport;->left:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 90
    goto :goto_0

    .line 91
    :cond_5
    iget v3, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Llecho/lib/hellocharts/model/Viewport;->right:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 92
    goto :goto_0

    .line 93
    :cond_6
    iget v3, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Llecho/lib/hellocharts/model/Viewport;->top:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 94
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 352
    const/16 v0, 0x1f

    .line 353
    .local v0, prime:I
    const/4 v1, 0x1

    .line 354
    .local v1, result:I
    iget v2, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 355
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 356
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 357
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 358
    return v1
.end method

.method public final height()F
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    iget v1, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public inset(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 208
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    add-float/2addr v0, p1

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 209
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    sub-float/2addr v0, p2

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 210
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    sub-float/2addr v0, p1

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 211
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    add-float/2addr v0, p2

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 212
    return-void
.end method

.method public intersect(FFFF)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 312
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    cmpg-float v0, v0, p3

    if-gez v0, :cond_4

    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    cmpg-float v0, v0, p2

    if-gez v0, :cond_4

    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_4

    .line 313
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    .line 314
    iput p1, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 316
    :cond_0
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpl-float v0, v0, p2

    if-lez v0, :cond_1

    .line 317
    iput p2, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 319
    :cond_1
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    cmpl-float v0, v0, p3

    if-lez v0, :cond_2

    .line 320
    iput p3, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 322
    :cond_2
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    cmpg-float v0, v0, p4

    if-gez v0, :cond_3

    .line 323
    iput p4, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 325
    :cond_3
    const/4 v0, 0x1

    .line 327
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public intersect(Llecho/lib/hellocharts/model/Viewport;)Z
    .locals 4
    .parameter "v"

    .prologue
    .line 340
    iget v0, p1, Llecho/lib/hellocharts/model/Viewport;->left:F

    iget v1, p1, Llecho/lib/hellocharts/model/Viewport;->top:F

    iget v2, p1, Llecho/lib/hellocharts/model/Viewport;->right:F

    iget v3, p1, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Llecho/lib/hellocharts/model/Viewport;->intersect(FFFF)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    iget v1, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    iget v1, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offset(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 180
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    add-float/2addr v0, p1

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 181
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    add-float/2addr v0, p2

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 182
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    add-float/2addr v0, p1

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 183
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    add-float/2addr v0, p2

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 184
    return-void
.end method

.method public offsetTo(FF)V
    .locals 2
    .parameter "newLeft"
    .parameter "newTop"

    .prologue
    .line 193
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    iget v1, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    sub-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 194
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    iget v1, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    sub-float v1, p2, v1

    add-float/2addr v0, v1

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 195
    iput p1, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 196
    iput p2, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 197
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 391
    return-void
.end method

.method public set(FFFF)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 154
    iput p1, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 155
    iput p2, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 156
    iput p3, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 157
    iput p4, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 158
    return-void
.end method

.method public set(Llecho/lib/hellocharts/model/Viewport;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 166
    iget v0, p1, Llecho/lib/hellocharts/model/Viewport;->left:F

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 167
    iget v0, p1, Llecho/lib/hellocharts/model/Viewport;->top:F

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 168
    iget v0, p1, Llecho/lib/hellocharts/model/Viewport;->right:F

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 169
    iget v0, p1, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 170
    return-void
.end method

.method public setEmpty()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    iput v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Viewport [left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public union(FFFF)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 270
    cmpg-float v0, p1, p3

    if-gez v0, :cond_3

    cmpg-float v0, p4, p2

    if-gez v0, :cond_3

    .line 271
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    iget v1, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    iget v1, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 272
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    .line 273
    iput p1, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 274
    :cond_0
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpg-float v0, v0, p2

    if-gez v0, :cond_1

    .line 275
    iput p2, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 276
    :cond_1
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    cmpg-float v0, v0, p3

    if-gez v0, :cond_2

    .line 277
    iput p3, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 278
    :cond_2
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    cmpl-float v0, v0, p4

    if-lez v0, :cond_3

    .line 279
    iput p4, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 287
    :cond_3
    :goto_0
    return-void

    .line 281
    :cond_4
    iput p1, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 282
    iput p2, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 283
    iput p3, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 284
    iput p4, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    goto :goto_0
.end method

.method public union(Llecho/lib/hellocharts/model/Viewport;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 296
    iget v0, p1, Llecho/lib/hellocharts/model/Viewport;->left:F

    iget v1, p1, Llecho/lib/hellocharts/model/Viewport;->top:F

    iget v2, p1, Llecho/lib/hellocharts/model/Viewport;->right:F

    iget v3, p1, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Llecho/lib/hellocharts/model/Viewport;->union(FFFF)V

    .line 297
    return-void
.end method

.method public final width()F
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    iget v1, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 374
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->left:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 375
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->top:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 376
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->right:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 377
    iget v0, p0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 378
    return-void
.end method
