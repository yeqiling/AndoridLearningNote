.class public Lorg/eclipse/mat/collect/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static countsort([I[I[I[IIIII)V
    .locals 10
    .parameter "srcKeys"
    .parameter "destKeys"
    .parameter "srcValues"
    .parameter "destValues"
    .parameter "srcOffset"
    .parameter "trgOffset"
    .parameter "length"
    .parameter "sortByte"

    .prologue
    .line 303
    const/16 v7, 0x100

    new-array v1, v7, [I

    .line 304
    .local v1, count:[I
    const/16 v7, 0x100

    new-array v4, v7, [I

    .line 306
    .local v4, index:[I
    mul-int/lit8 v5, p7, 0x8

    .line 307
    .local v5, shiftBits:I
    add-int v6, p4, p6

    .line 309
    .local v6, srcEnd:I
    move v2, p4

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 310
    aget v7, p0, v2

    shr-int/2addr v7, v5

    and-int/lit16 v7, v7, 0xff

    aget v8, v1, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v1, v7

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    :cond_0
    const/4 v7, 0x3

    move/from16 v0, p7

    if-ne v0, v7, :cond_2

    .line 315
    const/16 v2, 0x81

    :goto_1
    const/16 v7, 0x100

    if-ge v2, v7, :cond_1

    .line 316
    add-int/lit8 v7, v2, -0x1

    aget v7, v4, v7

    add-int/lit8 v8, v2, -0x1

    aget v8, v1, v8

    add-int/2addr v7, v8

    aput v7, v4, v2

    .line 315
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 317
    :cond_1
    const/4 v7, 0x0

    const/16 v8, 0xff

    aget v8, v4, v8

    const/16 v9, 0xff

    aget v9, v1, v9

    add-int/2addr v8, v9

    aput v8, v4, v7

    .line 318
    const/4 v2, 0x1

    :goto_2
    const/16 v7, 0x80

    if-ge v2, v7, :cond_3

    .line 319
    add-int/lit8 v7, v2, -0x1

    aget v7, v4, v7

    add-int/lit8 v8, v2, -0x1

    aget v8, v1, v8

    add-int/2addr v7, v8

    aput v7, v4, v2

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 322
    :cond_2
    const/4 v2, 0x1

    :goto_3
    const/16 v7, 0x100

    if-ge v2, v7, :cond_3

    .line 323
    add-int/lit8 v7, v2, -0x1

    aget v7, v4, v7

    add-int/lit8 v8, v2, -0x1

    aget v8, v1, v8

    add-int/2addr v7, v8

    aput v7, v4, v2

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 326
    :cond_3
    move v2, p4

    :goto_4
    if-ge v2, v6, :cond_4

    .line 327
    aget v7, p0, v2

    shr-int/2addr v7, v5

    and-int/lit16 v3, v7, 0xff

    .line 328
    .local v3, idx:I
    aget v7, v4, v3

    add-int/2addr v7, p5

    aget v8, p2, v2

    aput v8, p3, v7

    .line 329
    aget v7, v4, v3

    add-int/lit8 v8, v7, 0x1

    aput v8, v4, v3

    add-int/2addr v7, p5

    aget v8, p0, v2

    aput v8, p1, v7

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 331
    .end local v3           #idx:I
    :cond_4
    return-void
.end method

.method private static countsortDesc([J[J[I[IIIII)V
    .locals 12
    .parameter "srcKeys"
    .parameter "destKeys"
    .parameter "srcValues"
    .parameter "destValues"
    .parameter "srcOffset"
    .parameter "trgOffset"
    .parameter "length"
    .parameter "sortByte"

    .prologue
    .line 335
    const/16 v8, 0x100

    new-array v2, v8, [I

    .line 336
    .local v2, count:[I
    const/16 v8, 0x100

    new-array v5, v8, [I

    .line 338
    .local v5, index:[I
    mul-int/lit8 v6, p7, 0x8

    .line 339
    .local v6, shiftBits:I
    add-int v7, p4, p6

    .line 341
    .local v7, srcEnd:I
    move/from16 v3, p4

    .local v3, i:I
    :goto_0
    if-ge v3, v7, :cond_0

    .line 342
    aget-wide v8, p0, v3

    shr-long/2addr v8, v6

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    aget v9, v2, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v2, v8

    .line 341
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 344
    :cond_0
    const/4 v8, 0x7

    move/from16 v0, p7

    if-ne v0, v8, :cond_2

    .line 347
    const/16 v3, 0x7e

    :goto_1
    if-ltz v3, :cond_1

    .line 348
    add-int/lit8 v8, v3, 0x1

    aget v8, v5, v8

    add-int/lit8 v9, v3, 0x1

    aget v9, v2, v9

    add-int/2addr v8, v9

    aput v8, v5, v3

    .line 347
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 349
    :cond_1
    const/16 v8, 0xff

    const/4 v9, 0x0

    aget v9, v5, v9

    const/4 v10, 0x0

    aget v10, v2, v10

    add-int/2addr v9, v10

    aput v9, v5, v8

    .line 350
    const/16 v3, 0xfe

    :goto_2
    const/16 v8, 0x80

    if-lt v3, v8, :cond_3

    .line 351
    add-int/lit8 v8, v3, 0x1

    aget v8, v5, v8

    add-int/lit8 v9, v3, 0x1

    aget v9, v2, v9

    add-int/2addr v8, v9

    aput v8, v5, v3

    .line 350
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 354
    :cond_2
    const/16 v3, 0xfe

    :goto_3
    if-ltz v3, :cond_3

    .line 355
    add-int/lit8 v8, v3, 0x1

    aget v8, v5, v8

    add-int/lit8 v9, v3, 0x1

    aget v9, v2, v9

    add-int/2addr v8, v9

    aput v8, v5, v3

    .line 354
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 358
    :cond_3
    move/from16 v3, p4

    :goto_4
    if-ge v3, v7, :cond_4

    .line 359
    aget-wide v8, p0, v3

    shr-long/2addr v8, v6

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v4, v8

    .line 360
    .local v4, idx:I
    aget v8, v5, v4

    add-int v8, v8, p5

    aget v9, p2, v3

    aput v9, p3, v8

    .line 361
    aget v8, v5, v4

    add-int/lit8 v9, v8, 0x1

    aput v9, v5, v4

    add-int v8, v8, p5

    aget-wide v10, p0, v3

    aput-wide v10, p1, v8

    .line 358
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 363
    .end local v4           #idx:I
    :cond_4
    return-void
.end method

.method private static hybridsort([I[III)V
    .locals 7
    .parameter "keys"
    .parameter "values"
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 210
    :goto_0
    sub-int v3, p3, p2

    if-lt v3, v5, :cond_0

    .line 211
    sub-int v3, p3, p2

    const v4, 0x4c4b40

    if-ge v3, v4, :cond_1

    .line 212
    sub-int v3, p3, p2

    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, p1, p2, v3}, Lorg/eclipse/mat/collect/ArrayUtils;->radixsort([I[III)V

    .line 237
    :cond_0
    return-void

    .line 218
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/mat/collect/ArrayUtils;->split([I[III)[I

    move-result-object v0

    .line 220
    .local v0, i:[I
    aget v3, v0, v6

    sub-int v1, v3, p2

    .line 221
    .local v1, sizeLeft:I
    aget v3, v0, v5

    sub-int v2, p3, v3

    .line 224
    .local v2, sizeRight:I
    if-gt v1, v2, :cond_2

    .line 226
    aget v3, v0, v6

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, p1, p2, v3}, Lorg/eclipse/mat/collect/ArrayUtils;->hybridsort([I[III)V

    .line 228
    aget v3, v0, v5

    add-int/lit8 p2, v3, 0x1

    goto :goto_0

    .line 231
    :cond_2
    aget v3, v0, v5

    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, p1, v3, p3}, Lorg/eclipse/mat/collect/ArrayUtils;->hybridsort([I[III)V

    .line 233
    aget v3, v0, v6

    add-int/lit8 p3, v3, -0x1

    goto :goto_0
.end method

.method private static hybridsortDesc([J[I[J[III)V
    .locals 10
    .parameter "keys"
    .parameter "values"
    .parameter "tmpKeys"
    .parameter "tmpValues"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 241
    :goto_0
    sub-int v0, p5, p4

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 242
    sub-int v0, p5, p4

    const v1, 0x4c4b40

    if-ge v0, v1, :cond_3

    .line 245
    sub-int v0, p5, p4

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 246
    move v6, p4

    .local v6, i:I
    :goto_1
    if-gt v6, p5, :cond_2

    .line 247
    move v7, v6

    .local v7, j:I
    :goto_2
    if-le v7, p4, :cond_0

    add-int/lit8 v0, v7, -0x1

    aget-wide v0, p0, v0

    aget-wide v2, p0, v7

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 248
    add-int/lit8 v0, v7, -0x1

    invoke-static {p0, p1, v7, v0}, Lorg/eclipse/mat/collect/ArrayUtils;->swap([J[III)V

    .line 247
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 246
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 251
    .end local v6           #i:I
    .end local v7           #j:I
    :cond_1
    sub-int v0, p5, p4

    add-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/eclipse/mat/collect/ArrayUtils;->radixsortDesc([J[I[J[III)V

    .line 276
    :cond_2
    return-void

    .line 257
    :cond_3
    invoke-static {p0, p1, p4, p5}, Lorg/eclipse/mat/collect/ArrayUtils;->splitDesc([J[III)[I

    move-result-object v6

    .line 259
    .local v6, i:[I
    const/4 v0, 0x0

    aget v0, v6, v0

    sub-int v8, v0, p4

    .line 260
    .local v8, sizeLeft:I
    const/4 v0, 0x1

    aget v0, v6, v0

    sub-int v9, p5, v0

    .line 263
    .local v9, sizeRight:I
    if-gt v8, v9, :cond_4

    .line 265
    const/4 v0, 0x0

    aget v0, v6, v0

    add-int/lit8 v5, v0, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/eclipse/mat/collect/ArrayUtils;->hybridsortDesc([J[I[J[III)V

    .line 267
    const/4 v0, 0x1

    aget v0, v6, v0

    add-int/lit8 p4, v0, 0x1

    goto :goto_0

    .line 270
    :cond_4
    const/4 v0, 0x1

    aget v0, v6, v0

    add-int/lit8 v4, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/eclipse/mat/collect/ArrayUtils;->hybridsortDesc([J[I[J[III)V

    .line 272
    const/4 v0, 0x0

    aget v0, v6, v0

    add-int/lit8 p5, v0, -0x1

    goto :goto_0
.end method

.method private static median([IIII)I
    .locals 3
    .parameter "x"
    .parameter "pos1"
    .parameter "pos2"
    .parameter "pos3"

    .prologue
    .line 114
    aget v0, p0, p1

    .line 115
    .local v0, v1:I
    aget v1, p0, p2

    .line 116
    .local v1, v2:I
    aget v2, p0, p3

    .line 118
    .local v2, v3:I
    if-ge v0, v1, :cond_2

    .line 119
    if-gt v1, v2, :cond_1

    move p3, p2

    .line 130
    .end local p3
    :cond_0
    :goto_0
    return p3

    .line 122
    .restart local p3
    :cond_1
    if-lt v0, v2, :cond_0

    move p3, p1

    goto :goto_0

    .line 127
    :cond_2
    if-gt v0, v2, :cond_3

    move p3, p1

    .line 128
    goto :goto_0

    .line 130
    :cond_3
    if-lt v1, v2, :cond_0

    move p3, p2

    goto :goto_0
.end method

.method private static median([JIII)I
    .locals 7
    .parameter "x"
    .parameter "pos1"
    .parameter "pos2"
    .parameter "pos3"

    .prologue
    .line 135
    aget-wide v0, p0, p1

    .line 136
    .local v0, v1:J
    aget-wide v2, p0, p2

    .line 137
    .local v2, v2:J
    aget-wide v4, p0, p3

    .line 139
    .local v4, v3:J
    cmp-long v6, v0, v2

    if-gez v6, :cond_2

    .line 140
    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    move p3, p2

    .line 151
    .end local p3
    :cond_0
    :goto_0
    return p3

    .line 143
    .restart local p3
    :cond_1
    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    move p3, p1

    goto :goto_0

    .line 148
    :cond_2
    cmp-long v6, v0, v4

    if-gtz v6, :cond_3

    move p3, p1

    .line 149
    goto :goto_0

    .line 151
    :cond_3
    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    move p3, p2

    goto :goto_0
.end method

.method private static radixsort([I[III)V
    .locals 9
    .parameter "keys"
    .parameter "values"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v5, 0x0

    .line 279
    new-array v1, p3, [I

    .line 280
    .local v1, tempKeys:[I
    new-array v3, p3, [I

    .local v3, tempValues:[I
    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v6, p3

    move v7, v5

    .line 281
    invoke-static/range {v0 .. v7}, Lorg/eclipse/mat/collect/ArrayUtils;->countsort([I[I[I[IIIII)V

    .line 282
    const/4 v8, 0x1

    move-object v2, p0

    move-object v4, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v8}, Lorg/eclipse/mat/collect/ArrayUtils;->countsort([I[I[I[IIIII)V

    .line 283
    const/4 v7, 0x2

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v6, p3

    invoke-static/range {v0 .. v7}, Lorg/eclipse/mat/collect/ArrayUtils;->countsort([I[I[I[IIIII)V

    .line 284
    const/4 v8, 0x3

    move-object v2, p0

    move-object v4, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v8}, Lorg/eclipse/mat/collect/ArrayUtils;->countsort([I[I[I[IIIII)V

    .line 285
    return-void
.end method

.method private static radixsortDesc([J[I[J[III)V
    .locals 9
    .parameter "keys"
    .parameter "values"
    .parameter "tempKeys"
    .parameter "tempValues"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v5, 0x0

    .line 289
    if-nez p2, :cond_0

    new-array p2, p5, [J

    .line 290
    :cond_0
    if-nez p3, :cond_1

    new-array p3, p5, [I

    :cond_1
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move v6, p5

    move v7, v5

    .line 291
    invoke-static/range {v0 .. v7}, Lorg/eclipse/mat/collect/ArrayUtils;->countsortDesc([J[J[I[IIIII)V

    .line 292
    const/4 v8, 0x1

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move v6, p4

    move v7, p5

    invoke-static/range {v1 .. v8}, Lorg/eclipse/mat/collect/ArrayUtils;->countsortDesc([J[J[I[IIIII)V

    .line 293
    const/4 v7, 0x2

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Lorg/eclipse/mat/collect/ArrayUtils;->countsortDesc([J[J[I[IIIII)V

    .line 294
    const/4 v8, 0x3

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move v6, p4

    move v7, p5

    invoke-static/range {v1 .. v8}, Lorg/eclipse/mat/collect/ArrayUtils;->countsortDesc([J[J[I[IIIII)V

    .line 295
    const/4 v7, 0x4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Lorg/eclipse/mat/collect/ArrayUtils;->countsortDesc([J[J[I[IIIII)V

    .line 296
    const/4 v8, 0x5

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move v6, p4

    move v7, p5

    invoke-static/range {v1 .. v8}, Lorg/eclipse/mat/collect/ArrayUtils;->countsortDesc([J[J[I[IIIII)V

    .line 297
    const/4 v7, 0x6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Lorg/eclipse/mat/collect/ArrayUtils;->countsortDesc([J[J[I[IIIII)V

    .line 298
    const/4 v8, 0x7

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move v6, p4

    move v7, p5

    invoke-static/range {v1 .. v8}, Lorg/eclipse/mat/collect/ArrayUtils;->countsortDesc([J[J[I[IIIII)V

    .line 299
    return-void
.end method

.method public static sort([I[I)V
    .locals 2
    .parameter "keys"
    .parameter "values"

    .prologue
    .line 30
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/eclipse/mat/collect/ArrayUtils;->hybridsort([I[III)V

    .line 31
    return-void
.end method

.method public static sort([I[III)V
    .locals 1
    .parameter "keys"
    .parameter "values"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 82
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/eclipse/mat/collect/ArrayUtils;->hybridsort([I[III)V

    .line 83
    return-void
.end method

.method public static sortDesc([J[I)V
    .locals 6
    .parameter "keys"
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 46
    const/4 v4, 0x0

    array-length v0, p0

    add-int/lit8 v5, v0, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    invoke-static/range {v0 .. v5}, Lorg/eclipse/mat/collect/ArrayUtils;->hybridsortDesc([J[I[J[III)V

    .line 47
    return-void
.end method

.method public static sortDesc([J[I[J[I)V
    .locals 6
    .parameter "a"
    .parameter "b"
    .parameter "tmpa"
    .parameter "tmpb"

    .prologue
    .line 66
    const/4 v4, 0x0

    array-length v0, p0

    add-int/lit8 v5, v0, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lorg/eclipse/mat/collect/ArrayUtils;->hybridsortDesc([J[I[J[III)V

    .line 67
    return-void
.end method

.method private static split([I[III)[I
    .locals 8
    .parameter "keys"
    .parameter "values"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 157
    sub-int v5, p3, p2

    shr-int/lit8 v5, v5, 0x1

    add-int/2addr v5, p2

    invoke-static {p0, p2, p3, v5}, Lorg/eclipse/mat/collect/ArrayUtils;->median([IIII)I

    move-result v3

    .line 158
    .local v3, splittingIdx:I
    aget v4, p0, v3

    .line 161
    .local v4, splittingValue:I
    invoke-static {p0, p1, p2, v3}, Lorg/eclipse/mat/collect/ArrayUtils;->swap([I[III)V

    .line 163
    move v1, p2

    .line 164
    .local v1, i:I
    const/4 v0, 0x0

    .line 165
    .local v0, c:I
    add-int/lit8 v2, p2, 0x1

    .local v2, j:I
    :goto_0
    if-gt v2, p3, :cond_2

    .line 166
    aget v5, p0, v2

    if-ge v5, v4, :cond_1

    .line 167
    add-int/lit8 v1, v1, 0x1

    .line 168
    invoke-static {p0, p1, v1, v2}, Lorg/eclipse/mat/collect/ArrayUtils;->swap([I[III)V

    .line 171
    if-lez v0, :cond_0

    add-int v5, v1, v0

    invoke-static {p0, p1, v5, v2}, Lorg/eclipse/mat/collect/ArrayUtils;->swap([I[III)V

    .line 165
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_1
    aget v5, p0, v2

    if-ne v5, v4, :cond_0

    .line 173
    add-int/lit8 v0, v0, 0x1

    .line 174
    add-int v5, v1, v0

    invoke-static {p0, p1, v5, v2}, Lorg/eclipse/mat/collect/ArrayUtils;->swap([I[III)V

    goto :goto_1

    .line 177
    :cond_2
    invoke-static {p0, p1, p2, v1}, Lorg/eclipse/mat/collect/ArrayUtils;->swap([I[III)V

    .line 179
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v6, 0x1

    add-int v7, v1, v0

    aput v7, v5, v6

    return-object v5
.end method

.method private static splitDesc([J[III)[I
    .locals 9
    .parameter "keys"
    .parameter "values"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 184
    sub-int v6, p3, p2

    shr-int/lit8 v6, v6, 0x1

    add-int/2addr v6, p2

    invoke-static {p0, p2, p3, v6}, Lorg/eclipse/mat/collect/ArrayUtils;->median([JIII)I

    move-result v3

    .line 185
    .local v3, splittingIdx:I
    aget-wide v4, p0, v3

    .line 188
    .local v4, splittingValue:J
    invoke-static {p0, p1, p2, v3}, Lorg/eclipse/mat/collect/ArrayUtils;->swap([J[III)V

    .line 190
    move v1, p2

    .line 191
    .local v1, i:I
    const/4 v0, 0x0

    .line 192
    .local v0, c:I
    add-int/lit8 v2, p2, 0x1

    .local v2, j:I
    :goto_0
    if-gt v2, p3, :cond_2

    .line 193
    aget-wide v6, p0, v2

    cmp-long v6, v6, v4

    if-lez v6, :cond_1

    .line 194
    add-int/lit8 v1, v1, 0x1

    .line 195
    invoke-static {p0, p1, v1, v2}, Lorg/eclipse/mat/collect/ArrayUtils;->swap([J[III)V

    .line 198
    if-lez v0, :cond_0

    add-int v6, v1, v0

    invoke-static {p0, p1, v6, v2}, Lorg/eclipse/mat/collect/ArrayUtils;->swap([J[III)V

    .line 192
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :cond_1
    aget-wide v6, p0, v2

    cmp-long v6, v6, v4

    if-nez v6, :cond_0

    .line 200
    add-int/lit8 v0, v0, 0x1

    .line 201
    add-int v6, v1, v0

    invoke-static {p0, p1, v6, v2}, Lorg/eclipse/mat/collect/ArrayUtils;->swap([J[III)V

    goto :goto_1

    .line 204
    :cond_2
    invoke-static {p0, p1, p2, v1}, Lorg/eclipse/mat/collect/ArrayUtils;->swap([J[III)V

    .line 206
    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v1, v6, v7

    const/4 v7, 0x1

    add-int v8, v1, v0

    aput v8, v6, v7

    return-object v6
.end method

.method private static swap([I[III)V
    .locals 2
    .parameter "keys"
    .parameter "values"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 91
    aget v0, p0, p2

    .line 92
    .local v0, tmp:I
    aget v1, p0, p3

    aput v1, p0, p2

    .line 93
    aput v0, p0, p3

    .line 96
    aget v0, p1, p2

    .line 97
    aget v1, p1, p3

    aput v1, p1, p2

    .line 98
    aput v0, p1, p3

    .line 99
    return-void
.end method

.method private static swap([J[III)V
    .locals 6
    .parameter "keys"
    .parameter "values"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 103
    aget-wide v0, p0, p2

    .line 104
    .local v0, tmpKey:J
    aget-wide v4, p0, p3

    aput-wide v4, p0, p2

    .line 105
    aput-wide v0, p0, p3

    .line 108
    aget v2, p1, p2

    .line 109
    .local v2, tmpValue:I
    aget v3, p1, p3

    aput v3, p1, p2

    .line 110
    aput v2, p1, p3

    .line 111
    return-void
.end method
