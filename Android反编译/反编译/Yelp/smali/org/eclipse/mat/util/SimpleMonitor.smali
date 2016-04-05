.class public Lorg/eclipse/mat/util/SimpleMonitor;
.super Ljava/lang/Object;
.source "SimpleMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/util/SimpleMonitor$Listener;
    }
.end annotation


# instance fields
.field currentMonitor:I

.field delegate:Lorg/eclipse/mat/util/IProgressListener;

.field percentages:[I

.field task:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/mat/util/IProgressListener;[I)V
    .locals 0
    .parameter "task"
    .parameter "monitor"
    .parameter "percentages"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/eclipse/mat/util/SimpleMonitor;->task:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lorg/eclipse/mat/util/SimpleMonitor;->delegate:Lorg/eclipse/mat/util/IProgressListener;

    .line 26
    iput-object p3, p0, Lorg/eclipse/mat/util/SimpleMonitor;->percentages:[I

    .line 27
    return-void
.end method


# virtual methods
.method public nextMonitor()Lorg/eclipse/mat/util/IProgressListener;
    .locals 9

    .prologue
    .line 30
    iget v5, p0, Lorg/eclipse/mat/util/SimpleMonitor;->currentMonitor:I

    if-nez v5, :cond_1

    .line 31
    const/4 v4, 0x0

    .line 32
    .local v4, total:I
    iget-object v0, p0, Lorg/eclipse/mat/util/SimpleMonitor;->percentages:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 33
    .local v2, ii:I
    add-int/2addr v4, v2

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v2           #ii:I
    :cond_0
    iget-object v5, p0, Lorg/eclipse/mat/util/SimpleMonitor;->delegate:Lorg/eclipse/mat/util/IProgressListener;

    iget-object v6, p0, Lorg/eclipse/mat/util/SimpleMonitor;->task:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Lorg/eclipse/mat/util/IProgressListener;->beginTask(Ljava/lang/String;I)V

    .line 37
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #total:I
    :cond_1
    new-instance v5, Lorg/eclipse/mat/util/SimpleMonitor$Listener;

    iget-object v6, p0, Lorg/eclipse/mat/util/SimpleMonitor;->percentages:[I

    iget v7, p0, Lorg/eclipse/mat/util/SimpleMonitor;->currentMonitor:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/eclipse/mat/util/SimpleMonitor;->currentMonitor:I

    aget v6, v6, v7

    invoke-direct {v5, p0, v6}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;-><init>(Lorg/eclipse/mat/util/SimpleMonitor;I)V

    return-object v5
.end method
