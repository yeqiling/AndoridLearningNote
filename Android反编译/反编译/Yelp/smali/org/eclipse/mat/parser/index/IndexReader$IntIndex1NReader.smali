.class Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;
.super Ljava/lang/Object;
.source "IndexReader.java"

# interfaces
.implements Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntIndex1NReader"
.end annotation


# instance fields
.field body:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

.field header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

.field in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

.field indexFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 14
    .parameter "indexFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x8

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->indexFile:Ljava/io/File;

    .line 152
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->open()V

    .line 154
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 155
    .local v12, indexLength:J
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    sub-long v4, v12, v6

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->seek(J)V

    .line 156
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readLong()J

    move-result-wide v2

    .line 158
    .local v2, divider:J
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    sub-long v4, v12, v2

    sub-long/2addr v4, v6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;-><init>(Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;JJ)V

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    .line 159
    new-instance v4, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    iget-object v5, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    const-wide/16 v6, 0x0

    move-wide v8, v2

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;-><init>(Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;JJ)V

    iput-object v4, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    .line 161
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    iget-object v1, v1, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->LOCK:Ljava/lang/Object;

    iput-object v1, v0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->LOCK:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    return-void

    .line 162
    .end local v2           #divider:J
    .end local v12           #indexLength:J
    :catch_0
    move-exception v10

    .line 163
    .local v10, e:Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->close()V

    .line 164
    throw v10
.end method

.method public constructor <init>(Ljava/io/File;Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;)V
    .locals 2
    .parameter "indexFile"
    .parameter "header"
    .parameter "body"

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->indexFile:Ljava/io/File;

    .line 171
    check-cast p2, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    .end local p2
    iput-object p2, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    .line 172
    check-cast p3, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    .end local p3
    iput-object p3, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    .line 174
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    iget-object v1, v1, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->LOCK:Ljava/lang/Object;

    iput-object v1, v0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->LOCK:Ljava/lang/Object;

    .line 176
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->open()V

    .line 177
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->unload()V

    .line 205
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->unload()V

    .line 207
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 209
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    .line 214
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    .line 215
    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 213
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    .line 214
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    .line 215
    :cond_2
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 213
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    .line 214
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    .line 215
    :cond_3
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->close()V

    .line 232
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->indexFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->indexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 233
    :cond_0
    return-void
.end method

.method public get(I)[I
    .locals 4
    .parameter "index"

    .prologue
    .line 180
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    invoke-virtual {v2, p1}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->get(I)I

    move-result v1

    .line 182
    .local v1, p:I
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    invoke-virtual {v2, v1}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->get(I)I

    move-result v0

    .line 184
    .local v0, length:I
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v0}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->getNext(II)[I

    move-result-object v2

    return-object v2
.end method

.method protected declared-synchronized open()V
    .locals 5

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    if-nez v1, :cond_1

    .line 191
    new-instance v1, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->indexFile:Ljava/io/File;

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;-><init>(Ljava/io/RandomAccessFile;)V

    iput-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    .line 194
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    iput-object v2, v1, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    .line 196
    :cond_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    iput-object v2, v1, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_1
    monitor-exit p0

    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->size()I

    move-result v0

    return v0
.end method

.method public unload()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->unload()V

    .line 222
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->unload()V

    .line 223
    return-void
.end method
