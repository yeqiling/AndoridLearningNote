.class Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;
.super Ljava/lang/Object;
.source "SnapshotFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/internal/SnapshotFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnapshotEntry"
.end annotation


# instance fields
.field private snapshot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/eclipse/mat/snapshot/ISnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private usageCount:I


# direct methods
.method public constructor <init>(ILorg/eclipse/mat/snapshot/ISnapshot;)V
    .locals 1
    .parameter "usageCount"
    .parameter "snapshot"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;->usageCount:I

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;->snapshot:Ljava/lang/ref/WeakReference;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;->snapshot:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;->usageCount:I

    return v0
.end method

.method static synthetic access$108(Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;->usageCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;->usageCount:I

    return v0
.end method

.method static synthetic access$110(Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;->usageCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;->usageCount:I

    return v0
.end method
