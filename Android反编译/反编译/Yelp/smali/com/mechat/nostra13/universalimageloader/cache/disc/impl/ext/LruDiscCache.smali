.class public Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;
.super Ljava/lang/Object;
.source "LruDiscCache.java"

# interfaces
.implements Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x8000

.field public static final DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat; = null

.field public static final DEFAULT_COMPRESS_QUALITY:I = 0x64

.field private static final ERROR_ARG_NEGATIVE:Ljava/lang/String; = " argument must be positive number"

.field private static final ERROR_ARG_NULL:Ljava/lang/String; = " argument must be not null"


# instance fields
.field protected bufferSize:I

.field protected cache:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

.field protected compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field protected compressQuality:I

.field protected final fileNameGenerator:Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

.field private reserveCacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;J)V
    .locals 7
    .parameter "cacheDir"
    .parameter "fileNameGenerator"
    .parameter "cacheMaxSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;-><init>(Ljava/io/File;Ljava/io/File;Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;JI)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;JI)V
    .locals 8
    .parameter "cacheDir"
    .parameter "reserveCacheDir"
    .parameter "fileNameGenerator"
    .parameter "cacheMaxSize"
    .parameter "cacheMaxFileCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const v0, 0x8000

    iput v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->bufferSize:I

    .line 58
    sget-object v0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 59
    const/16 v0, 0x64

    iput v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->compressQuality:I

    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheDir argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    cmp-long v0, p4, v2

    if-gez v0, :cond_1

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheMaxSize argument must be positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    if-gez p6, :cond_2

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheMaxFileCount argument must be positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_2
    if-nez p3, :cond_3

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fileNameGenerator argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_3
    cmp-long v0, p4, v2

    if-nez v0, :cond_4

    .line 99
    const-wide p4, 0x7fffffffffffffffL

    .line 101
    :cond_4
    if-nez p6, :cond_5

    .line 102
    const p6, 0x7fffffff

    .line 105
    :cond_5
    iput-object p2, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->reserveCacheDir:Ljava/io/File;

    .line 106
    iput-object p3, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->fileNameGenerator:Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p4

    move v6, p6

    .line 107
    invoke-direct/range {v1 .. v6}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->initCache(Ljava/io/File;Ljava/io/File;JI)V

    .line 108
    return-void
.end method

.method private getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "imageUri"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->fileNameGenerator:Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initCache(Ljava/io/File;Ljava/io/File;JI)V
    .locals 7
    .parameter "cacheDir"
    .parameter "reserveCacheDir"
    .parameter "cacheMaxSize"
    .parameter "cacheMaxFileCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v1, p1

    move-wide v4, p3

    move v6, p5

    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->open(Ljava/io/File;IIJI)Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    move-result-object v1

    iput-object v1, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/mechat/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 116
    if-eqz p2, :cond_1

    .line 117
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->initCache(Ljava/io/File;Ljava/io/File;JI)V

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    if-nez v1, :cond_0

    .line 120
    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 7

    .prologue
    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->delete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->reserveCacheDir:Ljava/io/File;

    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->getMaxSize()J

    move-result-wide v4

    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->getMaxFileCount()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->initCache(Ljava/io/File;Ljava/io/File;JI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    :goto_1
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/mechat/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 219
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 220
    .restart local v0       #e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/mechat/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public close()V
    .locals 2

    .prologue
    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    .line 208
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/mechat/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .parameter "imageUri"

    .prologue
    const/4 v2, 0x0

    .line 132
    const/4 v1, 0x0

    .line 134
    .local v1, snapshot:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;
    :try_start_0
    iget-object v3, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->get(Ljava/lang/String;)Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 135
    if-nez v1, :cond_1

    .line 140
    :goto_0
    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->close()V

    .line 138
    :cond_0
    :goto_1
    return-object v2

    .line 135
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->getFile(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    invoke-static {v0}, Lcom/mechat/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->close()V

    goto :goto_1

    .line 139
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 140
    if-eqz v1, :cond_2

    .line 141
    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->close()V

    .line 143
    :cond_2
    throw v2
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-virtual {v0}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 3
    .parameter "imageUri"

    .prologue
    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 196
    :goto_0
    return v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/mechat/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 196
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 5
    .parameter "imageUri"
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v3, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->edit(Ljava/lang/String;)Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v0

    .line 171
    .local v0, editor:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    if-nez v0, :cond_0

    .line 187
    :goto_0
    return v2

    .line 175
    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, v2}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v3

    iget v4, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->bufferSize:I

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 176
    .local v1, os:Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 178
    .local v2, savedSuccessfully:Z
    :try_start_0
    iget-object v3, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v4, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->compressQuality:I

    invoke-virtual {p2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 180
    invoke-static {v1}, Lcom/mechat/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 182
    if-eqz v2, :cond_1

    .line 183
    invoke-virtual {v0}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->commit()V

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v3

    .line 180
    invoke-static {v1}, Lcom/mechat/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 181
    throw v3

    .line 185
    :cond_1
    invoke-virtual {v0}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->abort()V

    goto :goto_0
.end method

.method public save(Ljava/lang/String;Ljava/io/InputStream;Lcom/mechat/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z
    .locals 5
    .parameter "imageUri"
    .parameter "imageStream"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 148
    iget-object v3, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->edit(Ljava/lang/String;)Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v1

    .line 149
    .local v1, editor:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    if-nez v1, :cond_0

    .line 165
    :goto_0
    return v0

    .line 153
    :cond_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, v0}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v3

    iget v4, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->bufferSize:I

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 154
    .local v2, os:Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 156
    .local v0, copied:Z
    :try_start_0
    iget v3, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->bufferSize:I

    invoke-static {p2, v2, p3, v3}, Lcom/mechat/nostra13/universalimageloader/utils/IoUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/mechat/nostra13/universalimageloader/utils/IoUtils$CopyListener;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 158
    invoke-static {v2}, Lcom/mechat/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 159
    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->commit()V

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v3

    .line 158
    invoke-static {v2}, Lcom/mechat/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 159
    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->commit()V

    .line 164
    :goto_1
    throw v3

    .line 162
    :cond_1
    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->abort()V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->abort()V

    goto :goto_0
.end method

.method public setBufferSize(I)V
    .locals 0
    .parameter "bufferSize"

    .prologue
    .line 229
    iput p1, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->bufferSize:I

    .line 230
    return-void
.end method

.method public setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 0
    .parameter "compressFormat"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 234
    return-void
.end method

.method public setCompressQuality(I)V
    .locals 0
    .parameter "compressQuality"

    .prologue
    .line 237
    iput p1, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;->compressQuality:I

    .line 238
    return-void
.end method
