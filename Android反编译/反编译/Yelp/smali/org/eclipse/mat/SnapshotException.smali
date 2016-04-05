.class public Lorg/eclipse/mat/SnapshotException;
.super Ljava/lang/Exception;
.source "SnapshotException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/mat/hprof/Messages;)V
    .locals 1
    .parameter "messages"

    .prologue
    .line 54
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static final rethrow(Ljava/lang/Throwable;)Lorg/eclipse/mat/SnapshotException;
    .locals 1
    .parameter "e"

    .prologue
    .line 61
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 63
    check-cast v0, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/mat/SnapshotException;

    if-eqz v0, :cond_0

    .line 64
    check-cast p0, Ljava/lang/RuntimeException;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/SnapshotException;

    .line 70
    .restart local p0
    :goto_0
    return-object v0

    .line 66
    :cond_0
    check-cast p0, Ljava/lang/RuntimeException;

    .end local p0
    throw p0

    .line 67
    .restart local p0
    :cond_1
    instance-of v0, p0, Lorg/eclipse/mat/SnapshotException;

    if-eqz v0, :cond_2

    .line 68
    check-cast p0, Lorg/eclipse/mat/SnapshotException;

    .end local p0
    move-object v0, p0

    goto :goto_0

    .line 70
    .restart local p0
    :cond_2
    new-instance v0, Lorg/eclipse/mat/SnapshotException;

    invoke-direct {v0, p0}, Lorg/eclipse/mat/SnapshotException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
