.class public Lorg/eclipse/mat/parser/internal/DominatorTree;
.super Ljava/lang/Object;
.source "DominatorTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static calculate(Lorg/eclipse/mat/parser/internal/SnapshotImpl;Lorg/eclipse/mat/util/IProgressListener;)V
    .locals 1
    .parameter "snapshot"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;-><init>(Lorg/eclipse/mat/parser/internal/SnapshotImpl;Lorg/eclipse/mat/util/IProgressListener;)V

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->compute()V

    .line 36
    return-void
.end method
