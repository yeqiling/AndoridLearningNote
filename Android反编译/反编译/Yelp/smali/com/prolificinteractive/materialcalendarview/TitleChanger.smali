.class Lcom/prolificinteractive/materialcalendarview/TitleChanger;
.super Ljava/lang/Object;
.source "TitleChanger.java"


# static fields
.field public static final DEFAULT_ANIMATION_DELAY:I = 0x190

.field public static final DEFAULT_Y_TRANSLATION_DP:I = 0x14


# instance fields
.field private final animDelay:I

.field private final animDuration:I

.field private final interpolator:Landroid/view/animation/Interpolator;

.field private lastAnimTime:J

.field private previousMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private final title:Landroid/widget/TextView;

.field private titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

.field private final yTranslate:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 4
    .parameter "title"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->interpolator:Landroid/view/animation/Interpolator;

    .line 26
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->lastAnimTime:J

    .line 27
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->previousMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 30
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->title:Landroid/widget/TextView;

    .line 32
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    .local v0, res:Landroid/content/res/Resources;
    const/16 v1, 0x190

    iput v1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->animDelay:I

    .line 36
    const/high16 v1, 0x10e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->animDuration:I

    .line 38
    const/4 v1, 0x1

    const/high16 v2, 0x41a0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->yTranslate:I

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)Landroid/view/animation/Interpolator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->interpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->animDuration:I

    return v0
.end method

.method private doChange(JLcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V
    .locals 7
    .parameter "now"
    .parameter "currentMonth"
    .parameter "animate"

    .prologue
    const/4 v4, 0x0

    .line 63
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 64
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 65
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->title:Landroid/widget/TextView;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 66
    iput-wide p1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->lastAnimTime:J

    .line 68
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    invoke-interface {v2, p3}, Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;->format(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 70
    .local v0, newTitle:Ljava/lang/CharSequence;
    if-nez p4, :cond_0

    .line 71
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_0
    iput-object p3, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->previousMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 105
    return-void

    .line 74
    :cond_0
    iget v3, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->yTranslate:I

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->previousMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v2, p3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    mul-int v1, v3, v2

    .line 76
    .local v1, yTranslation:I
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    mul-int/lit8 v3, v1, -0x1

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->animDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;-><init>(Lcom/prolificinteractive/materialcalendarview/TitleChanger;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 74
    .end local v1           #yTranslation:I
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method


# virtual methods
.method public change(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 6
    .parameter "currentMonth"

    .prologue
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 46
    .local v0, currentTime:J
    if-nez p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->lastAnimTime:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->animDelay:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 51
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->doChange(JLcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 54
    :cond_3
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->previousMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->doChange(JLcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    goto :goto_0
.end method

.method public setPreviousMonth(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 0
    .parameter "previousMonth"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->previousMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 113
    return-void
.end method

.method public setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V
    .locals 0
    .parameter "titleFormatter"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    .line 109
    return-void
.end method
