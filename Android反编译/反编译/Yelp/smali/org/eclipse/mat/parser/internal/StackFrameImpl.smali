.class Lorg/eclipse/mat/parser/internal/StackFrameImpl;
.super Ljava/lang/Object;
.source "StackFrameImpl.java"

# interfaces
.implements Lorg/eclipse/mat/snapshot/model/IStackFrame;


# instance fields
.field private localObjectIds:[I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[I)V
    .locals 0
    .parameter "text"
    .parameter "localObjectIds"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/StackFrameImpl;->text:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lorg/eclipse/mat/parser/internal/StackFrameImpl;->localObjectIds:[I

    .line 29
    return-void
.end method


# virtual methods
.method public getLocalObjectsIds()[I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/StackFrameImpl;->localObjectIds:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/StackFrameImpl;->localObjectIds:[I

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/StackFrameImpl;->text:Ljava/lang/String;

    return-object v0
.end method
