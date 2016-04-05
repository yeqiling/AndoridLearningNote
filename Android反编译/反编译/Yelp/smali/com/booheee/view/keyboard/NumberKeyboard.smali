.class public Lcom/booheee/view/keyboard/NumberKeyboard;
.super Landroid/widget/FrameLayout;
.source "NumberKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/booheee/view/keyboard/NumberKeyboard$1;,
        Lcom/booheee/view/keyboard/NumberKeyboard$NumBtnListener;
    }
.end annotation


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

.field private mValue:F

.field private maxValue:F

.field private minValue:F

.field private onResultListener:Lcom/booheee/view/keyboard/OnResultListener;

.field private txt_calory:Landroid/widget/TextView;

.field private txt_gram:Landroid/widget/TextView;

.field private txt_unit:Landroid/widget/TextView;

.field private txt_value:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/booheee/view/keyboard/NumberKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FLjava/lang/String;FF)V
    .locals 2
    .parameter "context"
    .parameter "value"
    .parameter "unit"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    .line 32
    iput-boolean v1, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->hasDot:Z

    .line 33
    iput-boolean v1, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->hasNumAfterDot:Z

    .line 37
    iput p2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->mValue:F

    .line 38
    iput p4, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->minValue:F

    .line 39
    iput p5, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->maxValue:F

    .line 40
    iput-object p3, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->currentUnit:Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Lcom/booheee/view/keyboard/NumberKeyboard;->findViews()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/booheee/view/keyboard/NumberKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    .line 32
    iput-boolean v1, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->hasDot:Z

    .line 33
    iput-boolean v1, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->hasNumAfterDot:Z

    .line 56
    invoke-direct {p0}, Lcom/booheee/view/keyboard/NumberKeyboard;->findViews()V

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/booheee/view/keyboard/NumberKeyboard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->hasDot:Z

    return v0
.end method

.method static synthetic access$102(Lcom/booheee/view/keyboard/NumberKeyboard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->hasDot:Z

    return p1
.end method

.method static synthetic access$200(Lcom/booheee/view/keyboard/NumberKeyboard;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/booheee/view/keyboard/NumberKeyboard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/booheee/view/keyboard/NumberKeyboard;->doBack()V

    return-void
.end method

.method static synthetic access$400(Lcom/booheee/view/keyboard/NumberKeyboard;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/booheee/view/keyboard/NumberKeyboard;->doNum(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/booheee/view/keyboard/NumberKeyboard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->txt_value:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/booheee/view/keyboard/NumberKeyboard;)Lcom/booheee/view/keyboard/OnResultListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->onResultListener:Lcom/booheee/view/keyboard/OnResultListener;

    return-object v0
.end method

.method private doBack()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 161
    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    iput-boolean v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->hasDot:Z

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 167
    iput-boolean v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->hasNumAfterDot:Z

    goto :goto_0
.end method

.method private doNum(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 139
    iget-boolean v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->hasDot:Z

    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 146
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->maxValue:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->maxValue:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    iput-boolean v4, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->hasNumAfterDot:Z

    .line 149
    iput-boolean v4, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->hasDot:Z

    .line 151
    :cond_1
    return-void

    .line 141
    :cond_2
    iget-boolean v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->hasNumAfterDot:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->hasNumAfterDot:Z

    goto :goto_0
.end method

.method private findViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/booheee/view/keyboard/NumberKeyboard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/booheee/view/keyboard/R$layout;->view_number_keyboard:I

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, view:Landroid/view/View;
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn1:Landroid/widget/Button;

    .line 63
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn2:Landroid/widget/Button;

    .line 64
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn3:Landroid/widget/Button;

    .line 65
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn4:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn4:Landroid/widget/Button;

    .line 66
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn5:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn5:Landroid/widget/Button;

    .line 67
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn6:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn6:Landroid/widget/Button;

    .line 68
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn7:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn7:Landroid/widget/Button;

    .line 69
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn8:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn8:Landroid/widget/Button;

    .line 70
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn9:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn9:Landroid/widget/Button;

    .line 71
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn0:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn0:Landroid/widget/Button;

    .line 72
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn_dot:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn_dot:Landroid/widget/Button;

    .line 73
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn_back:Landroid/widget/Button;

    .line 75
    new-instance v0, Lcom/booheee/view/keyboard/NumberKeyboard$NumBtnListener;

    invoke-direct {v0, p0, v6}, Lcom/booheee/view/keyboard/NumberKeyboard$NumBtnListener;-><init>(Lcom/booheee/view/keyboard/NumberKeyboard;Lcom/booheee/view/keyboard/NumberKeyboard$1;)V

    .line 76
    .local v0, numBtnListener:Lcom/booheee/view/keyboard/NumberKeyboard$NumBtnListener;
    iget-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn1:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn2:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn3:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn4:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn5:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn6:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn7:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn8:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn9:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn0:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn_dot:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->btn_back:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    sget v2, Lcom/booheee/view/keyboard/R$id;->txt_calory:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->txt_calory:Landroid/widget/TextView;

    .line 90
    sget v2, Lcom/booheee/view/keyboard/R$id;->txt_value:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->txt_value:Landroid/widget/TextView;

    .line 91
    sget v2, Lcom/booheee/view/keyboard/R$id;->txt_unit:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->txt_unit:Landroid/widget/TextView;

    .line 92
    sget v2, Lcom/booheee/view/keyboard/R$id;->txt_gram:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->txt_gram:Landroid/widget/TextView;

    .line 93
    iget-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->txt_gram:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->txt_calory:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/booheee/view/keyboard/NumberKeyboard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->mValue:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    .line 98
    iput v5, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->mValue:F

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->txt_value:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->mValue:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->txt_unit:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->currentUnit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method


# virtual methods
.method public init(FLjava/lang/String;FF)V
    .locals 3
    .parameter "value"
    .parameter "unit"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v1, 0x0

    .line 104
    iput p1, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->mValue:F

    .line 105
    iput-object p2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->currentUnit:Ljava/lang/String;

    .line 106
    iput p3, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->minValue:F

    .line 107
    iput p4, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->maxValue:F

    .line 108
    iget v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->mValue:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 109
    iput v1, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->mValue:F

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->txt_value:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->mValue:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->txt_unit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->currentUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method public setOnResultListener(Lcom/booheee/view/keyboard/OnResultListener;)V
    .locals 0
    .parameter "onResultListener"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/booheee/view/keyboard/NumberKeyboard;->onResultListener:Lcom/booheee/view/keyboard/OnResultListener;

    .line 175
    return-void
.end method
