.class Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;
.super Ljava/lang/Object;
.source "Pass1Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/hprof/Pass1Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StackTrace"
.end annotation


# instance fields
.field final frameIds:[J

.field final synthetic this$0:Lorg/eclipse/mat/hprof/Pass1Parser;

.field final threadSerialNr:J


# direct methods
.method public constructor <init>(Lorg/eclipse/mat/hprof/Pass1Parser;JJ[J)V
    .locals 0
    .parameter
    .parameter "serialNr"
    .parameter "threadSerialNr"
    .parameter "frameIds"

    .prologue
    .line 604
    iput-object p1, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;->this$0:Lorg/eclipse/mat/hprof/Pass1Parser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-wide p4, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;->threadSerialNr:J

    .line 606
    iput-object p6, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;->frameIds:[J

    .line 607
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    .local v1, b:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;->frameIds:[J

    .local v0, arr$:[J
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-wide v4, v0, v3

    .line 612
    .local v4, frameId:J
    iget-object v7, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;->this$0:Lorg/eclipse/mat/hprof/Pass1Parser;

    #getter for: Lorg/eclipse/mat/hprof/Pass1Parser;->id2frame:Lorg/eclipse/mat/collect/HashMapLongObject;
    invoke-static {v7}, Lorg/eclipse/mat/hprof/Pass1Parser;->access$200(Lorg/eclipse/mat/hprof/Pass1Parser;)Lorg/eclipse/mat/collect/HashMapLongObject;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lorg/eclipse/mat/collect/HashMapLongObject;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;

    .line 613
    .local v2, frame:Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;
    if-eqz v2, :cond_0

    .line 614
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 617
    .end local v2           #frame:Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;
    .end local v4           #frameId:J
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
