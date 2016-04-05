.class final Lorg/eclipse/mat/parser/internal/GarbageCleaner$2;
.super Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIntIterator;
.source "GarbageCleaner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/mat/parser/internal/GarbageCleaner;->clean(Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;Ljava/util/Map;Lorg/eclipse/mat/util/IProgressListener;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field a2size:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

.field newIndex:I

.field final synthetic val$arrayObjects:Lorg/eclipse/mat/collect/BitField;

.field final synthetic val$map:[I

.field final synthetic val$preA2size:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;


# direct methods
.method constructor <init>(Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;Lorg/eclipse/mat/collect/BitField;[I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$2;->val$preA2size:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    iput-object p2, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$2;->val$arrayObjects:Lorg/eclipse/mat/collect/BitField;

    iput-object p3, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$2;->val$map:[I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIntIterator;-><init>(Lorg/eclipse/mat/parser/internal/GarbageCleaner$1;)V

    .line 243
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$2;->val$preA2size:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$2;->a2size:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$2;->newIndex:I

    return-void
.end method


# virtual methods
.method doGetNextInt(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 247
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$2;->a2size:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    iget v2, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$2;->nextIndex:I

    invoke-interface {v1, v2}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v0

    .line 248
    .local v0, size:I
    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$2;->val$arrayObjects:Lorg/eclipse/mat/collect/BitField;

    iget v2, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$2;->newIndex:I

    invoke-virtual {v1, v2}, Lorg/eclipse/mat/collect/BitField;->set(I)V

    .line 249
    :cond_0
    iget v1, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$2;->newIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$2;->newIndex:I

    .line 250
    return v0
.end method

.method getMap()[I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$2;->val$map:[I

    return-object v0
.end method
