.class public Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;
.super Ljava/lang/Object;
.source "ObjectMarker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DfsThread"
.end annotation


# instance fields
.field data:[I

.field rootsStack:Lorg/eclipse/mat/parser/internal/util/IntStack;

.field size:I

.field final synthetic this$0:Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;


# direct methods
.method public constructor <init>(Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;Lorg/eclipse/mat/parser/internal/util/IntStack;)V
    .locals 1
    .parameter
    .parameter "roots"

    .prologue
    .line 224
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->this$0:Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->size:I

    .line 221
    const/16 v0, 0x2800

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->data:[I

    .line 225
    iput-object p2, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->rootsStack:Lorg/eclipse/mat/parser/internal/util/IntStack;

    .line 226
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 230
    :cond_0
    iget-object v7, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->rootsStack:Lorg/eclipse/mat/parser/internal/util/IntStack;

    monitor-enter v7

    .line 231
    :try_start_0
    iget-object v6, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->this$0:Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;

    iget-object v6, v6, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->progressListener:Lorg/eclipse/mat/util/IProgressListener;

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    .line 232
    iget-object v6, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->this$0:Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;

    iget-object v6, v6, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->progressListener:Lorg/eclipse/mat/util/IProgressListener;

    invoke-interface {v6}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_1

    monitor-exit v7

    .line 274
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v6, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->rootsStack:Lorg/eclipse/mat/parser/internal/util/IntStack;

    invoke-virtual {v6}, Lorg/eclipse/mat/parser/internal/util/IntStack;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 237
    iget-object v6, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->data:[I

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->rootsStack:Lorg/eclipse/mat/parser/internal/util/IntStack;

    invoke-virtual {v9}, Lorg/eclipse/mat/parser/internal/util/IntStack;->pop()I

    move-result v9

    aput v9, v6, v8

    .line 238
    const/4 v6, 0x1

    iput v6, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->size:I

    .line 244
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :cond_2
    iget v6, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->size:I

    if-lez v6, :cond_0

    .line 250
    iget-object v6, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->data:[I

    iget v7, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->size:I

    aget v2, v6, v7

    .line 253
    .local v2, current:I
    iget-object v6, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->this$0:Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;

    iget-object v6, v6, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->outbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    invoke-interface {v6, v2}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;->get(I)[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget v1, v0, v3

    .line 259
    .local v1, child:I
    iget-object v6, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->this$0:Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;

    iget-object v6, v6, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->bits:[Z

    aget-boolean v6, v6, v1

    if-nez v6, :cond_4

    .line 260
    iget-object v6, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->this$0:Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;

    iget-object v6, v6, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->bits:[Z

    aput-boolean v11, v6, v1

    .line 263
    iget v6, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->size:I

    iget-object v7, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->data:[I

    array-length v7, v7

    if-ne v6, v7, :cond_3

    .line 264
    iget-object v6, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->data:[I

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v5, v6, [I

    .line 265
    .local v5, newArr:[I
    iget-object v6, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->data:[I

    iget-object v7, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->data:[I

    array-length v7, v7

    invoke-static {v6, v10, v5, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iput-object v5, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->data:[I

    .line 268
    .end local v5           #newArr:[I
    :cond_3
    iget-object v6, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->data:[I

    iget v7, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->size:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;->size:I

    aput v1, v6, v7

    .line 253
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 242
    .end local v0           #arr$:[I
    .end local v1           #child:I
    .end local v2           #current:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_5
    :try_start_1
    monitor-exit v7

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method
