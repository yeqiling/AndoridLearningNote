.class Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;
.super Ljava/lang/Object;
.source "Pass1Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/hprof/Pass1Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StackFrame"
.end annotation


# instance fields
.field final classSerNum:J

.field final frameId:J

.field final lineNr:I

.field final method:Ljava/lang/String;

.field final methodSignature:Ljava/lang/String;

.field final sourceFile:Ljava/lang/String;

.field final synthetic this$0:Lorg/eclipse/mat/hprof/Pass1Parser;


# direct methods
.method public constructor <init>(Lorg/eclipse/mat/hprof/Pass1Parser;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter "frameId"
    .parameter "lineNr"
    .parameter "method"
    .parameter "methodSignature"
    .parameter "sourceFile"
    .parameter "classSerNum"

    .prologue
    .line 557
    iput-object p1, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;->this$0:Lorg/eclipse/mat/hprof/Pass1Parser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput-wide p2, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;->frameId:J

    .line 559
    iput p4, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;->lineNr:I

    .line 560
    iput-object p5, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;->method:Ljava/lang/String;

    .line 561
    iput-object p6, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;->methodSignature:Ljava/lang/String;

    .line 562
    iput-object p7, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;->sourceFile:Ljava/lang/String;

    .line 563
    iput-wide p8, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;->classSerNum:J

    .line 564
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 567
    const/4 v1, 0x0

    .line 568
    .local v1, className:Ljava/lang/String;
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;->this$0:Lorg/eclipse/mat/hprof/Pass1Parser;

    #getter for: Lorg/eclipse/mat/hprof/Pass1Parser;->classSerNum2id:Lorg/eclipse/mat/collect/HashMapLongObject;
    invoke-static {v3}, Lorg/eclipse/mat/hprof/Pass1Parser;->access$000(Lorg/eclipse/mat/hprof/Pass1Parser;)Lorg/eclipse/mat/collect/HashMapLongObject;

    move-result-object v3

    iget-wide v4, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;->classSerNum:J

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/mat/collect/HashMapLongObject;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 569
    .local v0, classId:Ljava/lang/Long;
    if-nez v0, :cond_1

    .line 570
    const-string v1, "<UNKNOWN CLASS>"

    .line 575
    :goto_0
    const-string v2, ""

    .line 576
    .local v2, sourceLocation:Ljava/lang/String;
    iget v3, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;->lineNr:I

    if-lez v3, :cond_2

    .line 577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;->sourceFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;->lineNr:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 590
    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;->method:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;->methodSignature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 572
    .end local v2           #sourceLocation:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;->this$0:Lorg/eclipse/mat/hprof/Pass1Parser;

    #getter for: Lorg/eclipse/mat/hprof/Pass1Parser;->class2name:Lorg/eclipse/mat/collect/HashMapLongObject;
    invoke-static {v3}, Lorg/eclipse/mat/hprof/Pass1Parser;->access$100(Lorg/eclipse/mat/hprof/Pass1Parser;)Lorg/eclipse/mat/collect/HashMapLongObject;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/mat/collect/HashMapLongObject;->get(J)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #className:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #className:Ljava/lang/String;
    goto :goto_0

    .line 582
    .restart local v2       #sourceLocation:Ljava/lang/String;
    :cond_2
    iget v3, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;->lineNr:I

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;->lineNr:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 583
    :cond_3
    const-string v2, "(Unknown Source)"

    goto :goto_1

    .line 584
    :cond_4
    iget v3, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;->lineNr:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_5

    .line 585
    const-string v2, "(Compiled method)"

    goto :goto_1

    .line 586
    :cond_5
    iget v3, p0, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;->lineNr:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_0

    .line 587
    const-string v2, "(Native Method)"

    goto :goto_1
.end method
