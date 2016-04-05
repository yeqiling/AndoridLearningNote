.class public Lorg/eclipse/mat/hprof/HprofHeapObjectReader;
.super Ljava/lang/Object;
.source "HprofHeapObjectReader.java"

# interfaces
.implements Lorg/eclipse/mat/parser/IObjectReader;


# static fields
.field public static final VERSION_PROPERTY:Ljava/lang/String; = "hprof.version"


# instance fields
.field private enhancers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/hprof/extension/IRuntimeEnhancer;",
            ">;"
        }
    .end annotation
.end field

.field private hprofDump:Lorg/eclipse/mat/hprof/HprofRandomAccessParser;

.field private o2hprof:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

.field private snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convert(Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;[B)Ljava/lang/Object;
    .locals 8
    .parameter "array"
    .parameter "content"

    .prologue
    .line 117
    invoke-virtual {p1}, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->getType()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 153
    .end local p2
    :goto_0
    return-object p2

    .line 119
    .restart local p2
    :cond_0
    sget-object v5, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->ELEMENT_SIZE:[I

    invoke-virtual {p1}, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->getType()I

    move-result v6

    aget v1, v5, v6

    .line 120
    .local v1, elementSize:I
    array-length v5, p2

    div-int v4, v5, v1

    .line 122
    .local v4, length:I
    sget-object v5, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->COMPONENT_TYPE:[Ljava/lang/Class;

    invoke-virtual {p1}, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->getType()I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 124
    .local v0, answer:Ljava/lang/Object;
    const/4 v3, 0x0

    .line 125
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, ii:I
    :goto_1
    array-length v5, p2

    if-ge v2, v5, :cond_2

    .line 126
    invoke-virtual {p1}, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 150
    :goto_2
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    .line 125
    add-int/2addr v2, v1

    goto :goto_1

    .line 128
    :pswitch_1
    aget-byte v5, p2, v2

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0, v3, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    goto :goto_3

    .line 131
    :pswitch_2
    invoke-direct {p0, p2, v2}, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->readChar([BI)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-static {v0, v3, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    .line 134
    :pswitch_3
    invoke-direct {p0, p2, v2}, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->readFloat([BI)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v0, v3, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    .line 137
    :pswitch_4
    invoke-direct {p0, p2, v2}, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->readDouble([BI)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v0, v3, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    .line 140
    :pswitch_5
    invoke-direct {p0, p2, v2}, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->readShort([BI)S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-static {v0, v3, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    .line 143
    :pswitch_6
    invoke-direct {p0, p2, v2}, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->readInt([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v3, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    .line 146
    :pswitch_7
    invoke-direct {p0, p2, v2}, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->readLong([BI)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v3, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object p2, v0

    .line 153
    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private fragment(Lorg/eclipse/mat/parser/model/AbstractArrayImpl;Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 2
    .parameter "array"
    .parameter "content"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 157
    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/mat/parser/model/AbstractArrayImpl;->getLength()I

    move-result v1

    if-ne p4, v1, :cond_0

    .line 161
    .end local p2
    :goto_0
    return-object p2

    .line 159
    .restart local p2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 160
    .local v0, answer:Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v0

    .line 161
    goto :goto_0
.end method

.method private readChar([BI)C
    .locals 3
    .parameter "data"
    .parameter "offset"

    .prologue
    .line 200
    aget-byte v2, p1, p2

    and-int/lit16 v0, v2, 0xff

    .line 201
    .local v0, b1:I
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v1, v2, 0xff

    .line 202
    .local v1, b2:I
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    int-to-char v2, v2

    return v2
.end method

.method private readDouble([BI)D
    .locals 2
    .parameter "data"
    .parameter "offset"

    .prologue
    .line 229
    invoke-direct {p0, p1, p2}, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->readLong([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method private readFloat([BI)F
    .locals 1
    .parameter "data"
    .parameter "offset"

    .prologue
    .line 214
    invoke-direct {p0, p1, p2}, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->readInt([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method private readInt([BI)I
    .locals 6
    .parameter "data"
    .parameter "offset"

    .prologue
    .line 206
    aget-byte v4, p1, p2

    and-int/lit16 v0, v4, 0xff

    .line 207
    .local v0, ch1:I
    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v1, v4, 0xff

    .line 208
    .local v1, ch2:I
    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v2, v4, 0xff

    .line 209
    .local v2, ch3:I
    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v3, v4, 0xff

    .line 210
    .local v3, ch4:I
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x0

    add-int/2addr v4, v5

    return v4
.end method

.method private readLong([BI)J
    .locals 5
    .parameter "data"
    .parameter "offset"

    .prologue
    .line 218
    aget-byte v0, p1, p2

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private readShort([BI)S
    .locals 3
    .parameter "data"
    .parameter "offset"

    .prologue
    .line 194
    aget-byte v2, p1, p2

    and-int/lit16 v0, v2, 0xff

    .line 195
    .local v0, b1:I
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v1, v2, 0xff

    .line 196
    .local v1, b2:I
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    int-to-short v2, v2

    return v2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->hprofDump:Lorg/eclipse/mat/hprof/HprofRandomAccessParser;

    invoke-virtual {v0}, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->o2hprof:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    invoke-interface {v0}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    :goto_1
    return-void

    .line 185
    :catch_0
    move-exception v0

    goto :goto_1

    .line 180
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getAddon(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 170
    .local p1, addon:Ljava/lang/Class;,"Ljava/lang/Class<TA;>;"
    iget-object v3, p0, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->enhancers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/mat/hprof/extension/IRuntimeEnhancer;

    .line 171
    .local v1, enhancer:Lorg/eclipse/mat/hprof/extension/IRuntimeEnhancer;
    iget-object v3, p0, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;

    invoke-interface {v1, v3, p1}, Lorg/eclipse/mat/hprof/extension/IRuntimeEnhancer;->getAddon(Lorg/eclipse/mat/snapshot/ISnapshot;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 172
    .local v0, answer:Ljava/lang/Object;,"TA;"
    if-eqz v0, :cond_0

    .line 174
    .end local v0           #answer:Ljava/lang/Object;,"TA;"
    .end local v1           #enhancer:Lorg/eclipse/mat/hprof/extension/IRuntimeEnhancer;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Lorg/eclipse/mat/snapshot/ISnapshot;)V
    .locals 5
    .parameter "snapshot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;

    .line 43
    invoke-interface {p1}, Lorg/eclipse/mat/snapshot/ISnapshot;->getSnapshotInfo()Lorg/eclipse/mat/snapshot/SnapshotInfo;

    move-result-object v1

    const-string v2, "hprof.version"

    invoke-virtual {v1, v2}, Lorg/eclipse/mat/snapshot/SnapshotInfo;->getProperty(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/mat/hprof/AbstractParser$Version;->valueOf(Ljava/lang/String;)Lorg/eclipse/mat/hprof/AbstractParser$Version;

    move-result-object v0

    .line 46
    .local v0, version:Lorg/eclipse/mat/hprof/AbstractParser$Version;
    new-instance v1, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;

    new-instance v2, Ljava/io/File;

    invoke-interface {p1}, Lorg/eclipse/mat/snapshot/ISnapshot;->getSnapshotInfo()Lorg/eclipse/mat/snapshot/SnapshotInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/mat/snapshot/SnapshotInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/mat/snapshot/ISnapshot;->getSnapshotInfo()Lorg/eclipse/mat/snapshot/SnapshotInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/mat/snapshot/SnapshotInfo;->getIdentifierSize()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;-><init>(Ljava/io/File;Lorg/eclipse/mat/hprof/AbstractParser$Version;I)V

    iput-object v1, p0, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->hprofDump:Lorg/eclipse/mat/hprof/HprofRandomAccessParser;

    .line 49
    new-instance v1, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/eclipse/mat/snapshot/ISnapshot;->getSnapshotInfo()Lorg/eclipse/mat/snapshot/SnapshotInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/mat/snapshot/SnapshotInfo;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "o2hprof.index"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->o2hprof:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->enhancers:Ljava/util/List;

    .line 60
    return-void
.end method

.method public read(ILorg/eclipse/mat/snapshot/ISnapshot;)Lorg/eclipse/mat/snapshot/model/IObject;
    .locals 3
    .parameter "objectId"
    .parameter "snapshot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v2, p0, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->o2hprof:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    invoke-interface {v2, p1}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->get(I)J

    move-result-wide v0

    .line 166
    .local v0, filePosition:J
    iget-object v2, p0, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->hprofDump:Lorg/eclipse/mat/hprof/HprofRandomAccessParser;

    invoke-virtual {v2, p1, v0, v1, p2}, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->read(IJLorg/eclipse/mat/snapshot/ISnapshot;)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v2

    return-object v2
.end method

.method public readObjectArrayContent(Lorg/eclipse/mat/parser/model/ObjectArrayImpl;II)[J
    .locals 4
    .parameter "array"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->getInfo()Ljava/lang/Object;

    move-result-object v2

    .line 66
    .local v2, info:Ljava/lang/Object;
    instance-of v3, v2, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 67
    check-cast v1, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;

    .line 69
    .local v1, description:Lorg/eclipse/mat/hprof/ArrayDescription$Offline;
    invoke-virtual {v1}, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;->getLazyReadContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    move-object v0, v3

    check-cast v0, [J

    .line 70
    .local v0, answer:[J
    if-nez v0, :cond_1

    .line 71
    iget-object v3, p0, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->hprofDump:Lorg/eclipse/mat/hprof/HprofRandomAccessParser;

    invoke-virtual {v3, v1, p2, p3}, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->readObjectArray(Lorg/eclipse/mat/hprof/ArrayDescription$Offline;II)[J

    move-result-object v0

    .line 74
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->getLength()I

    move-result v3

    if-ne p3, v3, :cond_0

    invoke-virtual {v1, v0}, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;->setLazyReadContent(Ljava/lang/Object;)V

    :cond_0
    move-object v3, v0

    .line 81
    .end local v0           #answer:[J
    .end local v1           #description:Lorg/eclipse/mat/hprof/ArrayDescription$Offline;
    :goto_0
    return-object v3

    .line 78
    .restart local v0       #answer:[J
    .restart local v1       #description:Lorg/eclipse/mat/hprof/ArrayDescription$Offline;
    :cond_1
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->fragment(Lorg/eclipse/mat/parser/model/AbstractArrayImpl;Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    check-cast v3, [J

    goto :goto_0

    .line 80
    .end local v0           #answer:[J
    .end local v1           #description:Lorg/eclipse/mat/hprof/ArrayDescription$Offline;
    :cond_2
    instance-of v3, v2, [J

    if-eqz v3, :cond_3

    .line 81
    invoke-direct {p0, p1, v2, p2, p3}, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->fragment(Lorg/eclipse/mat/parser/model/AbstractArrayImpl;Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    check-cast v3, [J

    goto :goto_0

    .line 83
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public readPrimitiveArrayContent(Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;II)Ljava/lang/Object;
    .locals 4
    .parameter "array"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p1}, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->getInfo()Ljava/lang/Object;

    move-result-object v2

    .line 91
    .local v2, info:Ljava/lang/Object;
    instance-of v3, v2, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 92
    check-cast v1, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;

    .line 94
    .local v1, description:Lorg/eclipse/mat/hprof/ArrayDescription$Offline;
    invoke-virtual {v1}, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;->getLazyReadContent()Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, content:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 96
    iget-object v3, p0, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->hprofDump:Lorg/eclipse/mat/hprof/HprofRandomAccessParser;

    invoke-virtual {v3, v1, p2, p3}, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->readPrimitiveArray(Lorg/eclipse/mat/hprof/ArrayDescription$Offline;II)[B

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->convert(Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;[B)Ljava/lang/Object;

    move-result-object v0

    .line 99
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->getLength()I

    move-result v3

    if-ne p3, v3, :cond_0

    invoke-virtual {v1, v0}, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;->setLazyReadContent(Ljava/lang/Object;)V

    .line 112
    .end local v0           #content:Ljava/lang/Object;
    .end local v1           #description:Lorg/eclipse/mat/hprof/ArrayDescription$Offline;
    :cond_0
    :goto_0
    return-object v0

    .line 103
    .restart local v0       #content:Ljava/lang/Object;
    .restart local v1       #description:Lorg/eclipse/mat/hprof/ArrayDescription$Offline;
    :cond_1
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->fragment(Lorg/eclipse/mat/parser/model/AbstractArrayImpl;Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 105
    .end local v0           #content:Ljava/lang/Object;
    .end local v1           #description:Lorg/eclipse/mat/hprof/ArrayDescription$Offline;
    :cond_2
    instance-of v3, v2, Lorg/eclipse/mat/hprof/ArrayDescription$Raw;

    if-eqz v3, :cond_3

    move-object v1, v2

    .line 106
    check-cast v1, Lorg/eclipse/mat/hprof/ArrayDescription$Raw;

    .line 107
    .local v1, description:Lorg/eclipse/mat/hprof/ArrayDescription$Raw;
    invoke-virtual {v1}, Lorg/eclipse/mat/hprof/ArrayDescription$Raw;->getContent()[B

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->convert(Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;[B)Ljava/lang/Object;

    move-result-object v0

    .line 108
    .restart local v0       #content:Ljava/lang/Object;
    invoke-virtual {p1, v0}, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->setInfo(Ljava/lang/Object;)V

    .line 110
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->fragment(Lorg/eclipse/mat/parser/model/AbstractArrayImpl;Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 112
    .end local v0           #content:Ljava/lang/Object;
    .end local v1           #description:Lorg/eclipse/mat/hprof/ArrayDescription$Raw;
    :cond_3
    invoke-direct {p0, p1, v2, p2, p3}, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;->fragment(Lorg/eclipse/mat/parser/model/AbstractArrayImpl;Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
