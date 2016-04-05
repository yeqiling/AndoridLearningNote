.class abstract Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIntIterator;
.super Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIterator;
.source "GarbageCleaner.java"

# interfaces
.implements Lorg/eclipse/mat/collect/IteratorInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/internal/GarbageCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NewObjectIntIterator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIterator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/mat/parser/internal/GarbageCleaner$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 395
    invoke-direct {p0}, Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIntIterator;-><init>()V

    return-void
.end method


# virtual methods
.method abstract doGetNextInt(I)I
.end method

.method public next()I
    .locals 2

    .prologue
    .line 398
    iget v1, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIntIterator;->nextIndex:I

    invoke-virtual {p0, v1}, Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIntIterator;->doGetNextInt(I)I

    move-result v0

    .line 399
    .local v0, answer:I
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIntIterator;->findNext()V

    .line 400
    return v0
.end method
