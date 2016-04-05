.class public Lcom/booheee/view/keyboard/SportKeyboard;
.super Landroid/widget/FrameLayout;
.source "SportKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/booheee/view/keyboard/SportKeyboard$1;,
        Lcom/booheee/view/keyboard/SportKeyboard$NumBtnListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:I = 0x1e

.field private static final MAX_GRAM:I = 0x3e7


# instance fields
.field private btn0:Landroid/widget/Button;

.field private btn1:Landroid/widget/Button;

.field private btn2:Landroid/widget/Button;

.field private btn3:Landroid/widget/Button;

.field private btn4:Landroid/widget/Button;

.field private btn5:Landroid/widget/Button;

.field private btn6:Landroid/widget/Button;

.field private btn7:Landroid/widget/Button;

.field private btn8:Landroid/widget/Button;

.field private btn9:Landroid/widget/Button;

.field private btn_back:Landroid/widget/Button;

.field private btn_dot:Landroid/widget/Button;

.field private currentUnit:Ljava/lang/String;

.field private hasDot:Z

.field private hasNumAfterDot:Z

.field private inputBuffer:Ljava/lang/StringBuffer;

.field private mAmount:F

.field private mCalory:F

.field private mWeight:F

.field private mets:F

.field private onResultListener:Lcom/booheee/view/keyboard/OnSportResultListener;

.field private txt_calory:Landroid/widget/TextView;

.field private txt_gram:Landroid/widget/TextView;

.field private txt_unit:Landroid/widget/TextView;

.field private txt_value:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/booheee/view/keyboard/SportKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/booheee/view/keyboard/SportKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->mAmount:F

    .line 35
    const-string v0, "\u5206\u949f"

    iput-object v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->currentUnit:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    .line 39
    iput-boolean v1, p0, Lcom/booheee/view/keyboard/SportKeyboard;->hasDot:Z

    .line 40
    iput-boolean v1, p0, Lcom/booheee/view/keyboard/SportKeyboard;->hasNumAfterDot:Z

    .line 55
    invoke-direct {p0}, Lcom/booheee/view/keyboard/SportKeyboard;->findViews()V

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/booheee/view/keyboard/SportKeyboard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/booheee/view/keyboard/SportKeyboard;->doBack()V

    return-void
.end method

.method static synthetic access$200(Lcom/booheee/view/keyboard/SportKeyboard;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/booheee/view/keyboard/SportKeyboard;->doNum(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/booheee/view/keyboard/SportKeyboard;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/booheee/view/keyboard/SportKeyboard;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->mAmount:F

    return v0
.end method

.method static synthetic access$402(Lcom/booheee/view/keyboard/SportKeyboard;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/booheee/view/keyboard/SportKeyboard;->mAmount:F

    return p1
.end method

.method static synthetic access$500(Lcom/booheee/view/keyboard/SportKeyboard;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->mCalory:F

    return v0
.end method

.method static synthetic access$502(Lcom/booheee/view/keyboard/SportKeyboard;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/booheee/view/keyboard/SportKeyboard;->mCalory:F

    return p1
.end method

.method static synthetic access$600(Lcom/booheee/view/keyboard/SportKeyboard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->txt_value:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/booheee/view/keyboard/SportKeyboard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->txt_calory:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/booheee/view/keyboard/SportKeyboard;)Lcom/booheee/view/keyboard/OnSportResultListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->onResultListener:Lcom/booheee/view/keyboard/OnSportResultListener;

    return-object v0
.end method

.method private doBack()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/booheee/view/keyboard/SportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 174
    iget-object v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    iput-boolean v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->hasDot:Z

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/booheee/view/keyboard/SportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 180
    iput-boolean v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->hasNumAfterDot:Z

    goto :goto_0
.end method

.method private doNum(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-boolean v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->hasDot:Z

    if-nez v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 159
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const v1, 0x4479c000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/booheee/view/keyboard/SportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const-string v2, "999"

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    iput-boolean v3, p0, Lcom/booheee/view/keyboard/SportKeyboard;->hasNumAfterDot:Z

    .line 162
    iput-boolean v3, p0, Lcom/booheee/view/keyboard/SportKeyboard;->hasDot:Z

    .line 164
    :cond_1
    return-void

    .line 155
    :cond_2
    iget-boolean v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->hasNumAfterDot:Z

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->hasNumAfterDot:Z

    goto :goto_0
.end method

.method private findViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/booheee/view/keyboard/SportKeyboard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/booheee/view/keyboard/R$layout;->view_sport_keyboard:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, view:Landroid/view/View;
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn1:Landroid/widget/Button;

    .line 62
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn2:Landroid/widget/Button;

    .line 63
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn3:Landroid/widget/Button;

    .line 64
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn4:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn4:Landroid/widget/Button;

    .line 65
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn5:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn5:Landroid/widget/Button;

    .line 66
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn6:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn6:Landroid/widget/Button;

    .line 67
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn7:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn7:Landroid/widget/Button;

    .line 68
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn8:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn8:Landroid/widget/Button;

    .line 69
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn9:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn9:Landroid/widget/Button;

    .line 70
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn0:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn0:Landroid/widget/Button;

    .line 71
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn_dot:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn_dot:Landroid/widget/Button;

    .line 72
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn_back:Landroid/widget/Button;

    .line 74
    new-instance v0, Lcom/booheee/view/keyboard/SportKeyboard$NumBtnListener;

    invoke-direct {v0, p0, v4}, Lcom/booheee/view/keyboard/SportKeyboard$NumBtnListener;-><init>(Lcom/booheee/view/keyboard/SportKeyboard;Lcom/booheee/view/keyboard/SportKeyboard$1;)V

    .line 75
    .local v0, numBtnListener:Lcom/booheee/view/keyboard/SportKeyboard$NumBtnListener;
    iget-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn1:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn2:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn3:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn4:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn5:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn6:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn7:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn8:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn9:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn0:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->btn_back:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget v2, Lcom/booheee/view/keyboard/R$id;->txt_calory:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->txt_calory:Landroid/widget/TextView;

    .line 88
    sget v2, Lcom/booheee/view/keyboard/R$id;->txt_value:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->txt_value:Landroid/widget/TextView;

    .line 89
    sget v2, Lcom/booheee/view/keyboard/R$id;->txt_unit:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->txt_unit:Landroid/widget/TextView;

    .line 90
    sget v2, Lcom/booheee/view/keyboard/R$id;->txt_gram:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->txt_gram:Landroid/widget/TextView;

    .line 91
    iget-object v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->txt_gram:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/booheee/view/keyboard/SportKeyboard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    return-void
.end method

.method private initValue()V
    .locals 5

    .prologue
    .line 105
    iget v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->mAmount:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 106
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->mAmount:F

    .line 107
    :cond_0
    iget v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->mAmount:F

    invoke-virtual {p0, v0}, Lcom/booheee/view/keyboard/SportKeyboard;->calcCalory(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->mCalory:F

    .line 108
    iget-object v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->txt_value:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->mAmount:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->txt_unit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/booheee/view/keyboard/SportKeyboard;->currentUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->txt_calory:Landroid/widget/TextView;

    const-string v1, "%d \u5343\u5361"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/booheee/view/keyboard/SportKeyboard;->mCalory:F

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/booheee/view/keyboard/SportKeyboard;->onResultListener:Lcom/booheee/view/keyboard/OnSportResultListener;

    iget v1, p0, Lcom/booheee/view/keyboard/SportKeyboard;->mAmount:F

    iget v2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->mCalory:F

    invoke-interface {v0, v1, v2}, Lcom/booheee/view/keyboard/OnSportResultListener;->onValue(FF)V

    .line 112
    return-void
.end method


# virtual methods
.method public calcCalory(F)I
    .locals 6
    .parameter "duration"

    .prologue
    .line 145
    const-wide v2, 0x3ff570a3d70a3d71L

    iget v1, p0, Lcom/booheee/view/keyboard/SportKeyboard;->mets:F

    const/high16 v4, 0x3f80

    sub-float/2addr v1, v4

    float-to-double v4, v1

    mul-double/2addr v2, v4

    iget v1, p0, Lcom/booheee/view/keyboard/SportKeyboard;->mWeight:F

    float-to-double v4, v1

    mul-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x404e

    div-double/2addr v2, v4

    double-to-float v0, v2

    .line 146
    .local v0, calory:F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public init(FFF)V
    .locals 0
    .parameter "amount"
    .parameter "mets"
    .parameter "weight"

    .prologue
    .line 98
    iput p1, p0, Lcom/booheee/view/keyboard/SportKeyboard;->mAmount:F

    .line 99
    iput p2, p0, Lcom/booheee/view/keyboard/SportKeyboard;->mets:F

    .line 100
    iput p3, p0, Lcom/booheee/view/keyboard/SportKeyboard;->mWeight:F

    .line 101
    invoke-direct {p0}, Lcom/booheee/view/keyboard/SportKeyboard;->initValue()V

    .line 102
    return-void
.end method

.method public setOnResultListener(Lcom/booheee/view/keyboard/OnSportResultListener;)V
    .locals 0
    .parameter "onResultListener"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/booheee/view/keyboard/SportKeyboard;->onResultListener:Lcom/booheee/view/keyboard/OnSportResultListener;

    .line 188
    return-void
.end method
