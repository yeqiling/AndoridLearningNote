.class public interface abstract Lorg/eclipse/mat/util/IProgressListener;
.super Ljava/lang/Object;
.source "IProgressListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/util/IProgressListener$Severity;,
        Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;
    }
.end annotation


# static fields
.field public static final UNKNOWN_TOTAL_WORK:I = -0x1


# virtual methods
.method public abstract beginTask(Ljava/lang/String;I)V
.end method

.method public abstract beginTask(Lorg/eclipse/mat/hprof/Messages;I)V
.end method

.method public abstract done()V
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract sendUserMessage(Lorg/eclipse/mat/util/IProgressListener$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract setCanceled(Z)V
.end method

.method public abstract subTask(Ljava/lang/String;)V
.end method

.method public abstract worked(I)V
.end method
