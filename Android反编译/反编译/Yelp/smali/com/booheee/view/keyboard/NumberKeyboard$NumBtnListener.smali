.class Lcom/booheee/view/keyboard/NumberKeyboard$NumBtnListener;
.super Ljava/lang/Object;
.source "NumberKeyboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/booheee/view/keyboard/NumberKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumBtnListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/booheee/view/keyboard/NumberKeyboard;


# direct methods
.method private constructor <init>(Lcom/booheee/view/keyboard/NumberKeyboard;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/booheee/view/keyboard/NumberKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/NumberKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/booheee/view/keyboard/NumberKeyboard;Lcom/booheee/view/keyboard/NumberKeyboard$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/booheee/view/keyboard/NumberKeyboard$NumBtnListener;-><init>(Lcom/booheee/view/keyboard/NumberKeyboard;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/booheee/view/keyboard/R$id;->btn_dot:I

    if-ne v0, v1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/NumberKeyboard;

    #getter for: Lcom/booheee/view/keyboard/NumberKeyboard;->hasDot:Z
    invoke-static {v0}, Lcom/booheee/view/keyboard/NumberKeyboard;->access$100(Lcom/booheee/view/keyboard/NumberKeyboard;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/NumberKeyboard;

    #getter for: Lcom/booheee/view/keyboard/NumberKeyboard;->inputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v0}, Lcom/booheee/view/keyboard/NumberKeyboard;->access$200(Lcom/booheee/view/keyboard/NumberKeyboard;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/NumberKeyboard;

    #getter for: Lcom/booheee/view/keyboard/NumberKeyboard;->inputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v0}, Lcom/booheee/view/keyboard/NumberKeyboard;->access$200(Lcom/booheee/view/keyboard/NumberKeyboard;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/NumberKeyboard;

    const/4 v1, 0x1

    #setter for: Lcom/booheee/view/keyboard/NumberKeyboard;->hasDot:Z
    invoke-static {v0, v1}, Lcom/booheee/view/keyboard/NumberKeyboard;->access$102(Lcom/booheee/view/keyboard/NumberKeyboard;Z)Z

    .line 130
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/NumberKeyboard;

    #getter for: Lcom/booheee/view/keyboard/NumberKeyboard;->txt_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/booheee/view/keyboard/NumberKeyboard;->access$500(Lcom/booheee/view/keyboard/NumberKeyboard;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/booheee/view/keyboard/NumberKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/NumberKeyboard;

    #getter for: Lcom/booheee/view/keyboard/NumberKeyboard;->inputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v1}, Lcom/booheee/view/keyboard/NumberKeyboard;->access$200(Lcom/booheee/view/keyboard/NumberKeyboard;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/NumberKeyboard;

    #getter for: Lcom/booheee/view/keyboard/NumberKeyboard;->onResultListener:Lcom/booheee/view/keyboard/OnResultListener;
    invoke-static {v0}, Lcom/booheee/view/keyboard/NumberKeyboard;->access$600(Lcom/booheee/view/keyboard/NumberKeyboard;)Lcom/booheee/view/keyboard/OnResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/booheee/view/keyboard/NumberKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/NumberKeyboard;

    #getter for: Lcom/booheee/view/keyboard/NumberKeyboard;->inputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v1}, Lcom/booheee/view/keyboard/NumberKeyboard;->access$200(Lcom/booheee/view/keyboard/NumberKeyboard;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/booheee/view/keyboard/OnResultListener;->onValue(Ljava/lang/String;)V

    .line 132
    return-void

    .line 125
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/booheee/view/keyboard/R$id;->btn_back:I

    if-ne v0, v1, :cond_2

    .line 126
    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/NumberKeyboard;

    #calls: Lcom/booheee/view/keyboard/NumberKeyboard;->doBack()V
    invoke-static {v0}, Lcom/booheee/view/keyboard/NumberKeyboard;->access$300(Lcom/booheee/view/keyboard/NumberKeyboard;)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/NumberKeyboard;

    #calls: Lcom/booheee/view/keyboard/NumberKeyboard;->doNum(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/booheee/view/keyboard/NumberKeyboard;->access$400(Lcom/booheee/view/keyboard/NumberKeyboard;Landroid/view/View;)V

    goto :goto_0
.end method
