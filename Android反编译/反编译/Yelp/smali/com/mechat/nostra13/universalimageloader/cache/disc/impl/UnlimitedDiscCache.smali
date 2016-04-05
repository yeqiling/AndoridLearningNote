.class public Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;
.super Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/BaseDiscCache;
.source "UnlimitedDiscCache.java"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .parameter "cacheDir"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/BaseDiscCache;-><init>(Ljava/io/File;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .parameter "cacheDir"
    .parameter "reserveCacheDir"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/BaseDiscCache;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V
    .locals 0
    .parameter "cacheDir"
    .parameter "reserveCacheDir"
    .parameter "fileNameGenerator"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/BaseDiscCache;-><init>(Ljava/io/File;Ljava/io/File;Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V

    .line 51
    return-void
.end method
