.class public Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/WeakMemoryCache;
.super Lcom/mechat/nostra13/universalimageloader/cache/memory/BaseMemoryCache;
.source "WeakMemoryCache.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/cache/memory/BaseMemoryCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createReference(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference;
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
