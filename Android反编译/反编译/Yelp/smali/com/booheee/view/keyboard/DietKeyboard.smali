.class public Lcom/booheee/view/keyboard/DietKeyboard;
.super Landroid/widget/LinearLayout;
.source "DietKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/booheee/view/keyboard/DietKeyboard$1;,
        Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;,
        Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_GRAM_VALUE:I = 0x64

.field private static final DEFAULT_OTHER_VALUE:I = 0x1

.field private static final MAX_GRAM:I = 0x3e7

.field private static final MAX_OTHER:I = 0x64

.field private static final UNIT_GRAM_CN:Ljava/lang/String; = "\u514b"


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

.field private currentUnit:Lcom/booheee/view/keyboard/Unit;

.field private hasDot:Z

.field private hasNumAfterDot:Z

.field private inputBuffer:Ljava/lang/StringBuffer;

.field private ll_diet_unit:Landroid/widget/LinearLayout;

.field private mAmount:F

.field private mCalory:F

.field private mGram:F

.field private mUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/booheee/view/keyboard/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private mWeight:F

.field private onResultListener:Lcom/booheee/view/keyboard/OnDietResultListener;

.field private txt_calory:Landroid/widget/TextView;

.field private txt_gram:Landroid/widget/TextView;

.field private txt_unit:Landroid/widget/TextView;

.field private txt_value:Landroid/widget/TextView;

.field private unitTextViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/booheee/view/keyboard/DietKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/booheee/view/keyboard/DietKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mUnits:Ljava/util/List;

    .line 34
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mAmount:F

    .line 39
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->unitTextViews:Ljava/util/List;

    .line 42
    iput-boolean v1, p0, Lcom/booheee/view/keyboard/DietKeyboard;->hasDot:Z

    .line 43
    iput-boolean v1, p0, Lcom/booheee/view/keyboard/DietKeyboard;->hasNumAfterDot:Z

    .line 55
    invoke-direct {p0}, Lcom/booheee/view/keyboard/DietKeyboard;->findViews()V

    .line 56
    return-void
.end method

.method static synthetic access$1000(Lcom/booheee/view/keyboard/DietKeyboard;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mWeight:F

    return v0
.end method

.method static synthetic access$1100(Lcom/booheee/view/keyboard/DietKeyboard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->txt_value:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/booheee/view/keyboard/DietKeyboard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/booheee/view/keyboard/DietKeyboard;->swithTxt()V

    return-void
.end method

.method static synthetic access$1300(Lcom/booheee/view/keyboard/DietKeyboard;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->unitTextViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/booheee/view/keyboard/DietKeyboard;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mUnits:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/booheee/view/keyboard/DietKeyboard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->hasDot:Z

    return v0
.end method

.method static synthetic access$202(Lcom/booheee/view/keyboard/DietKeyboard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/booheee/view/keyboard/DietKeyboard;->hasDot:Z

    return p1
.end method

.method static synthetic access$300(Lcom/booheee/view/keyboard/DietKeyboard;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/booheee/view/keyboard/DietKeyboard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/booheee/view/keyboard/DietKeyboard;->doBack()V

    return-void
.end method

.method static synthetic access$500(Lcom/booheee/view/keyboard/DietKeyboard;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/booheee/view/keyboard/DietKeyboard;->doNum(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/booheee/view/keyboard/DietKeyboard;)Lcom/booheee/view/keyboard/Unit;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->currentUnit:Lcom/booheee/view/keyboard/Unit;

    return-object v0
.end method

.method static synthetic access$602(Lcom/booheee/view/keyboard/DietKeyboard;Lcom/booheee/view/keyboard/Unit;)Lcom/booheee/view/keyboard/Unit;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/booheee/view/keyboard/DietKeyboard;->currentUnit:Lcom/booheee/view/keyboard/Unit;

    return-object p1
.end method

.method static synthetic access$700(Lcom/booheee/view/keyboard/DietKeyboard;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mAmount:F

    return v0
.end method

.method static synthetic access$702(Lcom/booheee/view/keyboard/DietKeyboard;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mAmount:F

    return p1
.end method

.method static synthetic access$800(Lcom/booheee/view/keyboard/DietKeyboard;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mGram:F

    return v0
.end method

.method static synthetic access$802(Lcom/booheee/view/keyboard/DietKeyboard;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mGram:F

    return p1
.end method

.method static synthetic access$902(Lcom/booheee/view/keyboard/DietKeyboard;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mCalory:F

    return p1
.end method

.method private doBack()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 246
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    iput-boolean v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->hasDot:Z

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 252
    iput-boolean v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->hasNumAfterDot:Z

    goto :goto_0
.end method

.method private doNum(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 220
    iget-boolean v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->hasDot:Z

    if-nez v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 226
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->currentUnit:Lcom/booheee/view/keyboard/Unit;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    :cond_1
    :goto_1
    return-void

    .line 222
    :cond_2
    iget-boolean v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->hasNumAfterDot:Z

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->hasNumAfterDot:Z

    goto :goto_0

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->currentUnit:Lcom/booheee/view/keyboard/Unit;

    iget-object v0, v0, Lcom/booheee/view/keyboard/Unit;->unit_name:Ljava/lang/String;

    const-string v1, "\u514b"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const v1, 0x4479c000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 228
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const-string v2, "999"

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    iput-boolean v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->hasNumAfterDot:Z

    .line 230
    iput-boolean v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->hasDot:Z

    goto :goto_1

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->currentUnit:Lcom/booheee/view/keyboard/Unit;

    iget-object v0, v0, Lcom/booheee/view/keyboard/Unit;->unit_name:Ljava/lang/String;

    const-string v1, "\u514b"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x42c8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const-string v2, "100"

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    iput-boolean v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->hasNumAfterDot:Z

    .line 234
    iput-boolean v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->hasDot:Z

    goto :goto_1
.end method

.method private findViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/booheee/view/keyboard/DietKeyboard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/booheee/view/keyboard/R$layout;->view_diet_keyboard:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, view:Landroid/view/View;
    sget v2, Lcom/booheee/view/keyboard/R$id;->ll_diet_unit:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->ll_diet_unit:Landroid/widget/LinearLayout;

    .line 62
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn1:Landroid/widget/Button;

    .line 63
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn2:Landroid/widget/Button;

    .line 64
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn3:Landroid/widget/Button;

    .line 65
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn4:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn4:Landroid/widget/Button;

    .line 66
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn5:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn5:Landroid/widget/Button;

    .line 67
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn6:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn6:Landroid/widget/Button;

    .line 68
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn7:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn7:Landroid/widget/Button;

    .line 69
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn8:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn8:Landroid/widget/Button;

    .line 70
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn9:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn9:Landroid/widget/Button;

    .line 71
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn0:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn0:Landroid/widget/Button;

    .line 72
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn_dot:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn_dot:Landroid/widget/Button;

    .line 73
    sget v2, Lcom/booheee/view/keyboard/R$id;->btn_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn_back:Landroid/widget/Button;

    .line 75
    new-instance v0, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;

    invoke-direct {v0, p0, v4}, Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;-><init>(Lcom/booheee/view/keyboard/DietKeyboard;Lcom/booheee/view/keyboard/DietKeyboard$1;)V

    .line 76
    .local v0, numBtnListener:Lcom/booheee/view/keyboard/DietKeyboard$NumBtnListener;
    iget-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn1:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn2:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn3:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn4:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn5:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn6:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn7:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn8:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn9:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn0:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn_dot:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->btn_back:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    sget v2, Lcom/booheee/view/keyboard/R$id;->txt_value:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->txt_value:Landroid/widget/TextView;

    .line 90
    sget v2, Lcom/booheee/view/keyboard/R$id;->txt_unit:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->txt_unit:Landroid/widget/TextView;

    .line 91
    sget v2, Lcom/booheee/view/keyboard/R$id;->txt_gram:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->txt_gram:Landroid/widget/TextView;

    .line 92
    sget v2, Lcom/booheee/view/keyboard/R$id;->txt_calory:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->txt_calory:Landroid/widget/TextView;

    .line 93
    invoke-virtual {p0, v1}, Lcom/booheee/view/keyboard/DietKeyboard;->addView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method private swithTxt()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 172
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->txt_gram:Landroid/widget/TextView;

    const-string v1, "%.1f \u514b"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mGram:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->txt_calory:Landroid/widget/TextView;

    const-string v1, "%d \u5343\u5361"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mCalory:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->txt_unit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/booheee/view/keyboard/DietKeyboard;->currentUnit:Lcom/booheee/view/keyboard/Unit;

    iget-object v1, v1, Lcom/booheee/view/keyboard/Unit;->unit_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/booheee/view/keyboard/DietKeyboard;->onResultListener:Lcom/booheee/view/keyboard/OnDietResultListener;

    iget v1, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mAmount:F

    iget v2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mCalory:F

    iget-object v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->currentUnit:Lcom/booheee/view/keyboard/Unit;

    iget v3, v3, Lcom/booheee/view/keyboard/Unit;->food_unit_id:I

    iget-object v4, p0, Lcom/booheee/view/keyboard/DietKeyboard;->currentUnit:Lcom/booheee/view/keyboard/Unit;

    iget-object v4, v4, Lcom/booheee/view/keyboard/Unit;->unit_name:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/booheee/view/keyboard/OnDietResultListener;->onResult(FFILjava/lang/String;)V

    .line 176
    return-void
.end method


# virtual methods
.method public init(FFLcom/booheee/view/keyboard/Unit;Ljava/util/List;)V
    .locals 0
    .parameter "amount"
    .parameter "weight"
    .parameter "currentUnit"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Lcom/booheee/view/keyboard/Unit;",
            "Ljava/util/List",
            "<",
            "Lcom/booheee/view/keyboard/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p4, units:Ljava/util/List;,"Ljava/util/List<Lcom/booheee/view/keyboard/Unit;>;"
    iput p1, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mAmount:F

    .line 98
    iput p2, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mWeight:F

    .line 99
    iput-object p3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->currentUnit:Lcom/booheee/view/keyboard/Unit;

    .line 100
    iput-object p4, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mUnits:Ljava/util/List;

    .line 101
    invoke-virtual {p0}, Lcom/booheee/view/keyboard/DietKeyboard;->initUnit()V

    .line 102
    return-void
.end method

.method public initUnit()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 108
    iget-object v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mUnits:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mUnits:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->currentUnit:Lcom/booheee/view/keyboard/Unit;

    if-nez v3, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const/4 v2, 0x0

    .line 110
    .local v2, textView:Landroid/widget/TextView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f80

    invoke-direct {v1, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 111
    .local v1, parms:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->ll_diet_unit:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 112
    iget-object v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->unitTextViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 113
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mUnits:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 114
    new-instance v2, Landroid/widget/TextView;

    .end local v2           #textView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/booheee/view/keyboard/DietKeyboard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 115
    .restart local v2       #textView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mUnits:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/booheee/view/keyboard/Unit;

    iget-object v3, v3, Lcom/booheee/view/keyboard/Unit;->unit_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 117
    const/high16 v3, 0x4190

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 118
    invoke-virtual {p0}, Lcom/booheee/view/keyboard/DietKeyboard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/booheee/view/keyboard/R$color;->color_light:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    invoke-virtual {p0}, Lcom/booheee/view/keyboard/DietKeyboard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/booheee/view/keyboard/R$color;->color_divider:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 120
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 121
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 122
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setId(I)V

    .line 123
    new-instance v3, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/booheee/view/keyboard/DietKeyboard$UnitListener;-><init>(Lcom/booheee/view/keyboard/DietKeyboard;Lcom/booheee/view/keyboard/DietKeyboard$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mUnits:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/booheee/view/keyboard/Unit;

    iget-object v3, v3, Lcom/booheee/view/keyboard/Unit;->unit_name:Ljava/lang/String;

    iget-object v4, p0, Lcom/booheee/view/keyboard/DietKeyboard;->currentUnit:Lcom/booheee/view/keyboard/Unit;

    iget-object v4, v4, Lcom/booheee/view/keyboard/Unit;->unit_name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    invoke-virtual {p0}, Lcom/booheee/view/keyboard/DietKeyboard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/booheee/view/keyboard/R$color;->color_bg_number:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 128
    :cond_2
    iget-object v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->unitTextViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->ll_diet_unit:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 131
    :cond_3
    iget v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mAmount:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 132
    const/high16 v3, 0x42c8

    iput v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mAmount:F

    .line 133
    :cond_4
    iget-object v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->currentUnit:Lcom/booheee/view/keyboard/Unit;

    iget-object v3, v3, Lcom/booheee/view/keyboard/Unit;->eat_weight:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iget v4, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mAmount:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mGram:F

    .line 134
    iget v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mWeight:F

    iget v4, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mGram:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mCalory:F

    .line 135
    iget-object v3, p0, Lcom/booheee/view/keyboard/DietKeyboard;->txt_value:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/booheee/view/keyboard/DietKeyboard;->mAmount:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-direct {p0}, Lcom/booheee/view/keyboard/DietKeyboard;->swithTxt()V

    goto/16 :goto_0
.end method

.method public setOnResultListener(Lcom/booheee/view/keyboard/OnDietResultListener;)V
    .locals 0
    .parameter "onResultListener"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/booheee/view/keyboard/DietKeyboard;->onResultListener:Lcom/booheee/view/keyboard/OnDietResultListener;

    .line 260
    return-void
.end method
