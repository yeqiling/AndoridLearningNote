.class public Lorg/eclipse/mat/util/SilentProgressListener;
.super Ljava/lang/Object;
.source "SilentProgressListener.java"

# interfaces
.implements Lorg/eclipse/mat/util/IProgressListener;


# instance fields
.field delegate:Lorg/eclipse/mat/util/IProgressListener;


# direct methods
.method public constructor <init>(Lorg/eclipse/mat/util/IProgressListener;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/eclipse/mat/util/SilentProgressListener;->delegate:Lorg/eclipse/mat/util/IProgressListener;

    .line 25
    return-void
.end method


# virtual methods
.method public beginTask(Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "totalWork"

    .prologue
    .line 28
    return-void
.end method

.method public final beginTask(Lorg/eclipse/mat/hprof/Messages;I)V
    .locals 1
    .parameter "name"
    .parameter "totalWork"

    .prologue
    .line 31
    iget-object v0, p1, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/mat/util/SilentProgressListener;->beginTask(Ljava/lang/String;I)V

    .line 32
    return-void
.end method

.method public done()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/eclipse/mat/util/SilentProgressListener;->delegate:Lorg/eclipse/mat/util/IProgressListener;

    invoke-interface {v0}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public sendUserMessage(Lorg/eclipse/mat/util/IProgressListener$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "severity"
    .parameter "message"
    .parameter "exception"

    .prologue
    .line 42
    iget-object v0, p0, Lorg/eclipse/mat/util/SilentProgressListener;->delegate:Lorg/eclipse/mat/util/IProgressListener;

    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/mat/util/IProgressListener;->sendUserMessage(Lorg/eclipse/mat/util/IProgressListener$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public setCanceled(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 46
    iget-object v0, p0, Lorg/eclipse/mat/util/SilentProgressListener;->delegate:Lorg/eclipse/mat/util/IProgressListener;

    invoke-interface {v0, p1}, Lorg/eclipse/mat/util/IProgressListener;->setCanceled(Z)V

    .line 47
    return-void
.end method

.method public subTask(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 50
    return-void
.end method

.method public worked(I)V
    .locals 0
    .parameter "work"

    .prologue
    .line 53
    return-void
.end method
