.class Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;
.super Ljava/lang/Object;
.source "CustomFoodKeyboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/booheee/view/keyboard/CustomFoodKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumBtnListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;


# direct methods
.method private constructor <init>(Lcom/booheee/view/keyboard/CustomFoodKeyboard;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/booheee/view/keyboard/CustomFoodKeyboard;Lcom/booheee/view/keyboard/CustomFoodKeyboard$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;-><init>(Lcom/booheee/view/keyboard/CustomFoodKeyboard;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/booheee/view/keyboard/R$id;->btn_dot:I

    if-ne v0, v1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomFoodKeyboard;->hasDot:Z
    invoke-static {v0}, Lcom/booheee/view/keyboard/CustomFoodKeyboard;->access$100(Lcom/booheee/view/keyboard/CustomFoodKeyboard;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomFoodKeyboard;->inputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v0}, Lcom/booheee/view/keyboard/CustomFoodKeyboard;->access$200(Lcom/booheee/view/keyboard/CustomFoodKeyboard;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomFoodKeyboard;->inputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v0}, Lcom/booheee/view/keyboard/CustomFoodKeyboard;->access$200(Lcom/booheee/view/keyboard/CustomFoodKeyboard;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    #setter for: Lcom/booheee/view/keyboard/CustomFoodKeyboard;->hasDot:Z
    invoke-static {v0, v3}, Lcom/booheee/view/keyboard/CustomFoodKeyboard;->access$102(Lcom/booheee/view/keyboard/CustomFoodKeyboard;Z)Z

    .line 131
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomFoodKeyboard;->inputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v0}, Lcom/booheee/view/keyboard/CustomFoodKeyboard;->access$200(Lcom/booheee/view/keyboard/CustomFoodKeyboard;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    iget-object v1, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomFoodKeyboard;->inputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v1}, Lcom/booheee/view/keyboard/CustomFoodKeyboard;->access$200(Lcom/booheee/view/keyboard/CustomFoodKeyboard;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    #setter for: Lcom/booheee/view/keyboard/CustomFoodKeyboard;->mAmount:F
    invoke-static {v0, v1}, Lcom/booheee/view/keyboard/CustomFoodKeyboard;->access$502(Lcom/booheee/view/keyboard/CustomFoodKeyboard;F)F

    .line 133
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    iget-object v1, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    iget-object v2, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomFoodKeyboard;->mAmount:F
    invoke-static {v2}, Lcom/booheee/view/keyboard/CustomFoodKeyboard;->access$500(Lcom/booheee/view/keyboard/CustomFoodKeyboard;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/booheee/view/keyboard/CustomFoodKeyboard;->calcCalory(F)I

    move-result v1

    int-to-float v1, v1

    #setter for: Lcom/booheee/view/keyboard/CustomFoodKeyboard;->mCalory:F
    invoke-static {v0, v1}, Lcom/booheee/view/keyboard/CustomFoodKeyboard;->access$602(Lcom/booheee/view/keyboard/CustomFoodKeyboard;F)F

    .line 138
    :goto_1
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomFoodKeyboard;->txt_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/booheee/view/keyboard/CustomFoodKeyboard;->access$700(Lcom/booheee/view/keyboard/CustomFoodKeyboard;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomFoodKeyboard;->inputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v1}, Lcom/booheee/view/keyboard/CustomFoodKeyboard;->access$200(Lcom/booheee/view/keyboard/CustomFoodKeyboard;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomFoodKeyboard;->txt_calory:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/booheee/view/keyboard/CustomFoodKeyboard;->access$800(Lcom/booheee/view/keyboard/CustomFoodKeyboard;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "%d \u5343\u5361"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomFoodKeyboard;->mCalory:F
    invoke-static {v4}, Lcom/booheee/view/keyboard/CustomFoodKeyboard;->access$600(Lcom/booheee/view/keyboard/CustomFoodKeyboard;)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomFoodKeyboard;->onResultListener:Lcom/booheee/view/keyboard/OnCustomFoodResultListener;
    invoke-static {v0}, Lcom/booheee/view/keyboard/CustomFoodKeyboard;->access$900(Lcom/booheee/view/keyboard/CustomFoodKeyboard;)Lcom/booheee/view/keyboard/OnCustomFoodResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomFoodKeyboard;->mAmount:F
    invoke-static {v1}, Lcom/booheee/view/keyboard/CustomFoodKeyboard;->access$500(Lcom/booheee/view/keyboard/CustomFoodKeyboard;)F

    move-result v1

    iget-object v2, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomFoodKeyboard;->mCalory:F
    invoke-static {v2}, Lcom/booheee/view/keyboard/CustomFoodKeyboard;->access$600(Lcom/booheee/view/keyboard/CustomFoodKeyboard;)F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/booheee/view/keyboard/OnCustomFoodResultListener;->onValue(FF)V

    .line 141
    return-void

    .line 125
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/booheee/view/keyboard/R$id;->btn_back:I

    if-ne v0, v1, :cond_2

    .line 126
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    #calls: Lcom/booheee/view/keyboard/CustomFoodKeyboard;->doBack()V
    invoke-static {v0}, Lcom/booheee/view/keyboard/CustomFoodKeyboard;->access$300(Lcom/booheee/view/keyboard/CustomFoodKeyboard;)V

    goto/16 :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    #calls: Lcom/booheee/view/keyboard/CustomFoodKeyboard;->doNum(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/booheee/view/keyboard/CustomFoodKeyboard;->access$400(Lcom/booheee/view/keyboard/CustomFoodKeyboard;Landroid/view/View;)V

    goto/16 :goto_0

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    #setter for: Lcom/booheee/view/keyboard/CustomFoodKeyboard;->mAmount:F
    invoke-static {v0, v2}, Lcom/booheee/view/keyboard/CustomFoodKeyboard;->access$502(Lcom/booheee/view/keyboard/CustomFoodKeyboard;F)F

    .line 136
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomFoodKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomFoodKeyboard;

    #setter for: Lcom/booheee/view/keyboard/CustomFoodKeyboard;->mCalory:F
    invoke-static {v0, v2}, Lcom/booheee/view/keyboard/CustomFoodKeyboard;->access$602(Lcom/booheee/view/keyboard/CustomFoodKeyboard;F)F

    goto :goto_1
.end method
