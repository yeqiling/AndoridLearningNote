.class public Lorg/eclipse/mat/util/VoidProgressListener;
.super Ljava/lang/Object;
.source "VoidProgressListener.java"

# interfaces
.implements Lorg/eclipse/mat/util/IProgressListener;


# instance fields
.field private cancelled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/mat/util/VoidProgressListener;->cancelled:Z

    return-void
.end method


# virtual methods
.method public beginTask(Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "totalWork"

    .prologue
    .line 33
    return-void
.end method

.method public final beginTask(Lorg/eclipse/mat/hprof/Messages;I)V
    .locals 1
    .parameter "name"
    .parameter "totalWork"

    .prologue
    .line 36
    iget-object v0, p1, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/mat/util/VoidProgressListener;->beginTask(Ljava/lang/String;I)V

    .line 37
    return-void
.end method

.method public done()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/eclipse/mat/util/VoidProgressListener;->cancelled:Z

    return v0
.end method

.method public sendUserMessage(Lorg/eclipse/mat/util/IProgressListener$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "severity"
    .parameter "message"
    .parameter "exception"

    .prologue
    .line 87
    return-void
.end method

.method public setCanceled(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/eclipse/mat/util/VoidProgressListener;->cancelled:Z

    .line 63
    return-void
.end method

.method public subTask(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 71
    return-void
.end method

.method public worked(I)V
    .locals 0
    .parameter "work"

    .prologue
    .line 79
    return-void
.end method
