.class Lorg/eclipse/mat/parser/internal/GarbageCleaner$KeyWriterImpl;
.super Ljava/lang/Object;
.source "GarbageCleaner.java"

# interfaces
.implements Lorg/eclipse/mat/parser/index/IndexWriter$KeyWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/internal/GarbageCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyWriterImpl"
.end annotation


# instance fields
.field classesByNewId:Lorg/eclipse/mat/collect/HashMapIntObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/parser/model/ClassImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/eclipse/mat/collect/HashMapIntObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/parser/model/ClassImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, classesByNewId:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/parser/model/ClassImpl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$KeyWriterImpl;->classesByNewId:Lorg/eclipse/mat/collect/HashMapIntObject;

    .line 411
    return-void
.end method


# virtual methods
.method public storeKey(ILjava/io/Serializable;)V
    .locals 2
    .parameter "index"
    .parameter "key"

    .prologue
    .line 414
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/GarbageCleaner$KeyWriterImpl;->classesByNewId:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v1, p1}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 415
    .local v0, impl:Lorg/eclipse/mat/parser/model/ClassImpl;
    invoke-virtual {v0, p2}, Lorg/eclipse/mat/parser/model/ClassImpl;->setCacheEntry(Ljava/io/Serializable;)V

    .line 416
    return-void
.end method
