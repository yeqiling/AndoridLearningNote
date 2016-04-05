.class public Lcom/booheee/view/keyboard/CustomSportKeyboard;
.super Landroid/widget/FrameLayout;
.source "CustomSportKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/booheee/view/keyboard/CustomSportKeyboard$1;,
        Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:I = 0x0

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

.field private onResultListener:Lcom/booheee/view/keyboard/OnCustomSportResultListener;

.field private txt_calory:Landroid/widget/TextView;

.field private txt_gram:Landroid/widget/TextView;

.field private txt_unit:Landroid/widget/TextView;

.field private txt_value:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/booheee/view/keyboard/CustomSportKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/booheee/view/keyboard/CustomSportKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->mAmount:F

    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    .line 38
    iput-boolean v1, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->hasDot:Z

    .line 39
    iput-boolean v1, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->hasNumAfterDot:Z

    .line 54
    invoke-direct {p0}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->findViews()V

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/booheee/view/keyboard/CustomSportKeyboard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->hasDot:Z

    return v0
.end method

.method static synthetic access$102(Lcom/booheee/view/keyboard/CustomSportKeyboard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->hasDot:Z

    return p1
.end method

.method static synthetic access$200(Lcom/booheee/view/keyboard/CustomSportKeyboard;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/booheee/view/keyboard/CustomSportKeyboard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->doBack()V

    return-void
.end method

.method static synthetic access$400(Lcom/booheee/view/keyboard/CustomSportKeyboard;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->doNum(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/booheee/view/keyboard/CustomSportKeyboard;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->mAmount:F

    return v0
.end method

.method static synthetic access$502(Lcom/booheee/view/keyboard/CustomSportKeyboard;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->mAmount:F

    return p1
.end method

.method static synthetic access$600(Lcom/booheee/view/keyboard/CustomSportKeyboard;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->mCalory:F

    return v0
.end method

.method static synthetic access$602(Lcom/booheee/view/keyboard/CustomSportKeyboard;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->mCalory:F

    return p1
.end method

.method static synthetic access$700(Lcom/booheee/view/keyboard/CustomSportKeyboard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->txt_value:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/booheee/view/keyboard/CustomSportKeyboard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->txt_calory:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/booheee/view/keyboard/CustomSportKeyboard;)Lcom/booheee/view/keyboard/OnCustomSportResultListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->onResultListener:Lcom/booheee/view/keyboard/OnCustomSportResultListener;

    return-object v0
.end method

.method private doBack()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 174
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    iput-boolean v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->hasDot:Z

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 180
    iput-boolean v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->hasNumAfterDot:Z

    goto :goto_0
.end method

.method private doNum(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-boolean v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->hasDot:Z

    if-nez v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 159
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const v1, 0x4479c000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const-string v2, "999"

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    iput-boolean v3, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->hasNumAfterDot:Z

    .line 162
    iput-boolean v3, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->hasDot:Z

    .line 164
    :cond_1
    return-void

    .line 155
    :cond_2
    iget-boolean v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->hasNumAfterDot:Z

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->hasNumAfterDot:Z

    goto :goto_0
.end method

.method private findViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/booheee/view/keyboard/R$layout;->view_sport_keyboard:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, view:Landroid/view/View;
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn1:Landroid/widget/Button;

    .line 61
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn2:Landroid/widget/Button;

    .line 62
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn3:Landroid/widget/Button;

    .line 63
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn4:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn4:Landroid/widget/Button;

    .line 64
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn5:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn5:Landroid/widget/Button;

    .line 65
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn6:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn6:Landroid/widget/Button;

    .line 66
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn7:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn7:Landroid/widget/Button;

    .line 67
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn8:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn8:Landroid/widget/Button;

    .line 68
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn9:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn9:Landroid/widget/Button;

    .line 69
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn0:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn0:Landroid/widget/Button;

    .line 70
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn_back:Landroid/widget/Button;

    .line 71
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn_dot:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn_dot:Landroid/widget/Button;

    .line 73
    new-instance v0, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;

    invoke-direct {v0, p0, v4}, Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;-><init>(Lcom/booheee/view/keyboard/CustomSportKeyboard;Lcom/booheee/view/keyboard/CustomSportKeyboard$1;)V

    .line 74
    .local v0, numBtnListener:Lcom/booheee/view/keyboard/CustomSportKeyboard$NumBtnListener;
    iget-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn1:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn2:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn3:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn4:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn5:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn6:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn7:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn8:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn9:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn0:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn_back:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->btn_dot:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget v2, Lcom/booheee/view/keyboard/R$id;->txt_calory:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->txt_calory:Landroid/widget/TextView;

    .line 88
    sget v2, Lcom/booheee/view/keyboard/R$id;->txt_value:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->txt_value:Landroid/widget/TextView;

    .line 89
    sget v2, Lcom/booheee/view/keyboard/R$id;->txt_unit:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->txt_unit:Landroid/widget/TextView;

    .line 90
    sget v2, Lcom/booheee/view/keyboard/R$id;->txt_gram:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->txt_gram:Landroid/widget/TextView;

    .line 91
    iget-object v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->txt_gram:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    return-void
.end method

.method private initValue()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 105
    iget v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->mAmount:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 106
    iput v1, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->mAmount:F

    .line 107
    :cond_0
    iget v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->mCalory:F

    iget v1, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->mAmount:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->mWeight:F

    .line 108
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->txt_value:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->mAmount:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->txt_unit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->currentUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->txt_calory:Landroid/widget/TextView;

    const-string v1, "%d \u5343\u5361"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->mCalory:F

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->onResultListener:Lcom/booheee/view/keyboard/OnCustomSportResultListener;

    iget v1, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->mAmount:F

    iget v2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->mCalory:F

    invoke-interface {v0, v1, v2}, Lcom/booheee/view/keyboard/OnCustomSportResultListener;->onValue(FF)V

    .line 112
    return-void
.end method


# virtual methods
.method public calcCalory(F)I
    .locals 2
    .parameter "duration"

    .prologue
    .line 145
    iget v1, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->mWeight:F

    mul-float v0, v1, p1

    .line 146
    .local v0, calory:F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public init(FFLjava/lang/String;)V
    .locals 0
    .parameter "amount"
    .parameter "calory"
    .parameter "unit"

    .prologue
    .line 98
    iput p1, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->mAmount:F

    .line 99
    iput p2, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->mCalory:F

    .line 100
    iput-object p3, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->currentUnit:Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lcom/booheee/view/keyboard/CustomSportKeyboard;->initValue()V

    .line 102
    return-void
.end method

.method public setOnResultListener(Lcom/booheee/view/keyboard/OnCustomSportResultListener;)V
    .locals 0
    .parameter "onResultListener"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/booheee/view/keyboard/CustomSportKeyboard;->onResultListener:Lcom/booheee/view/keyboard/OnCustomSportResultListener;

    .line 188
    return-void
.end method
