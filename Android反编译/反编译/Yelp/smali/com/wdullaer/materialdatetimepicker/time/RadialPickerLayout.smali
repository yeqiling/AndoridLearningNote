.class public Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;
.super Landroid/widget/FrameLayout;
.source "RadialPickerLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field private static final AMPM_INDEX:I = 0x2

.field private static final ENABLE_PICKER_INDEX:I = 0x3

.field private static final HOUR_INDEX:I = 0x0

.field private static final HOUR_VALUE_TO_DEGREES_STEP_SIZE:I = 0x1e

.field private static final MINUTE_INDEX:I = 0x1

.field private static final MINUTE_VALUE_TO_DEGREES_STEP_SIZE:I = 0x6

.field private static final PM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RadialPickerLayout"

.field private static final VISIBLE_DEGREES_STEP_SIZE:I = 0x1e


# instance fields
.field private final TAP_TIMEOUT:I

.field private final TOUCH_SLOP:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

.field private mCircleView:Lcom/wdullaer/materialdatetimepicker/time/CircleView;

.field private mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

.field private mCurrentHoursOfDay:I

.field private mCurrentItemShowing:I

.field private mCurrentMinutes:I

.field private mDoingMove:Z

.field private mDoingTouch:Z

.field private mDownDegrees:I

.field private mDownX:F

.field private mDownY:F

.field private mGrayBox:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

.field private mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

.field private mInputEnabled:Z

.field private mIs24HourMode:Z

.field private mIsTouchingAmOrPm:I

.field private mLastValueSelected:I

.field private mListener:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

.field private mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

.field private mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

.field private mSnapPrefer30sMap:[I

.field private mTimeInitialized:Z

.field private mTransition:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    .line 95
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    .line 104
    invoke-virtual {p0, p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 106
    .local v0, vc:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->TOUCH_SLOP:I

    .line 107
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->TAP_TIMEOUT:I

    .line 108
    iput-boolean v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 110
    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/CircleView;

    invoke-direct {v1, p1}, Lcom/wdullaer/materialdatetimepicker/time/CircleView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/wdullaer/materialdatetimepicker/time/CircleView;

    .line 111
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/wdullaer/materialdatetimepicker/time/CircleView;

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 113
    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-direct {v1, p1}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    .line 114
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 116
    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-direct {v1, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    .line 117
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 118
    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-direct {v1, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    .line 119
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 121
    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-direct {v1, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    .line 122
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 123
    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-direct {v1, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    .line 124
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 127
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->preparePrefer30sMap()V

    .line 129
    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    .line 133
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    .line 134
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_transparent_black:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 137
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 140
    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 142
    iput-boolean v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mTimeInitialized:Z

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    return v0
.end method

.method static synthetic access$100(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    return p1
.end method

.method static synthetic access$300(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    return v0
.end method

.method static synthetic access$400(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;IZZZ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->reselectSelector(IZZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    return p1
.end method

.method static synthetic access$600(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    return-object v0
.end method

.method private getCurrentlyShowingValue()I
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    .line 275
    .local v0, currentIndex:I
    if-nez v0, :cond_0

    .line 276
    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    .line 280
    :goto_0
    return v1

    .line 277
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 278
    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentMinutes:I

    goto :goto_0

    .line 280
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I
    .locals 2
    .parameter "pointX"
    .parameter "pointY"
    .parameter "forceLegal"
    .parameter "isInnerCircle"

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    .line 507
    .local v0, currentItem:I
    if-nez v0, :cond_0

    .line 508
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v1

    .line 514
    :goto_0
    return v1

    .line 510
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 511
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v1

    goto :goto_0

    .line 514
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private isHourInnerCircle(I)Z
    .locals 1
    .parameter "hourOfDay"

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    if-gt p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private preparePrefer30sMap()V
    .locals 6

    .prologue
    const/16 v5, 0x169

    .line 344
    new-array v4, v5, [I

    iput-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    .line 347
    const/4 v3, 0x0

    .line 349
    .local v3, snappedOutputDegrees:I
    const/4 v0, 0x1

    .line 353
    .local v0, count:I
    const/16 v2, 0x8

    .line 355
    .local v2, expectedCount:I
    const/4 v1, 0x0

    .local v1, degrees:I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 357
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    aput v3, v4, v1

    .line 360
    if-ne v0, v2, :cond_2

    .line 361
    add-int/lit8 v3, v3, 0x6

    .line 362
    const/16 v4, 0x168

    if-ne v3, v4, :cond_0

    .line 363
    const/4 v2, 0x7

    .line 369
    :goto_1
    const/4 v0, 0x1

    .line 355
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_0
    rem-int/lit8 v4, v3, 0x1e

    if-nez v4, :cond_1

    .line 365
    const/16 v2, 0xe

    goto :goto_1

    .line 367
    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    .line 371
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 374
    :cond_3
    return-void
.end method

.method private reselectSelector(IZZZ)I
    .locals 8
    .parameter "degrees"
    .parameter "isInnerCircle"
    .parameter "forceToVisibleValue"
    .parameter "forceDrawDot"

    .prologue
    const/16 v7, 0x168

    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 435
    if-ne p1, v4, :cond_1

    .line 489
    :cond_0
    :goto_0
    return v4

    .line 438
    :cond_1
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    .line 441
    .local v1, currentShowing:I
    if-nez p3, :cond_4

    if-ne v1, v5, :cond_4

    move v0, v5

    .line 442
    .local v0, allowFineGrained:Z
    :goto_1
    if-eqz v0, :cond_5

    .line 443
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->snapPrefer30s(I)I

    move-result p1

    .line 449
    :goto_2
    if-nez v1, :cond_6

    .line 450
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    .line 451
    .local v2, radialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;
    const/16 v3, 0x1e

    .line 456
    .local v3, stepSize:I
    :goto_3
    invoke-virtual {v2, p1, p2, p4}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 457
    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->invalidate()V

    .line 460
    if-nez v1, :cond_9

    .line 461
    iget-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v6, :cond_8

    .line 462
    if-nez p1, :cond_7

    if-eqz p2, :cond_7

    .line 463
    const/16 p1, 0x168

    .line 474
    :cond_2
    :goto_4
    div-int v4, p1, v3

    .line 476
    .local v4, value:I
    if-nez v1, :cond_3

    iget-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v6, :cond_3

    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    .line 477
    add-int/lit8 v4, v4, 0xc

    .line 481
    :cond_3
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v6

    if-nez v6, :cond_a

    .line 482
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v5, v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    .line 483
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->invalidate()V

    goto :goto_0

    .end local v0           #allowFineGrained:Z
    .end local v2           #radialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;
    .end local v3           #stepSize:I
    .end local v4           #value:I
    :cond_4
    move v0, v6

    .line 441
    goto :goto_1

    .line 445
    .restart local v0       #allowFineGrained:Z
    :cond_5
    invoke-static {p1, v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->snapOnly30s(II)I

    move-result p1

    goto :goto_2

    .line 453
    :cond_6
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    .line 454
    .restart local v2       #radialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;
    const/4 v3, 0x6

    .restart local v3       #stepSize:I
    goto :goto_3

    .line 464
    :cond_7
    if-ne p1, v7, :cond_2

    if-nez p2, :cond_2

    .line 465
    const/4 p1, 0x0

    goto :goto_4

    .line 467
    :cond_8
    if-nez p1, :cond_2

    .line 468
    const/16 p1, 0x168

    goto :goto_4

    .line 470
    :cond_9
    if-ne p1, v7, :cond_2

    if-ne v1, v5, :cond_2

    .line 471
    const/4 p1, 0x0

    goto :goto_4

    .line 484
    .restart local v4       #value:I
    :cond_a
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 485
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v5, v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    .line 486
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->invalidate()V

    goto :goto_0
.end method

.method private setItem(II)V
    .locals 5
    .parameter "index"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 235
    if-nez p1, :cond_1

    .line 236
    invoke-direct {p0, v4, p2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 237
    rem-int/lit8 v2, p2, 0xc

    mul-int/lit8 v0, v2, 0x1e

    .line 238
    .local v0, hourDegrees:I
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-direct {p0, p2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->isHourInnerCircle(I)Z

    move-result v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 239
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->invalidate()V

    .line 240
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2, p2}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    .line 241
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->invalidate()V

    .line 250
    .end local v0           #hourDegrees:I
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    if-ne p1, v2, :cond_0

    .line 243
    invoke-direct {p0, v2, p2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 244
    mul-int/lit8 v1, p2, 0x6

    .line 245
    .local v1, minuteDegrees:I
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v2, v1, v4, v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 246
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->invalidate()V

    .line 247
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2, p2}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    .line 248
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->invalidate()V

    goto :goto_0
.end method

.method private setValueForItem(II)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 297
    if-nez p1, :cond_1

    .line 298
    iput p2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    if-ne p1, v1, :cond_2

    .line 300
    iput p2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentMinutes:I

    goto :goto_0

    .line 301
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 302
    if-nez p2, :cond_3

    .line 303
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    rem-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    goto :goto_0

    .line 304
    :cond_3
    if-ne p2, v1, :cond_0

    .line 305
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    goto :goto_0
.end method

.method private static snapOnly30s(II)I
    .locals 5
    .parameter "degrees"
    .parameter "forceHigherOrLower"

    .prologue
    .line 400
    const/16 v2, 0x1e

    .line 401
    .local v2, stepSize:I
    div-int v3, p0, v2

    mul-int v1, v3, v2

    .line 402
    .local v1, floor:I
    add-int v0, v1, v2

    .line 403
    .local v0, ceiling:I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 404
    move p0, v0

    .line 417
    :goto_0
    return p0

    .line 405
    :cond_0
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    .line 406
    if-ne p0, v1, :cond_1

    .line 407
    sub-int/2addr v1, v2

    .line 409
    :cond_1
    move p0, v1

    goto :goto_0

    .line 411
    :cond_2
    sub-int v3, p0, v1

    sub-int v4, v0, p0

    if-ge v3, v4, :cond_3

    .line 412
    move p0, v1

    goto :goto_0

    .line 414
    :cond_3
    move p0, v0

    goto :goto_0
.end method

.method private snapPrefer30s(I)I
    .locals 1
    .parameter "degrees"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    if-nez v0, :cond_0

    .line 385
    const/4 v0, -0x1

    .line 387
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    aget v0, v0, p1

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 774
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1

    .line 776
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 777
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 778
    .local v1, time:Ljava/util/Calendar;
    const/16 v5, 0xa

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 779
    const/16 v5, 0xc

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 780
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 781
    .local v2, millis:J
    const/4 v0, 0x1

    .line 782
    .local v0, flags:I
    iget-boolean v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v5, :cond_0

    .line 783
    or-int/lit16 v0, v0, 0x80

    .line 785
    :cond_0
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 786
    .local v4, timeString:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    const/4 v5, 0x1

    .line 789
    .end local v0           #flags:I
    .end local v1           #time:Ljava/util/Calendar;
    .end local v2           #millis:J
    .end local v4           #timeString:Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    goto :goto_0
.end method

.method public getCurrentItemShowing()I
    .locals 3

    .prologue
    .line 522
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 523
    const-string v0, "RadialPickerLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current item showing was unfortunately set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v0, -0x1

    .line 526
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    goto :goto_0
.end method

.method public getHours()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    return v0
.end method

.method public getIsCurrentlyAmOrPm()I
    .locals 2

    .prologue
    .line 285
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 290
    :goto_0
    return v0

    .line 287
    :cond_0
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 288
    const/4 v0, 0x1

    goto :goto_0

    .line 290
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentMinutes:I

    return v0
.end method

.method public initialize(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;IIZ)V
    .locals 24
    .parameter "context"
    .parameter "timePickerDialog"
    .parameter "initialHoursOfDay"
    .parameter "initialMinutes"
    .parameter "is24HourMode"

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 176
    const-string v2, "RadialPickerLayout"

    const-string v5, "Time has already been initialized."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    return-void

    .line 180
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p5, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/wdullaer/materialdatetimepicker/time/CircleView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->initialize(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/wdullaer/materialdatetimepicker/time/CircleView;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->invalidate()V

    .line 186
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-nez v2, :cond_2

    .line 187
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    const/16 v2, 0xc

    move/from16 v0, p3

    if-ge v0, v2, :cond_4

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6, v2}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->initialize(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;I)V

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 192
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 193
    .local v3, res:Landroid/content/res/Resources;
    const/16 v2, 0xc

    new-array v0, v2, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    .line 194
    .local v18, hours:[I
    const/16 v2, 0xc

    new-array v0, v2, [I

    move-object/from16 v19, v0

    fill-array-data v19, :array_1

    .line 195
    .local v19, hours_24:[I
    const/16 v2, 0xc

    new-array v0, v2, [I

    move-object/from16 v22, v0

    fill-array-data v22, :array_2

    .line 196
    .local v22, minutes:[I
    const/16 v2, 0xc

    new-array v4, v2, [Ljava/lang/String;

    .line 197
    .local v4, hoursTexts:[Ljava/lang/String;
    const/16 v2, 0xc

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 198
    .local v21, innerHoursTexts:[Ljava/lang/String;
    const/16 v2, 0xc

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v23, v0

    .line 199
    .local v23, minutesTexts:[Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, i:I
    :goto_3
    const/16 v2, 0xc

    move/from16 v0, v20

    if-ge v0, v2, :cond_6

    .line 200
    if-eqz p5, :cond_5

    const-string v2, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v7, v19, v20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    aput-object v2, v4, v20

    .line 202
    const-string v2, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v7, v18, v20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v21, v20

    .line 203
    const-string v2, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v7, v22, v20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v23, v20

    .line 199
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 181
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #hoursTexts:[Ljava/lang/String;
    .end local v18           #hours:[I
    .end local v19           #hours_24:[I
    .end local v20           #i:I
    .end local v21           #innerHoursTexts:[Ljava/lang/String;
    .end local v22           #minutes:[I
    .end local v23           #minutesTexts:[Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 187
    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 200
    .restart local v3       #res:Landroid/content/res/Resources;
    .restart local v4       #hoursTexts:[Ljava/lang/String;
    .restart local v18       #hours:[I
    .restart local v19       #hours_24:[I
    .restart local v20       #i:I
    .restart local v21       #innerHoursTexts:[Ljava/lang/String;
    .restart local v22       #minutes:[I
    .restart local v23       #minutesTexts:[Ljava/lang/String;
    :cond_5
    const-string v2, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v7, v18, v20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 205
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    if-eqz p5, :cond_7

    move-object/from16 v5, v21

    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->initialize(Landroid/content/res/Resources;[Ljava/lang/String;[Ljava/lang/String;Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;Z)V

    .line 207
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    if-eqz p5, :cond_8

    move/from16 v2, p3

    :goto_6
    invoke-virtual {v5, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->invalidate()V

    .line 209
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    const/4 v10, 0x0

    move-object v6, v3

    move-object/from16 v7, v23

    invoke-virtual/range {v5 .. v10}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->initialize(Landroid/content/res/Resources;[Ljava/lang/String;[Ljava/lang/String;Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;Z)V

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->invalidate()V

    .line 214
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 215
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v2, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 216
    rem-int/lit8 v2, p3, 0xc

    mul-int/lit8 v10, v2, 0x1e

    .line 217
    .local v10, hourDegrees:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->isHourInnerCircle(I)Z

    move-result v11

    move-object/from16 v6, p1

    move/from16 v8, p5

    invoke-virtual/range {v5 .. v11}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->initialize(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;ZZIZ)V

    .line 219
    mul-int/lit8 v16, p4, 0x6

    .line 220
    .local v16, minuteDegrees:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v17}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->initialize(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;ZZIZ)V

    .line 223
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mTimeInitialized:Z

    goto/16 :goto_0

    .line 205
    .end local v10           #hourDegrees:I
    .end local v16           #minuteDegrees:I
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 207
    :cond_8
    rem-int/lit8 v2, p3, 0xc

    aget v2, v18, v2

    goto :goto_6

    .line 193
    nop

    :array_0
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 194
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
    .end array-data

    .line 195
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    .line 758
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 759
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 760
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 761
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 767
    :goto_0
    return-void

    .line 764
    :cond_0
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 765
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "v"
    .parameter "event"

    .prologue
    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 576
    .local v4, eventX:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 579
    .local v5, eventY:F
    const/4 v10, 0x1

    new-array v7, v10, [Ljava/lang/Boolean;

    .line 580
    .local v7, isInnerCircle:[Ljava/lang/Boolean;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v7, v10

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 733
    :cond_0
    :goto_0
    const/4 v10, 0x0

    :goto_1
    return v10

    .line 584
    :pswitch_0
    iget-boolean v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    if-nez v10, :cond_1

    .line 585
    const/4 v10, 0x1

    goto :goto_1

    .line 588
    :cond_1
    iput v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownX:F

    .line 589
    iput v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownY:F

    .line 591
    const/4 v10, -0x1

    iput v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    .line 592
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 593
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingTouch:Z

    .line 595
    iget-boolean v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-nez v10, :cond_4

    .line 596
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v10, v4, v5}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result v10

    iput v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    .line 600
    :goto_2
    iget v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz v10, :cond_2

    iget v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 603
    :cond_2
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    invoke-interface {v10}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;->tryVibrate()V

    .line 604
    const/4 v10, -0x1

    iput v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    .line 605
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$1;

    invoke-direct {v11, p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$1;-><init>(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)V

    iget v12, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->TAP_TIMEOUT:I

    int-to-long v12, v12

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 634
    :cond_3
    :goto_3
    const/4 v10, 0x1

    goto :goto_1

    .line 598
    :cond_4
    const/4 v10, -0x1

    iput v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto :goto_2

    .line 615
    :cond_5
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v6

    .line 617
    .local v6, forceLegal:Z
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v10

    iput v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    .line 618
    iget v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 621
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    invoke-interface {v10}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;->tryVibrate()V

    .line 622
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$2;

    invoke-direct {v11, p0, v7}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$2;-><init>(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;[Ljava/lang/Boolean;)V

    iget v12, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->TAP_TIMEOUT:I

    int-to-long v12, v12

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 636
    .end local v6           #forceLegal:Z
    :pswitch_1
    iget-boolean v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    if-nez v10, :cond_6

    .line 638
    const-string v10, "RadialPickerLayout"

    const-string v11, "Input was disabled, but received ACTION_MOVE."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v10, 0x1

    goto :goto_1

    .line 642
    :cond_6
    iget v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownY:F

    sub-float v10, v5, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 643
    .local v2, dY:F
    iget v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownX:F

    sub-float v10, v4, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 645
    .local v1, dX:F
    iget-boolean v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    if-nez v10, :cond_7

    iget v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->TOUCH_SLOP:I

    int-to-float v10, v10

    cmpg-float v10, v1, v10

    if-gtz v10, :cond_7

    iget v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->TOUCH_SLOP:I

    int-to-float v10, v10

    cmpg-float v10, v2, v10

    if-lez v10, :cond_0

    .line 653
    :cond_7
    iget v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz v10, :cond_8

    iget v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 654
    :cond_8
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 655
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v10, v4, v5}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result v8

    .line 656
    .local v8, isTouchingAmOrPm:I
    iget v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eq v8, v10, :cond_0

    .line 657
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->setAmOrPmPressed(I)V

    .line 658
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v10}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 659
    const/4 v10, -0x1

    iput v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto/16 :goto_0

    .line 664
    .end local v8           #isTouchingAmOrPm:I
    :cond_9
    iget v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 670
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 671
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 672
    const/4 v10, 0x1

    invoke-direct {p0, v4, v5, v10, v7}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v3

    .line 673
    .local v3, degrees:I
    const/4 v10, -0x1

    if-eq v3, v10, :cond_a

    .line 674
    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v3, v10, v11, v12}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->reselectSelector(IZZZ)I

    move-result v9

    .line 675
    .local v9, value:I
    iget v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    if-eq v9, v10, :cond_a

    .line 676
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    invoke-interface {v10}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;->tryVibrate()V

    .line 677
    iput v9, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    .line 678
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v11

    const/4 v12, 0x0

    invoke-interface {v10, v11, v9, v12}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 681
    .end local v9           #value:I
    :cond_a
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 683
    .end local v1           #dX:F
    .end local v2           #dY:F
    .end local v3           #degrees:I
    :pswitch_2
    iget-boolean v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    if-nez v10, :cond_b

    .line 685
    const-string v10, "RadialPickerLayout"

    const-string v11, "Input was disabled, but received ACTION_UP."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v10, v11, v12, v13}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 687
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 690
    :cond_b
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 691
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingTouch:Z

    .line 694
    iget v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz v10, :cond_c

    iget v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    .line 695
    :cond_c
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v10, v4, v5}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result v8

    .line 696
    .restart local v8       #isTouchingAmOrPm:I
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->setAmOrPmPressed(I)V

    .line 697
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v10}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 699
    iget v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-ne v8, v10, :cond_d

    .line 700
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v10, v8}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->setAmOrPm(I)V

    .line 701
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v10

    if-eq v10, v8, :cond_d

    .line 702
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    const/4 v11, 0x2

    iget v12, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v13, 0x0

    invoke-interface {v10, v11, v12, v13}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 703
    const/4 v10, 0x2

    invoke-direct {p0, v10, v8}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 706
    :cond_d
    const/4 v10, -0x1

    iput v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto/16 :goto_0

    .line 711
    .end local v8           #isTouchingAmOrPm:I
    :cond_e
    iget v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_10

    .line 712
    iget-boolean v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    invoke-direct {p0, v4, v5, v10, v7}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v3

    .line 713
    .restart local v3       #degrees:I
    const/4 v10, -0x1

    if-eq v3, v10, :cond_10

    .line 714
    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    iget-boolean v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    if-nez v10, :cond_11

    const/4 v10, 0x1

    :goto_4
    const/4 v12, 0x0

    invoke-direct {p0, v3, v11, v10, v12}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->reselectSelector(IZZZ)I

    move-result v9

    .line 716
    .restart local v9       #value:I
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v10

    if-nez v10, :cond_f

    iget-boolean v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-nez v10, :cond_f

    .line 717
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v0

    .line 718
    .local v0, amOrPm:I
    if-nez v0, :cond_12

    const/16 v10, 0xc

    if-ne v9, v10, :cond_12

    .line 719
    const/4 v9, 0x0

    .line 724
    .end local v0           #amOrPm:I
    :cond_f
    :goto_5
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v10

    invoke-direct {p0, v10, v9}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 725
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v11

    const/4 v12, 0x1

    invoke-interface {v10, v11, v9, v12}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 728
    .end local v3           #degrees:I
    .end local v9           #value:I
    :cond_10
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 729
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 714
    .restart local v3       #degrees:I
    :cond_11
    const/4 v10, 0x0

    goto :goto_4

    .line 720
    .restart local v0       #amOrPm:I
    .restart local v9       #value:I
    :cond_12
    const/4 v10, 0x1

    if-ne v0, v10, :cond_f

    const/16 v10, 0xc

    if-eq v9, v10, :cond_f

    .line 721
    add-int/lit8 v9, v9, 0xc

    goto :goto_5

    .line 582
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 10
    .parameter "action"
    .parameter "arguments"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 799
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 847
    :goto_0
    return v7

    .line 803
    :cond_0
    const/4 v0, 0x0

    .line 804
    .local v0, changeMultiplier:I
    const/16 v9, 0x1000

    if-ne p1, v9, :cond_4

    .line 805
    const/4 v0, 0x1

    .line 809
    :cond_1
    :goto_1
    if-eqz v0, :cond_9

    .line 810
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentlyShowingValue()I

    move-result v6

    .line 811
    .local v6, value:I
    const/4 v5, 0x0

    .line 812
    .local v5, stepSize:I
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    .line 813
    .local v1, currentItemShowing:I
    if-nez v1, :cond_5

    .line 814
    const/16 v5, 0x1e

    .line 815
    rem-int/lit8 v6, v6, 0xc

    .line 820
    :cond_2
    :goto_2
    mul-int v2, v6, v5

    .line 821
    .local v2, degrees:I
    invoke-static {v2, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->snapOnly30s(II)I

    move-result v2

    .line 822
    div-int v6, v2, v5

    .line 823
    const/4 v3, 0x0

    .line 824
    .local v3, maxValue:I
    const/4 v4, 0x0

    .line 825
    .local v4, minValue:I
    if-nez v1, :cond_7

    .line 826
    iget-boolean v9, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v9, :cond_6

    .line 827
    const/16 v3, 0x17

    .line 835
    :goto_3
    if-le v6, v3, :cond_8

    .line 837
    move v6, v4

    .line 842
    :cond_3
    :goto_4
    invoke-direct {p0, v1, v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setItem(II)V

    .line 843
    iget-object v9, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-interface {v9, v1, v6, v8}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    goto :goto_0

    .line 806
    .end local v1           #currentItemShowing:I
    .end local v2           #degrees:I
    .end local v3           #maxValue:I
    .end local v4           #minValue:I
    .end local v5           #stepSize:I
    .end local v6           #value:I
    :cond_4
    const/16 v9, 0x2000

    if-ne p1, v9, :cond_1

    .line 807
    const/4 v0, -0x1

    goto :goto_1

    .line 816
    .restart local v1       #currentItemShowing:I
    .restart local v5       #stepSize:I
    .restart local v6       #value:I
    :cond_5
    if-ne v1, v7, :cond_2

    .line 817
    const/4 v5, 0x6

    goto :goto_2

    .line 829
    .restart local v2       #degrees:I
    .restart local v3       #maxValue:I
    .restart local v4       #minValue:I
    :cond_6
    const/16 v3, 0xc

    .line 830
    const/4 v4, 0x1

    goto :goto_3

    .line 833
    :cond_7
    const/16 v3, 0x37

    goto :goto_3

    .line 838
    :cond_8
    if-ge v6, v4, :cond_3

    .line 840
    move v6, v3

    goto :goto_4

    .end local v1           #currentItemShowing:I
    .end local v2           #degrees:I
    .end local v3           #maxValue:I
    .end local v4           #minValue:I
    .end local v5           #stepSize:I
    .end local v6           #value:I
    :cond_9
    move v7, v8

    .line 847
    goto :goto_0
.end method

.method public setAmOrPm(I)V
    .locals 1
    .parameter "amOrPm"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->setAmOrPm(I)V

    .line 316
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 317
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 318
    return-void
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 8
    .parameter "index"
    .parameter "animate"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 534
    if-eqz p1, :cond_0

    if-eq p1, v3, :cond_0

    .line 535
    const-string v4, "RadialPickerLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TimePicker does not support view at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v2

    .line 540
    .local v2, lastIndex:I
    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    .line 542
    if-eqz p2, :cond_4

    if-eq p1, v2, :cond_4

    .line 543
    const/4 v5, 0x4

    new-array v0, v5, [Landroid/animation/ObjectAnimator;

    .line 544
    .local v0, anims:[Landroid/animation/ObjectAnimator;
    if-ne p1, v3, :cond_3

    .line 545
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v4

    .line 546
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v3

    .line 547
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v6

    .line 548
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v7

    .line 556
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 557
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->end()V

    .line 559
    :cond_2
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    .line 560
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 561
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 549
    :cond_3
    if-nez p1, :cond_1

    .line 550
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v4

    .line 551
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v3

    .line 552
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v6

    .line 553
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v7

    goto :goto_1

    .line 563
    .end local v0           #anims:[Landroid/animation/ObjectAnimator;
    :cond_4
    if-nez p1, :cond_5

    move v1, v3

    .line 564
    .local v1, hourAlpha:I
    :goto_2
    if-ne p1, v3, :cond_6

    .line 565
    .local v3, minuteAlpha:I
    :goto_3
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    int-to-float v5, v1

    invoke-virtual {v4, v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->setAlpha(F)V

    .line 566
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    int-to-float v5, v1

    invoke-virtual {v4, v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->setAlpha(F)V

    .line 567
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->setAlpha(F)V

    .line 568
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->setAlpha(F)V

    goto/16 :goto_0

    .end local v1           #hourAlpha:I
    .end local v3           #minuteAlpha:I
    :cond_5
    move v1, v4

    .line 563
    goto :goto_2

    .restart local v1       #hourAlpha:I
    :cond_6
    move v3, v4

    .line 564
    goto :goto_3
.end method

.method public setOnValueSelectedListener(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    .line 164
    return-void
.end method

.method public setTime(II)V
    .locals 1
    .parameter "hours"
    .parameter "minutes"

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setItem(II)V

    .line 228
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setItem(II)V

    .line 229
    return-void
.end method

.method public trySettingInputEnabled(Z)Z
    .locals 2
    .parameter "inputEnabled"

    .prologue
    const/4 v0, 0x0

    .line 740
    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingTouch:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 748
    :goto_0
    return v0

    .line 746
    :cond_0
    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    .line 747
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 748
    const/4 v0, 0x1

    goto :goto_0
.end method
