.class Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;
.super Ljava/lang/Object;
.source "DietKeyboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/booheee/view/keyboard/DietKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumBtnListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/booheee/view/keyboard/DietKeyboard;


# direct methods
.method private constructor <init>(Lcom/booheee/view/keyboard/DietKeyboard;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/booheee/view/keyboard/DietKeyboard;Lcom/booheee/view/keyboard/DietKeyboard$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;-><init>(Lcom/booheee/view/keyboard/DietKeyboard;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/booheee/view/keyboard/R$id;->btn_dot:I

    if-ne v0, v1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->hasDot:Z
    invoke-static {v0}, Lcom/booheee/view/keyboard/DietKeyboard;->access$200(Lcom/booheee/view/keyboard/DietKeyboard;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v0}, Lcom/booheee/view/keyboard/DietKeyboard;->access$300(Lcom/booheee/view/keyboard/DietKeyboard;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v0}, Lcom/booheee/view/keyboard/DietKeyboard;->access$300(Lcom/booheee/view/keyboard/DietKeyboard;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    const/4 v1, 0x1

    #setter for: Lcom/booheee/view/keyboard/DietKeyboard;->hasDot:Z
    invoke-static {v0, v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$202(Lcom/booheee/view/keyboard/DietKeyboard;Z)Z

    .line 155
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->currentUnit:Lcom/booheee/view/keyboard/Unit;
    invoke-static {v0}, Lcom/booheee/view/keyboard/DietKeyboard;->access$600(Lcom/booheee/view/keyboard/DietKeyboard;)Lcom/booheee/view/keyboard/Unit;

    move-result-object v0

    if-nez v0, :cond_3

    .line 167
    :goto_1
    return-void

    .line 150
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/booheee/view/keyboard/R$id;->btn_back:I

    if-ne v0, v1, :cond_2

    .line 151
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #calls: Lcom/booheee/view/keyboard/DietKeyboard;->doBack()V
    invoke-static {v0}, Lcom/booheee/view/keyboard/DietKeyboard;->access$400(Lcom/booheee/view/keyboard/DietKeyboard;)V

    goto :goto_0

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #calls: Lcom/booheee/view/keyboard/DietKeyboard;->doNum(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$500(Lcom/booheee/view/keyboard/DietKeyboard;Landroid/view/View;)V

    goto :goto_0

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v0}, Lcom/booheee/view/keyboard/DietKeyboard;->access$300(Lcom/booheee/view/keyboard/DietKeyboard;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 157
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$300(Lcom/booheee/view/keyboard/DietKeyboard;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    #setter for: Lcom/booheee/view/keyboard/DietKeyboard;->mAmount:F
    invoke-static {v0, v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$702(Lcom/booheee/view/keyboard/DietKeyboard;F)F

    .line 158
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->currentUnit:Lcom/booheee/view/keyboard/Unit;
    invoke-static {v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$600(Lcom/booheee/view/keyboard/DietKeyboard;)Lcom/booheee/view/keyboard/Unit;

    move-result-object v1

    iget-object v1, v1, Lcom/booheee/view/keyboard/Unit;->eat_weight:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->mAmount:F
    invoke-static {v2}, Lcom/booheee/view/keyboard/DietKeyboard;->access$700(Lcom/booheee/view/keyboard/DietKeyboard;)F

    move-result v2

    mul-float/2addr v1, v2

    #setter for: Lcom/booheee/view/keyboard/DietKeyboard;->mGram:F
    invoke-static {v0, v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$802(Lcom/booheee/view/keyboard/DietKeyboard;F)F

    .line 159
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->mWeight:F
    invoke-static {v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$1000(Lcom/booheee/view/keyboard/DietKeyboard;)F

    move-result v1

    iget-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->mGram:F
    invoke-static {v2}, Lcom/booheee/view/keyboard/DietKeyboard;->access$800(Lcom/booheee/view/keyboard/DietKeyboard;)F

    move-result v2

    mul-float/2addr v1, v2

    #setter for: Lcom/booheee/view/keyboard/DietKeyboard;->mCalory:F
    invoke-static {v0, v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$902(Lcom/booheee/view/keyboard/DietKeyboard;F)F

    .line 165
    :goto_2
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->txt_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/booheee/view/keyboard/DietKeyboard;->access$1100(Lcom/booheee/view/keyboard/DietKeyboard;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$300(Lcom/booheee/view/keyboard/DietKeyboard;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #calls: Lcom/booheee/view/keyboard/DietKeyboard;->swithTxt()V
    invoke-static {v0}, Lcom/booheee/view/keyboard/DietKeyboard;->access$1200(Lcom/booheee/view/keyboard/DietKeyboard;)V

    goto :goto_1

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #setter for: Lcom/booheee/view/keyboard/DietKeyboard;->mAmount:F
    invoke-static {v0, v2}, Lcom/booheee/view/keyboard/DietKeyboard;->access$702(Lcom/booheee/view/keyboard/DietKeyboard;F)F

    .line 162
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->mAmount:F
    invoke-static {v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$700(Lcom/booheee/view/keyboard/DietKeyboard;)F

    move-result v1

    #setter for: Lcom/booheee/view/keyboard/DietKeyboard;->mGram:F
    invoke-static {v0, v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$802(Lcom/booheee/view/keyboard/DietKeyboard;F)F

    .line 163
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #setter for: Lcom/booheee/view/keyboard/DietKeyboard;->mCalory:F
    invoke-static {v0, v2}, Lcom/booheee/view/keyboard/DietKeyboard;->access$902(Lcom/booheee/view/keyboard/DietKeyboard;F)F

    goto :goto_2
.end method
