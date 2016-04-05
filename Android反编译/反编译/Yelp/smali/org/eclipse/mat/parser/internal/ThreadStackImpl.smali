.class Lorg/eclipse/mat/parser/internal/ThreadStackImpl;
.super Ljava/lang/Object;
.source "ThreadStackImpl.java"

# interfaces
.implements Lorg/eclipse/mat/snapshot/model/IThreadStack;


# instance fields
.field private stackFrames:[Lorg/eclipse/mat/snapshot/model/IStackFrame;

.field private threadId:I


# direct methods
.method public constructor <init>(I[Lorg/eclipse/mat/parser/internal/StackFrameImpl;)V
    .locals 0
    .parameter "threadId"
    .parameter "stackFrames"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lorg/eclipse/mat/parser/internal/ThreadStackImpl;->threadId:I

    .line 28
    iput-object p2, p0, Lorg/eclipse/mat/parser/internal/ThreadStackImpl;->stackFrames:[Lorg/eclipse/mat/snapshot/model/IStackFrame;

    .line 29
    return-void
.end method


# virtual methods
.method public getStackFrames()[Lorg/eclipse/mat/snapshot/model/IStackFrame;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/ThreadStackImpl;->stackFrames:[Lorg/eclipse/mat/snapshot/model/IStackFrame;

    return-object v0
.end method

.method public getThreadId()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/eclipse/mat/parser/internal/ThreadStackImpl;->threadId:I

    return v0
.end method
