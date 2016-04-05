.class public Lorg/eclipse/mat/util/SimpleMonitor$Listener;
.super Ljava/lang/Object;
.source "SimpleMonitor.java"

# interfaces
.implements Lorg/eclipse/mat/util/IProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/util/SimpleMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Listener"
.end annotation


# instance fields
.field counter:J

.field isSmaller:Z

.field majorUnits:I

.field final synthetic this$0:Lorg/eclipse/mat/util/SimpleMonitor;

.field unitsReported:I

.field workDone:J

.field workPerUnit:J


# direct methods
.method public constructor <init>(Lorg/eclipse/mat/util/SimpleMonitor;I)V
    .locals 0
    .parameter
    .parameter "majorUnits"

    .prologue
    .line 50
    iput-object p1, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->this$0:Lorg/eclipse/mat/util/SimpleMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p2, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->majorUnits:I

    .line 52
    return-void
.end method


# virtual methods
.method public beginTask(Ljava/lang/String;I)V
    .locals 4
    .parameter "name"
    .parameter "totalWork"

    .prologue
    const/4 v1, 0x0

    .line 59
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->this$0:Lorg/eclipse/mat/util/SimpleMonitor;

    iget-object v0, v0, Lorg/eclipse/mat/util/SimpleMonitor;->delegate:Lorg/eclipse/mat/util/IProgressListener;

    invoke-interface {v0, p1}, Lorg/eclipse/mat/util/IProgressListener;->subTask(Ljava/lang/String;)V

    .line 61
    :cond_0
    if-nez p2, :cond_1

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_1
    iget v0, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->majorUnits:I

    if-ge p2, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->isSmaller:Z

    .line 64
    iget-boolean v0, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->isSmaller:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->majorUnits:I

    div-int/2addr v0, p2

    int-to-long v2, v0

    :goto_2
    iput-wide v2, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->workPerUnit:J

    .line 65
    iput v1, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->unitsReported:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    iget v0, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->majorUnits:I

    div-int v0, p2, v0

    int-to-long v2, v0

    goto :goto_2
.end method

.method public final beginTask(Lorg/eclipse/mat/hprof/Messages;I)V
    .locals 1
    .parameter "name"
    .parameter "totalWork"

    .prologue
    .line 55
    iget-object v0, p1, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->beginTask(Ljava/lang/String;I)V

    .line 56
    return-void
.end method

.method public done()V
    .locals 3

    .prologue
    .line 73
    iget v0, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->majorUnits:I

    iget v1, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->unitsReported:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->this$0:Lorg/eclipse/mat/util/SimpleMonitor;

    iget-object v0, v0, Lorg/eclipse/mat/util/SimpleMonitor;->delegate:Lorg/eclipse/mat/util/IProgressListener;

    iget v1, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->majorUnits:I

    iget v2, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->unitsReported:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    .line 74
    :cond_0
    return-void
.end method

.method public getWorkDone()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->workDone:J

    return-wide v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->this$0:Lorg/eclipse/mat/util/SimpleMonitor;

    iget-object v0, v0, Lorg/eclipse/mat/util/SimpleMonitor;->delegate:Lorg/eclipse/mat/util/IProgressListener;

    invoke-interface {v0}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isProbablyCanceled()Z
    .locals 4

    .prologue
    .line 81
    iget-wide v0, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->counter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->counter:J

    const-wide/16 v2, 0x1388

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->isCanceled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendUserMessage(Lorg/eclipse/mat/util/IProgressListener$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "severity"
    .parameter "message"
    .parameter "exception"

    .prologue
    .line 108
    iget-object v0, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->this$0:Lorg/eclipse/mat/util/SimpleMonitor;

    iget-object v0, v0, Lorg/eclipse/mat/util/SimpleMonitor;->delegate:Lorg/eclipse/mat/util/IProgressListener;

    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/mat/util/IProgressListener;->sendUserMessage(Lorg/eclipse/mat/util/IProgressListener$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    return-void
.end method

.method public setCanceled(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 104
    iget-object v0, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->this$0:Lorg/eclipse/mat/util/SimpleMonitor;

    iget-object v0, v0, Lorg/eclipse/mat/util/SimpleMonitor;->delegate:Lorg/eclipse/mat/util/IProgressListener;

    invoke-interface {v0, p1}, Lorg/eclipse/mat/util/IProgressListener;->setCanceled(Z)V

    .line 105
    return-void
.end method

.method public subTask(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 69
    iget-object v0, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->this$0:Lorg/eclipse/mat/util/SimpleMonitor;

    iget-object v0, v0, Lorg/eclipse/mat/util/SimpleMonitor;->delegate:Lorg/eclipse/mat/util/IProgressListener;

    invoke-interface {v0, p1}, Lorg/eclipse/mat/util/IProgressListener;->subTask(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public totalWorkDone(J)V
    .locals 7
    .parameter "work"

    .prologue
    .line 85
    iget-wide v2, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->workDone:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-wide v2, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->workPerUnit:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 89
    iput-wide p1, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->workDone:J

    .line 90
    iget-boolean v2, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->isSmaller:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->workPerUnit:J

    mul-long/2addr v2, p1

    long-to-int v1, v2

    .line 91
    .local v1, unitsWorked:I
    :goto_1
    iget v2, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->unitsReported:I

    sub-int v0, v1, v2

    .line 93
    .local v0, unitsToReport:I
    if-lez v0, :cond_0

    .line 94
    iget-object v2, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->this$0:Lorg/eclipse/mat/util/SimpleMonitor;

    iget-object v2, v2, Lorg/eclipse/mat/util/SimpleMonitor;->delegate:Lorg/eclipse/mat/util/IProgressListener;

    invoke-interface {v2, v0}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    .line 95
    iget v2, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->unitsReported:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->unitsReported:I

    goto :goto_0

    .line 90
    .end local v0           #unitsToReport:I
    .end local v1           #unitsWorked:I
    :cond_2
    iget-wide v2, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->workPerUnit:J

    div-long v2, p1, v2

    long-to-int v1, v2

    goto :goto_1
.end method

.method public worked(I)V
    .locals 4
    .parameter "work"

    .prologue
    .line 100
    iget-wide v0, p0, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->workDone:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->totalWorkDone(J)V

    .line 101
    return-void
.end method
