.class public Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;
.super Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;
.source "IndexWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongIndexStreamer"
.end annotation


# instance fields
.field left:I

.field out:Ljava/io/DataOutputStream;

.field page:[J

.field pageStart:Lorg/eclipse/mat/collect/ArrayLong;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1036
    invoke-direct {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;-><init>()V

    .line 1037
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .parameter "indexFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1039
    invoke-direct {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;-><init>()V

    .line 1040
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1042
    .local v0, out:Ljava/io/DataOutputStream;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->openStream(Ljava/io/DataOutputStream;J)V

    .line 1043
    return-void
.end method

.method private addPage()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1196
    new-instance v0, Lorg/eclipse/mat/collect/ArrayLongCompressed;

    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->page:[J

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->page:[J

    array-length v5, v5

    iget v6, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->left:I

    sub-int/2addr v5, v6

    invoke-direct {v0, v3, v4, v5}, Lorg/eclipse/mat/collect/ArrayLongCompressed;-><init>([JII)V

    .line 1198
    .local v0, array:Lorg/eclipse/mat/collect/ArrayLongCompressed;
    invoke-virtual {v0}, Lorg/eclipse/mat/collect/ArrayLongCompressed;->toByteArray()[B

    move-result-object v1

    .line 1199
    .local v1, buffer:[B
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 1200
    array-length v2, v1

    .line 1202
    .local v2, written:I
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->pages:Lorg/eclipse/mat/collect/HashMapIntObject;

    iget-object v4, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->pages:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v4}, Lorg/eclipse/mat/collect/HashMapIntObject;->size()I

    move-result v4

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/mat/collect/HashMapIntObject;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1203
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->pageStart:Lorg/eclipse/mat/collect/ArrayLong;

    iget-object v4, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->pageStart:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v4}, Lorg/eclipse/mat/collect/ArrayLong;->lastElement()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    .line 1205
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->page:[J

    array-length v3, v3

    iput v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->left:I

    .line 1206
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1170
    iget v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->left:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->addPage()V

    .line 1172
    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->page:[J

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->page:[J

    array-length v1, v1

    iget v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->left:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->left:I

    sub-int/2addr v1, v2

    aput-wide p1, v0, v1

    .line 1173
    iget v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->size:I

    .line 1174
    return-void
.end method

.method public addAll(Lorg/eclipse/mat/collect/ArrayLong;)V
    .locals 4
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1165
    invoke-virtual {p1}, Lorg/eclipse/mat/collect/ArrayLong;->iterator()Lorg/eclipse/mat/collect/IteratorLong;

    move-result-object v0

    .local v0, e:Lorg/eclipse/mat/collect/IteratorLong;
    :goto_0
    invoke-interface {v0}, Lorg/eclipse/mat/collect/IteratorLong;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1166
    invoke-interface {v0}, Lorg/eclipse/mat/collect/IteratorLong;->next()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->add(J)V

    goto :goto_0

    .line 1167
    :cond_0
    return-void
.end method

.method public addAll(Lorg/eclipse/mat/collect/IteratorLong;)V
    .locals 2
    .parameter "iterator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1161
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/mat/collect/IteratorLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/eclipse/mat/collect/IteratorLong;->next()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->add(J)V

    goto :goto_0

    .line 1162
    :cond_0
    return-void
.end method

.method public addAll([J)V
    .locals 2
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1177
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->addAll([JII)V

    .line 1178
    return-void
.end method

.method public addAll([JII)V
    .locals 4
    .parameter "values"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1181
    :goto_0
    if-lez p3, :cond_1

    .line 1182
    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->left:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->addPage()V

    .line 1184
    :cond_0
    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->left:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1186
    .local v0, chunk:I
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->page:[J

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->page:[J

    array-length v2, v2

    iget v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->left:I

    sub-int/2addr v2, v3

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1187
    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->left:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->left:I

    .line 1188
    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->size:I

    .line 1190
    sub-int/2addr p3, v0

    .line 1191
    add-int/2addr p2, v0

    .line 1192
    goto :goto_0

    .line 1193
    .end local v0           #chunk:I
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1046
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->out:Ljava/io/DataOutputStream;

    .line 1047
    .local v0, out:Ljava/io/DataOutputStream;
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->closeStream()J

    .line 1048
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 1049
    return-void
.end method

.method closeStream()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1139
    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->left:I

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->page:[J

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-direct {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->addPage()V

    .line 1142
    :cond_0
    const/4 v0, 0x0

    .local v0, jj:I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->pageStart:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v1}, Lorg/eclipse/mat/collect/ArrayLong;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1143
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->out:Ljava/io/DataOutputStream;

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->pageStart:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v2, v0}, Lorg/eclipse/mat/collect/ArrayLong;->get(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1145
    :cond_1
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->out:Ljava/io/DataOutputStream;

    iget v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->pageSize:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1146
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->out:Ljava/io/DataOutputStream;

    iget v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->size:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1148
    iput-object v4, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->page:[J

    .line 1150
    iput-object v4, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->out:Ljava/io/DataOutputStream;

    .line 1152
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->pageStart:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v1}, Lorg/eclipse/mat/collect/ArrayLong;->lastElement()J

    move-result-wide v2

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->pageStart:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v1}, Lorg/eclipse/mat/collect/ArrayLong;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->pageStart:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v1}, Lorg/eclipse/mat/collect/ArrayLong;->firstElement()J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method public bridge synthetic get(I)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1030
    invoke-super {p0, p1}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getNext(II)[J
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1030
    invoke-super {p0, p1, p2}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->getNext(II)[J

    move-result-object v0

    return-object v0
.end method

.method protected getPage(I)Lorg/eclipse/mat/collect/ArrayLongCompressed;
    .locals 1
    .parameter "page"

    .prologue
    .line 1209
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getReader(Ljava/io/File;)Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;
    .locals 6
    .parameter "indexFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1157
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->pages:Lorg/eclipse/mat/collect/HashMapIntObject;

    iget v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->size:I

    iget v4, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->pageSize:I

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->pageStart:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v1}, Lorg/eclipse/mat/collect/ArrayLong;->toArray()[J

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;-><init>(Ljava/io/File;Lorg/eclipse/mat/collect/HashMapIntObject;II[J)V

    return-object v0
.end method

.method public bridge synthetic iterator()Lorg/eclipse/mat/collect/IteratorLong;
    .locals 1

    .prologue
    .line 1030
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->iterator()Lorg/eclipse/mat/collect/IteratorLong;

    move-result-object v0

    return-object v0
.end method

.method openStream(Ljava/io/DataOutputStream;J)V
    .locals 2
    .parameter "out"
    .parameter "position"

    .prologue
    .line 1125
    iput-object p1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->out:Ljava/io/DataOutputStream;

    .line 1127
    const/4 v0, 0x0

    const v1, 0x7a120

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->init(II)V

    .line 1129
    iget v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->pageSize:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->page:[J

    .line 1130
    new-instance v0, Lorg/eclipse/mat/collect/ArrayLong;

    invoke-direct {v0}, Lorg/eclipse/mat/collect/ArrayLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->pageStart:Lorg/eclipse/mat/collect/ArrayLong;

    .line 1131
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->pageStart:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    .line 1132
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->page:[J

    array-length v0, v0

    iput v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->left:I

    .line 1133
    return-void
.end method

.method public bridge synthetic reverse(J)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1030
    invoke-super {p0, p1, p2}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->reverse(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic set(IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1030
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->set(IJ)V

    return-void
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 1030
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic unload()V
    .locals 0

    .prologue
    .line 1030
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->unload()V

    return-void
.end method

.method public writeTo(Ljava/io/File;ILorg/eclipse/mat/collect/HashMapIntObject;I)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;
    .locals 8
    .parameter "indexFile"
    .parameter "size"
    .parameter
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Ljava/lang/Object;",
            ">;I)",
            "Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1053
    .local p3, pages:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Ljava/lang/Object;>;"
    new-instance v5, Ljava/io/DataOutputStream;

    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1056
    .local v5, out:Ljava/io/DataOutputStream;
    const-wide/16 v6, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->openStream(Ljava/io/DataOutputStream;J)V

    .line 1058
    div-int v7, p2, p4

    rem-int v6, p2, p4

    if-lez v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    add-int v4, v7, v6

    .line 1059
    .local v4, noOfPages:I
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 1060
    invoke-virtual {p3, v1}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/collect/ArrayLongCompressed;

    .line 1061
    .local v0, a:Lorg/eclipse/mat/collect/ArrayLongCompressed;
    add-int/lit8 v6, v1, 0x1

    if-ge v6, v4, :cond_2

    move v3, p4

    .line 1063
    .local v3, len:I
    :goto_2
    if-nez v0, :cond_3

    .line 1064
    new-array v6, v3, [J

    invoke-virtual {p0, v6}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->addAll([J)V

    .line 1059
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1058
    .end local v0           #a:Lorg/eclipse/mat/collect/ArrayLongCompressed;
    .end local v1           #ii:I
    .end local v3           #len:I
    .end local v4           #noOfPages:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1061
    .restart local v0       #a:Lorg/eclipse/mat/collect/ArrayLongCompressed;
    .restart local v1       #ii:I
    .restart local v4       #noOfPages:I
    :cond_2
    rem-int v3, p2, p4

    goto :goto_2

    .line 1066
    .restart local v3       #len:I
    :cond_3
    const/4 v2, 0x0

    .local v2, jj:I
    :goto_3
    if-ge v2, v3, :cond_0

    .line 1067
    invoke-virtual {v0, v2}, Lorg/eclipse/mat/collect/ArrayLongCompressed;->get(I)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->add(J)V

    .line 1066
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1072
    .end local v0           #a:Lorg/eclipse/mat/collect/ArrayLongCompressed;
    .end local v2           #jj:I
    .end local v3           #len:I
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->closeStream()J

    .line 1073
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 1075
    invoke-virtual {p0, p1}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->getReader(Ljava/io/File;)Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;

    move-result-object v6

    return-object v6
.end method

.method public writeTo(Ljava/io/File;Lorg/eclipse/mat/collect/ArrayLong;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;
    .locals 4
    .parameter "indexFile"
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1112
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1115
    .local v0, out:Ljava/io/DataOutputStream;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->openStream(Ljava/io/DataOutputStream;J)V

    .line 1116
    invoke-virtual {p0, p2}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->addAll(Lorg/eclipse/mat/collect/ArrayLong;)V

    .line 1117
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->closeStream()J

    .line 1119
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 1121
    invoke-virtual {p0, p1}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->getReader(Ljava/io/File;)Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;

    move-result-object v1

    return-object v1
.end method

.method public writeTo(Ljava/io/File;Lorg/eclipse/mat/collect/IteratorLong;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;
    .locals 4
    .parameter "indexFile"
    .parameter "iterator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1092
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1094
    .local v0, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1096
    .local v1, out:Ljava/io/DataOutputStream;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->openStream(Ljava/io/DataOutputStream;J)V

    .line 1097
    invoke-virtual {p0, p2}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->addAll(Lorg/eclipse/mat/collect/IteratorLong;)V

    .line 1098
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->closeStream()J

    .line 1100
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 1102
    invoke-virtual {p0, p1}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->getReader(Ljava/io/File;)Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1105
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1107
    :goto_0
    return-object v2

    .line 1104
    .end local v1           #out:Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v2

    .line 1105
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1107
    :goto_1
    throw v2

    .line 1106
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1           #out:Ljava/io/DataOutputStream;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public writeTo(Ljava/io/File;[J)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;
    .locals 4
    .parameter "indexFile"
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1079
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1082
    .local v0, out:Ljava/io/DataOutputStream;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->openStream(Ljava/io/DataOutputStream;J)V

    .line 1083
    invoke-virtual {p0, p2}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->addAll([J)V

    .line 1084
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->closeStream()J

    .line 1086
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 1088
    invoke-virtual {p0, p1}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->getReader(Ljava/io/File;)Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;

    move-result-object v1

    return-object v1
.end method
