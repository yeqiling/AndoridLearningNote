.class public abstract Lorg/eclipse/mat/parser/index/IndexWriter;
.super Ljava/lang/Object;
.source "IndexWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/parser/index/IndexWriter$LongArray1NWriter;,
        Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;,
        Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;,
        Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexIterator;,
        Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;,
        Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollectorUncompressed;,
        Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NUncompressedCollector;,
        Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;,
        Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NSortedWriter;,
        Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;,
        Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;,
        Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;,
        Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexIterator;,
        Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;,
        Lorg/eclipse/mat/parser/index/IndexWriter$Pages;,
        Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollectorUncompressed;,
        Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;,
        Lorg/eclipse/mat/parser/index/IndexWriter$KeyWriter;
    }
.end annotation


# static fields
.field public static final PAGE_SIZE_INT:I = 0xf4240

.field public static final PAGE_SIZE_LONG:I = 0x7a120


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1213
    return-void
.end method

.method public static copyOf([JI)[J
    .locals 3
    .parameter "original"
    .parameter "newLength"

    .prologue
    const/4 v2, 0x0

    .line 1275
    new-array v0, p1, [J

    .line 1276
    .local v0, copy:[J
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1277
    return-object v0
.end method

.method public static mostSignificantBit(I)I
    .locals 2
    .parameter "x"

    .prologue
    .line 1281
    const/4 v0, 0x0

    .line 1282
    .local v0, length:I
    const/high16 v1, -0x1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 1283
    add-int/lit8 v0, v0, 0x10

    .line 1284
    shr-int/lit8 p0, p0, 0x10

    .line 1286
    :cond_0
    const v1, 0xff00

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    .line 1287
    add-int/lit8 v0, v0, 0x8

    .line 1288
    shr-int/lit8 p0, p0, 0x8

    .line 1290
    :cond_1
    and-int/lit16 v1, p0, 0xf0

    if-eqz v1, :cond_2

    .line 1291
    add-int/lit8 v0, v0, 0x4

    .line 1292
    shr-int/lit8 p0, p0, 0x4

    .line 1294
    :cond_2
    and-int/lit8 v1, p0, 0xc

    if-eqz v1, :cond_3

    .line 1295
    add-int/lit8 v0, v0, 0x2

    .line 1296
    shr-int/lit8 p0, p0, 0x2

    .line 1298
    :cond_3
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_4

    .line 1299
    add-int/lit8 v0, v0, 0x1

    .line 1300
    shr-int/lit8 p0, p0, 0x1

    .line 1302
    :cond_4
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_5

    .line 1303
    add-int/lit8 v0, v0, 0x1

    .line 1307
    :cond_5
    add-int/lit8 v1, v0, -0x1

    return v1
.end method

.method public static mostSignificantBit(J)I
    .locals 4
    .parameter "x"

    .prologue
    .line 1311
    const/16 v2, 0x20

    ushr-long v0, p0, v2

    .line 1312
    .local v0, lead:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    long-to-int v2, p0

    invoke-static {v2}, Lorg/eclipse/mat/parser/index/IndexWriter;->mostSignificantBit(I)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    invoke-static {v2}, Lorg/eclipse/mat/parser/index/IndexWriter;->mostSignificantBit(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    goto :goto_0
.end method
