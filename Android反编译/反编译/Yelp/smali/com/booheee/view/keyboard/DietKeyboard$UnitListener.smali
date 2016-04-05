.class Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;
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
    name = "UnitListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/booheee/view/keyboard/DietKeyboard;


# direct methods
.method private constructor <init>(Lcom/booheee/view/keyboard/DietKeyboard;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/booheee/view/keyboard/DietKeyboard;Lcom/booheee/view/keyboard/DietKeyboard$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;-><init>(Lcom/booheee/view/keyboard/DietKeyboard;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/high16 v4, 0x42c8

    .line 182
    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->unitTextViews:Ljava/util/List;
    invoke-static {v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$1300(Lcom/booheee/view/keyboard/DietKeyboard;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->unitTextViews:Ljava/util/List;
    invoke-static {v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$1300(Lcom/booheee/view/keyboard/DietKeyboard;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->unitTextViews:Ljava/util/List;
    invoke-static {v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$1300(Lcom/booheee/view/keyboard/DietKeyboard;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 185
    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->unitTextViews:Ljava/util/List;
    invoke-static {v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$1300(Lcom/booheee/view/keyboard/DietKeyboard;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->unitTextViews:Ljava/util/List;
    invoke-static {v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$1300(Lcom/booheee/view/keyboard/DietKeyboard;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    invoke-virtual {v2}, Lcom/booheee/view/keyboard/DietKeyboard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/booheee/view/keyboard/R$color;->color_bg_number:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 187
    iget-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->mUnits:Ljava/util/List;
    invoke-static {v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$1400(Lcom/booheee/view/keyboard/DietKeyboard;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/booheee/view/keyboard/Unit;

    #setter for: Lcom/booheee/view/keyboard/DietKeyboard;->currentUnit:Lcom/booheee/view/keyboard/Unit;
    invoke-static {v2, v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$602(Lcom/booheee/view/keyboard/DietKeyboard;Lcom/booheee/view/keyboard/Unit;)Lcom/booheee/view/keyboard/Unit;

    .line 183
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->unitTextViews:Ljava/util/List;
    invoke-static {v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$1300(Lcom/booheee/view/keyboard/DietKeyboard;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    invoke-virtual {v2}, Lcom/booheee/view/keyboard/DietKeyboard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/booheee/view/keyboard/R$color;->color_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->unitTextViews:Ljava/util/List;
    invoke-static {v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$1300(Lcom/booheee/view/keyboard/DietKeyboard;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    invoke-virtual {v2}, Lcom/booheee/view/keyboard/DietKeyboard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/booheee/view/keyboard/R$color;->color_divider:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_2

    .line 195
    :cond_3
    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$300(Lcom/booheee/view/keyboard/DietKeyboard;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v3}, Lcom/booheee/view/keyboard/DietKeyboard;->access$300(Lcom/booheee/view/keyboard/DietKeyboard;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 196
    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->currentUnit:Lcom/booheee/view/keyboard/Unit;
    invoke-static {v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$600(Lcom/booheee/view/keyboard/DietKeyboard;)Lcom/booheee/view/keyboard/Unit;

    move-result-object v1

    iget-object v1, v1, Lcom/booheee/view/keyboard/Unit;->unit_name:Ljava/lang/String;

    const-string v2, "\u514b"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #setter for: Lcom/booheee/view/keyboard/DietKeyboard;->mAmount:F
    invoke-static {v1, v4}, Lcom/booheee/view/keyboard/DietKeyboard;->access$702(Lcom/booheee/view/keyboard/DietKeyboard;F)F

    .line 198
    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #setter for: Lcom/booheee/view/keyboard/DietKeyboard;->mGram:F
    invoke-static {v1, v4}, Lcom/booheee/view/keyboard/DietKeyboard;->access$802(Lcom/booheee/view/keyboard/DietKeyboard;F)F

    .line 199
    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    iget-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->mWeight:F
    invoke-static {v2}, Lcom/booheee/view/keyboard/DietKeyboard;->access$1000(Lcom/booheee/view/keyboard/DietKeyboard;)F

    move-result v2

    iget-object v3, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->mGram:F
    invoke-static {v3}, Lcom/booheee/view/keyboard/DietKeyboard;->access$800(Lcom/booheee/view/keyboard/DietKeyboard;)F

    move-result v3

    mul-float/2addr v2, v3

    #setter for: Lcom/booheee/view/keyboard/DietKeyboard;->mCalory:F
    invoke-static {v1, v2}, Lcom/booheee/view/keyboard/DietKeyboard;->access$902(Lcom/booheee/view/keyboard/DietKeyboard;F)F

    .line 211
    :goto_3
    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->txt_value:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$1100(Lcom/booheee/view/keyboard/DietKeyboard;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->mAmount:F
    invoke-static {v3}, Lcom/booheee/view/keyboard/DietKeyboard;->access$700(Lcom/booheee/view/keyboard/DietKeyboard;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #calls: Lcom/booheee/view/keyboard/DietKeyboard;->swithTxt()V
    invoke-static {v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$1200(Lcom/booheee/view/keyboard/DietKeyboard;)V

    goto/16 :goto_0

    .line 201
    :cond_4
    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->currentUnit:Lcom/booheee/view/keyboard/Unit;
    invoke-static {v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$600(Lcom/booheee/view/keyboard/DietKeyboard;)Lcom/booheee/view/keyboard/Unit;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->currentUnit:Lcom/booheee/view/keyboard/Unit;
    invoke-static {v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$600(Lcom/booheee/view/keyboard/DietKeyboard;)Lcom/booheee/view/keyboard/Unit;

    move-result-object v1

    iget-object v1, v1, Lcom/booheee/view/keyboard/Unit;->eat_weight:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 205
    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->currentUnit:Lcom/booheee/view/keyboard/Unit;
    invoke-static {v1}, Lcom/booheee/view/keyboard/DietKeyboard;->access$600(Lcom/booheee/view/keyboard/DietKeyboard;)Lcom/booheee/view/keyboard/Unit;

    move-result-object v1

    const-string v2, "1.0"

    iput-object v2, v1, Lcom/booheee/view/keyboard/Unit;->eat_weight:Ljava/lang/String;

    .line 207
    :cond_5
    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    const/high16 v2, 0x3f80

    #setter for: Lcom/booheee/view/keyboard/DietKeyboard;->mAmount:F
    invoke-static {v1, v2}, Lcom/booheee/view/keyboard/DietKeyboard;->access$702(Lcom/booheee/view/keyboard/DietKeyboard;F)F

    .line 208
    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    iget-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->currentUnit:Lcom/booheee/view/keyboard/Unit;
    invoke-static {v2}, Lcom/booheee/view/keyboard/DietKeyboard;->access$600(Lcom/booheee/view/keyboard/DietKeyboard;)Lcom/booheee/view/keyboard/Unit;

    move-result-object v2

    iget-object v2, v2, Lcom/booheee/view/keyboard/Unit;->eat_weight:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    #setter for: Lcom/booheee/view/keyboard/DietKeyboard;->mGram:F
    invoke-static {v1, v2}, Lcom/booheee/view/keyboard/DietKeyboard;->access$802(Lcom/booheee/view/keyboard/DietKeyboard;F)F

    .line 209
    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    iget-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->mWeight:F
    invoke-static {v2}, Lcom/booheee/view/keyboard/DietKeyboard;->access$1000(Lcom/booheee/view/keyboard/DietKeyboard;)F

    move-result v2

    iget-object v3, p0, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;->this$0:Lcom/booheee/view/keyboard/DietKeyboard;

    #getter for: Lcom/booheee/view/keyboard/DietKeyboard;->mGram:F
    invoke-static {v3}, Lcom/booheee/view/keyboard/DietKeyboard;->access$800(Lcom/booheee/view/keyboard/DietKeyboard;)F

    move-result v3

    mul-float/2addr v2, v3

    #setter for: Lcom/booheee/view/keyboard/DietKeyboard;->mCalory:F
    invoke-static {v1, v2}, Lcom/booheee/view/keyboard/DietKeyboard;->access$902(Lcom/booheee/view/keyboard/DietKeyboard;F)F

    goto :goto_3
.end method
