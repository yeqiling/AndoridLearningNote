.class abstract Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIterator;
.super Ljava/lang/Object;
.source "GarbageCleaner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/internal/GarbageCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NewObjectIterator"
.end annotation


# instance fields
.field $map:[I

.field nextIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIterator;->nextIndex:I

    .line 379
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIterator;->getMap()[I

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIterator;->$map:[I

    .line 380
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIterator;->findNext()V

    .line 381
    return-void
.end method


# virtual methods
.method protected findNext()V
    .locals 2

    .prologue
    .line 384
    iget v0, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIterator;->nextIndex:I

    .line 385
    :goto_0
    iget v0, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIterator;->nextIndex:I

    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIterator;->$map:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIterator;->$map:[I

    iget v1, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIterator;->nextIndex:I

    aget v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIterator;->nextIndex:I

    goto :goto_0

    .line 386
    :cond_0
    return-void
.end method

.method abstract getMap()[I
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 389
    iget v0, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIterator;->nextIndex:I

    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIterator;->$map:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
