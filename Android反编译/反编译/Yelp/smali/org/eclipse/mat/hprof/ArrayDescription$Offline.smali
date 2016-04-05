.class Lorg/eclipse/mat/hprof/ArrayDescription$Offline;
.super Lorg/eclipse/mat/hprof/ArrayDescription;
.source "ArrayDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/hprof/ArrayDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Offline"
.end annotation


# instance fields
.field arraySize:I

.field elementSize:I

.field isPrimitive:Z

.field lazyReadContent:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field position:J


# direct methods
.method public constructor <init>(ZJII)V
    .locals 2
    .parameter "isPrimitive"
    .parameter "position"
    .parameter "elementSize"
    .parameter "arraySize"

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/eclipse/mat/hprof/ArrayDescription;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;->lazyReadContent:Ljava/lang/ref/SoftReference;

    .line 27
    iput-boolean p1, p0, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;->isPrimitive:Z

    .line 28
    iput-wide p2, p0, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;->position:J

    .line 29
    iput p4, p0, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;->elementSize:I

    .line 30
    iput p5, p0, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;->arraySize:I

    .line 31
    return-void
.end method


# virtual methods
.method public getArraySize()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;->arraySize:I

    return v0
.end method

.method public getElementSize()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;->elementSize:I

    return v0
.end method

.method public getLazyReadContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;->lazyReadContent:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;->position:J

    return-wide v0
.end method

.method public isPrimitive()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;->isPrimitive:Z

    return v0
.end method

.method public setLazyReadContent(Ljava/lang/Object;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 54
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;->lazyReadContent:Ljava/lang/ref/SoftReference;

    .line 55
    return-void
.end method
