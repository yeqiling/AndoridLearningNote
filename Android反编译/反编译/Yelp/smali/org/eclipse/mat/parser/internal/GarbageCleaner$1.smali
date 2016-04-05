.class final Lorg/eclipse/mat/parser/internal/GarbageCleaner$1;
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
.field final synthetic val$idx:Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;

.field final synthetic val$map:[I


# direct methods
.method constructor <init>([ILorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$1;->val$map:[I

    iput-object p2, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$1;->val$idx:Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIntIterator;-><init>(Lorg/eclipse/mat/parser/internal/GarbageCleaner$1;)V

    return-void
.end method


# virtual methods
.method doGetNextInt(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 214
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$1;->val$map:[I

    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$1;->val$idx:Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;

    iget-object v1, v1, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->object2classId:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    iget v2, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$1;->nextIndex:I

    invoke-interface {v1, v2}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method getMap()[I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$1;->val$map:[I

    return-object v0
.end method
