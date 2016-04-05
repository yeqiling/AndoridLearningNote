.class Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;
.super Ljava/lang/Object;
.source "CustomSportKeyboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/booheee/view/keyboard/CustomSportKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumBtnListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;


# direct methods
.method private constructor <init>(Lcom/booheee/view/keyboard/CustomSportKeyboard;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/booheee/view/keyboard/CustomSportKeyboard;Lcom/booheee/view/keyboard/CustomSportKeyboard$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;-><init>(Lcom/booheee/view/keyboard/CustomSportKeyboard;)V

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
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomSportKeyboard;->hasDot:Z
    invoke-static {v0}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->access$100(Lcom/booheee/view/keyboard/CustomSportKeyboard;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomSportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v0}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->access$200(Lcom/booheee/view/keyboard/CustomSportKeyboard;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomSportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v0}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->access$200(Lcom/booheee/view/keyboard/CustomSportKeyboard;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    #setter for: Lcom/booheee/view/keyboard/CustomSportKeyboard;->hasDot:Z
    invoke-static {v0, v3}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->access$102(Lcom/booheee/view/keyboard/CustomSportKeyboard;Z)Z

    .line 131
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomSportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v0}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->access$200(Lcom/booheee/view/keyboard/CustomSportKeyboard;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    iget-object v1, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomSportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v1}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->access$200(Lcom/booheee/view/keyboard/CustomSportKeyboard;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    #setter for: Lcom/booheee/view/keyboard/CustomSportKeyboard;->mAmount:F
    invoke-static {v0, v1}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->access$502(Lcom/booheee/view/keyboard/CustomSportKeyboard;F)F

    .line 133
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    iget-object v1, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    iget-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomSportKeyboard;->mAmount:F
    invoke-static {v2}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->access$500(Lcom/booheee/view/keyboard/CustomSportKeyboard;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->calcCalory(F)I

    move-result v1

    int-to-float v1, v1

    #setter for: Lcom/booheee/view/keyboard/CustomSportKeyboard;->mCalory:F
    invoke-static {v0, v1}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->access$602(Lcom/booheee/view/keyboard/CustomSportKeyboard;F)F

    .line 138
    :goto_1
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomSportKeyboard;->txt_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->access$700(Lcom/booheee/view/keyboard/CustomSportKeyboard;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomSportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v1}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->access$200(Lcom/booheee/view/keyboard/CustomSportKeyboard;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomSportKeyboard;->txt_calory:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->access$800(Lcom/booheee/view/keyboard/CustomSportKeyboard;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "%d \u5343\u5361"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomSportKeyboard;->mCalory:F
    invoke-static {v4}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->access$600(Lcom/booheee/view/keyboard/CustomSportKeyboard;)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomSportKeyboard;->onResultListener:Lcom/booheee/view/keyboard/OnCustomSportResultListener;
    invoke-static {v0}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->access$900(Lcom/booheee/view/keyboard/CustomSportKeyboard;)Lcom/booheee/view/keyboard/OnCustomSportResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomSportKeyboard;->mAmount:F
    invoke-static {v1}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->access$500(Lcom/booheee/view/keyboard/CustomSportKeyboard;)F

    move-result v1

    iget-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    #getter for: Lcom/booheee/view/keyboard/CustomSportKeyboard;->mCalory:F
    invoke-static {v2}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->access$600(Lcom/booheee/view/keyboard/CustomSportKeyboard;)F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/booheee/view/keyboard/OnCustomSportResultListener;->onValue(FF)V

    .line 141
    return-void

    .line 125
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/booheee/view/keyboard/R$id;->btn_back:I

    if-ne v0, v1, :cond_2

    .line 126
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    #calls: Lcom/booheee/view/keyboard/CustomSportKeyboard;->doBack()V
    invoke-static {v0}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->access$300(Lcom/booheee/view/keyboard/CustomSportKeyboard;)V

    goto/16 :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    #calls: Lcom/booheee/view/keyboard/CustomSportKeyboard;->doNum(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->access$400(Lcom/booheee/view/keyboard/CustomSportKeyboard;Landroid/view/View;)V

    goto/16 :goto_0

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    #setter for: Lcom/booheee/view/keyboard/CustomSportKeyboard;->mAmount:F
    invoke-static {v0, v2}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->access$502(Lcom/booheee/view/keyboard/CustomSportKeyboard;F)F

    .line 136
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;->this$0:Lcom/booheee/view/keyboard/CustomSportKeyboard;

    #setter for: Lcom/booheee/view/keyboard/CustomSportKeyboard;->mCalory:F
    invoke-static {v0, v2}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->access$602(Lcom/booheee/view/keyboard/CustomSportKeyboard;F)F

    goto :goto_1
.end method
