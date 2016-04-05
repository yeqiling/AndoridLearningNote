.class Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;
.super Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;
.source "LinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendingItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque",
        "<TE;>.AbstractItr;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;


# direct methods
.method private constructor <init>(Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V
    .locals 0
    .parameter

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;->this$0:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    invoke-direct {p0, p1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;-><init>(Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1119
    invoke-direct {p0, p1}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;-><init>(Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V

    return-void
.end method


# virtual methods
.method firstNode()Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;->this$0:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    iget-object v0, v0, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    return-object v0
.end method

.method nextNode(Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;)",
            "Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1121
    .local p1, n:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p1, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    return-object v0
.end method
