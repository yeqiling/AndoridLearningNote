.class public Lcom/prolificinteractive/materialcalendarview/BooheeDayView;
.super Landroid/widget/FrameLayout;
.source "BooheeDayView.java"


# instance fields
.field private imageTag:Landroid/widget/ImageView;

.field private lineView:Landroid/view/View;

.field private mCalDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private mDayView:Lcom/prolificinteractive/materialcalendarview/DayView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 5
    .parameter "context"
    .parameter "day"

    .prologue
    const/4 v4, -0x1

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->mCalDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 25
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/prolificinteractive/materialcalendarview/R$layout;->item_day_view:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, rootView:Landroid/view/View;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    invoke-direct {p0, v0}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->findView(Landroid/view/View;)V

    .line 28
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->init()V

    .line 29
    return-void
.end method

.method private findView(Landroid/view/View;)V
    .locals 1
    .parameter "rootView"

    .prologue
    .line 32
    sget v0, Lcom/prolificinteractive/materialcalendarview/R$id;->day_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/DayView;

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->mDayView:Lcom/prolificinteractive/materialcalendarview/DayView;

    .line 33
    sget v0, Lcom/prolificinteractive/materialcalendarview/R$id;->image_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->imageTag:Landroid/widget/ImageView;

    .line 34
    sget v0, Lcom/prolificinteractive/materialcalendarview/R$id;->v_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->lineView:Landroid/view/View;

    .line 35
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->mDayView:Lcom/prolificinteractive/materialcalendarview/DayView;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->mCalDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 39
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->mCalDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iget v0, v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->bottomLineColorId:I

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->setLineColor(I)V

    .line 40
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->mCalDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iget v0, v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->bottomDrawableId:I

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->setImageTag(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public applyFacade(Lcom/prolificinteractive/materialcalendarview/DayViewFacade;)V
    .locals 1
    .parameter "facadeAccumulator"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->mDayView:Lcom/prolificinteractive/materialcalendarview/DayView;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->applyFacade(Lcom/prolificinteractive/materialcalendarview/DayViewFacade;)V

    .line 74
    return-void
.end method

.method public getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->mDayView:Lcom/prolificinteractive/materialcalendarview/DayView;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->mDayView:Lcom/prolificinteractive/materialcalendarview/DayView;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setChecked(Z)V

    .line 70
    return-void
.end method

.method public setDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 1
    .parameter "day"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->mCalDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 53
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->mDayView:Lcom/prolificinteractive/materialcalendarview/DayView;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 54
    return-void
.end method

.method public setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V
    .locals 1
    .parameter "dayFormatter"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->mDayView:Lcom/prolificinteractive/materialcalendarview/DayView;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V

    .line 58
    return-void
.end method

.method public setImageTag(I)V
    .locals 2
    .parameter "drawableId"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->imageTag:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 88
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->imageTag:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->imageTag:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->imageTag:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setLineColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->lineView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 78
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->lineView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->lineView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->lineView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setSelectionColor(I)V
    .locals 1
    .parameter "selectionColor"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->mDayView:Lcom/prolificinteractive/materialcalendarview/DayView;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setSelectionColor(I)V

    .line 49
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "taId"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->mDayView:Lcom/prolificinteractive/materialcalendarview/DayView;

    invoke-virtual {v0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/DayView;->setTextAppearance(Landroid/content/Context;I)V

    .line 45
    return-void
.end method

.method public setupSelection(ZZZ)V
    .locals 1
    .parameter "showOtherDates"
    .parameter "inRange"
    .parameter "b"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->mDayView:Lcom/prolificinteractive/materialcalendarview/DayView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/prolificinteractive/materialcalendarview/DayView;->setupSelection(ZZZ)V

    .line 66
    return-void
.end method
