.class public Lcom/boohee/widgets/PagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/widgets/PagerSlidingTabStrip$SavedState;,
        Lcom/boohee/widgets/PagerSlidingTabStrip$PageListener;,
        Lcom/boohee/widgets/PagerSlidingTabStrip$IconTabProvider;
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private currentPosition:I

.field private currentPositionOffset:F

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field public delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private dividerColor:I

.field private dividerPadding:I

.field private dividerPaint:Landroid/graphics/Paint;

.field private dividerWidth:I

.field private expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private indicatorColor:I

.field private indicatorHeight:I

.field private lastScrollX:I

.field private locale:Ljava/util/Locale;

.field private final pageListener:Lcom/boohee/widgets/PagerSlidingTabStrip$PageListener;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollOffset:I

.field private shouldExpand:Z

.field private tabBackgroundResId:I

.field private tabCount:I

.field private tabPadding:I

.field private tabTextColor:I

.field private tabTextSize:I

.field private tabTypeface:Landroid/graphics/Typeface;

.field private tabTypefaceStyle:I

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private textAllCaps:Z

.field private underlineColor:I

.field private underlineHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x95t 0x0t 0x1t 0x1t
        0x98t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/boohee/widgets/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/boohee/widgets/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v2, Lcom/boohee/widgets/PagerSlidingTabStrip$PageListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/boohee/widgets/PagerSlidingTabStrip$PageListener;-><init>(Lcom/boohee/widgets/PagerSlidingTabStrip;Lcom/boohee/widgets/PagerSlidingTabStrip$1;)V

    iput-object v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->pageListener:Lcom/boohee/widgets/PagerSlidingTabStrip$PageListener;

    .line 69
    iput v5, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->currentPosition:I

    .line 70
    const/4 v2, 0x0

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->currentPositionOffset:F

    .line 75
    const v2, -0x99999a

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->indicatorColor:I

    .line 76
    const/high16 v2, 0x1a00

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->underlineColor:I

    .line 77
    iput v5, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerColor:I

    .line 79
    iput-boolean v4, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->shouldExpand:Z

    .line 80
    iput-boolean v4, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->textAllCaps:Z

    .line 82
    const/16 v2, 0x34

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->scrollOffset:I

    .line 83
    iput v8, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->indicatorHeight:I

    .line 84
    iput v4, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->underlineHeight:I

    .line 85
    const/16 v2, 0xc

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerPadding:I

    .line 86
    const/16 v2, 0x18

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabPadding:I

    .line 87
    iput v5, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerWidth:I

    .line 89
    const/16 v2, 0xe

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabTextSize:I

    .line 90
    iput v6, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabTextColor:I

    .line 91
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 92
    iput v5, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabTypefaceStyle:I

    .line 94
    iput v5, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->lastScrollX:I

    .line 96
    const v2, 0x7f020060

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 111
    invoke-virtual {p0, v4}, Lcom/boohee/widgets/PagerSlidingTabStrip;->setFillViewport(Z)V

    .line 112
    invoke-virtual {p0, v5}, Lcom/boohee/widgets/PagerSlidingTabStrip;->setWillNotDraw(Z)V

    .line 114
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    .line 115
    iget-object v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 116
    iget-object v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/boohee/widgets/PagerSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 120
    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 122
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->scrollOffset:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->scrollOffset:I

    .line 124
    iget v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->indicatorHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->indicatorHeight:I

    .line 126
    iget v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->underlineHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->underlineHeight:I

    .line 128
    iget v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerPadding:I

    .line 130
    iget v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabPadding:I

    .line 131
    iget v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerWidth:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerWidth:I

    .line 133
    iget v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabTextSize:I

    int-to-float v2, v2

    invoke-static {v7, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabTextSize:I

    .line 137
    sget-object v2, Lcom/boohee/widgets/PagerSlidingTabStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 139
    .local v0, a:Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabTextSize:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabTextSize:I

    .line 140
    iget v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabTextColor:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabTextColor:I

    .line 142
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    sget-object v2, Lcom/boohee/one/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 148
    iget v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->indicatorColor:I

    .line 150
    iget v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->underlineColor:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->underlineColor:I

    .line 152
    iget v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerColor:I

    .line 153
    iget v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->indicatorHeight:I

    invoke-virtual {v0, v8, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->indicatorHeight:I

    .line 155
    const/4 v2, 0x4

    iget v3, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->underlineHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->underlineHeight:I

    .line 157
    const/4 v2, 0x5

    iget v3, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerPadding:I

    .line 159
    const/4 v2, 0x6

    iget v3, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabPadding:I

    .line 161
    const/16 v2, 0x8

    iget v3, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabBackgroundResId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 163
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->shouldExpand:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->shouldExpand:Z

    .line 165
    const/4 v2, 0x7

    iget v3, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->scrollOffset:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->scrollOffset:I

    .line 167
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->textAllCaps:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->textAllCaps:Z

    .line 169
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    .line 172
    iget-object v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 173
    iget-object v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    .line 176
    iget-object v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 177
    iget-object v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 181
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f80

    invoke-direct {v2, v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 183
    iget-object v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    if-nez v2, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    .line 186
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/boohee/widgets/PagerSlidingTabStrip;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->currentPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/widgets/PagerSlidingTabStrip;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->currentPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/boohee/widgets/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/widgets/PagerSlidingTabStrip;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/boohee/widgets/PagerSlidingTabStrip;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$402(Lcom/boohee/widgets/PagerSlidingTabStrip;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$500(Lcom/boohee/widgets/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private addIconTab(II)V
    .locals 2
    .parameter "position"
    .parameter "resId"

    .prologue
    .line 255
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 256
    .local v0, tab:Landroid/widget/ImageButton;
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 258
    invoke-direct {p0, p1, v0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->addTab(ILandroid/view/View;)V

    .line 260
    return-void
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 3
    .parameter "position"
    .parameter "tab"

    .prologue
    const/4 v2, 0x0

    .line 263
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 264
    new-instance v0, Lcom/boohee/widgets/PagerSlidingTabStrip$2;

    invoke-direct {v0, p0, p1}, Lcom/boohee/widgets/PagerSlidingTabStrip$2;-><init>(Lcom/boohee/widgets/PagerSlidingTabStrip;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabPadding:I

    iget v1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 272
    iget-object v1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->shouldExpand:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 274
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0
.end method

.method private addTextTab(ILjava/lang/String;)V
    .locals 2
    .parameter "position"
    .parameter "title"

    .prologue
    .line 244
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 245
    .local v0, tab:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 247
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 248
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 250
    invoke-direct {p0, p1, v0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->addTab(ILandroid/view/View;)V

    .line 251
    return-void
.end method

.method private scrollToChild(II)V
    .locals 2
    .parameter "position"
    .parameter "offset"

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->updateTabStyles()V

    .line 327
    iget v1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabCount:I

    if-nez v1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int v0, v1, p2

    .line 333
    .local v0, newScrollX:I
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 334
    :cond_2
    iget v1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->scrollOffset:I

    sub-int/2addr v0, v1

    .line 337
    :cond_3
    iget v1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->lastScrollX:I

    if-eq v0, v1, :cond_0

    .line 338
    iput v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->lastScrollX:I

    .line 339
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/boohee/widgets/PagerSlidingTabStrip;->scrollTo(II)V

    goto :goto_0
.end method

.method private updateTabStyles()V
    .locals 5

    .prologue
    .line 278
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabCount:I

    if-ge v0, v3, :cond_2

    .line 280
    iget-object v3, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 282
    .local v2, v:Landroid/view/View;
    iget v3, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabBackgroundResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 286
    instance-of v3, v2, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    move-object v3, v2

    .line 287
    check-cast v3, Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 288
    .local v1, textView:Landroid/view/View;
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 289
    invoke-direct {p0, v0, v1}, Lcom/boohee/widgets/PagerSlidingTabStrip;->updateTextTab(ILandroid/view/View;)V

    .line 293
    .end local v1           #textView:Landroid/view/View;
    :cond_0
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 294
    invoke-direct {p0, v0, v2}, Lcom/boohee/widgets/PagerSlidingTabStrip;->updateTextTab(ILandroid/view/View;)V

    .line 278
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    .end local v2           #v:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private updateTextTab(ILandroid/view/View;)V
    .locals 3
    .parameter "i"
    .parameter "v"

    .prologue
    .line 301
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 302
    .local v0, tab:Landroid/widget/TextView;
    const/4 v1, 0x0

    iget v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 303
    iget-object v1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    iget v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabTypefaceStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 305
    iget-object v1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->getIndicatorColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    :goto_0
    iget-boolean v1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->textAllCaps:Z

    if-eqz v1, :cond_0

    .line 315
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    .line 316
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 321
    :cond_0
    :goto_1
    return-void

    .line 308
    :cond_1
    iget v1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public getDividerColor()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerColor:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerPadding:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->indicatorColor:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->indicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->scrollOffset:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->shouldExpand:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabBackgroundResId:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabPadding:I

    return v0
.end method

.method public getTabsContainer()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabTextSize:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->underlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->underlineHeight:I

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->textAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 206
    iget-object v1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 208
    iget-object v1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabCount:I

    .line 210
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabCount:I

    if-ge v0, v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/boohee/widgets/PagerSlidingTabStrip$IconTabProvider;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/boohee/widgets/PagerSlidingTabStrip$IconTabProvider;

    invoke-interface {v1, v0}, Lcom/boohee/widgets/PagerSlidingTabStrip$IconTabProvider;->getPageIconResId(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/boohee/widgets/PagerSlidingTabStrip;->addIconTab(II)V

    .line 210
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/boohee/widgets/PagerSlidingTabStrip;->addTextTab(ILjava/lang/String;)V

    goto :goto_1

    .line 220
    :cond_1
    invoke-direct {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->updateTabStyles()V

    .line 222
    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/boohee/widgets/PagerSlidingTabStrip$1;

    invoke-direct {v2, p0}, Lcom/boohee/widgets/PagerSlidingTabStrip$1;-><init>(Lcom/boohee/widgets/PagerSlidingTabStrip;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 240
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 346
    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabCount:I

    if-nez v1, :cond_1

    .line 392
    :cond_0
    return-void

    .line 352
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->getHeight()I

    move-result v12

    .line 356
    .local v12, height:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->currentPosition:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 360
    .local v11, currentTab:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v2, v1

    .line 361
    .local v2, lineLeft:F
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v4, v1

    .line 365
    .local v4, lineRight:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->currentPositionOffset:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->currentPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    .line 367
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->currentPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 368
    .local v14, nextTab:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v15, v1

    .line 369
    .local v15, nextTabLeft:F
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v0, v1

    move/from16 v16, v0

    .line 371
    .local v16, nextTabRight:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->currentPositionOffset:F

    mul-float/2addr v1, v15

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->currentPositionOffset:F

    sub-float/2addr v3, v5

    mul-float/2addr v3, v2

    add-float v2, v1, v3

    .line 373
    move-object/from16 v0, p0

    iget v1, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->currentPositionOffset:F

    mul-float v1, v1, v16

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->currentPositionOffset:F

    sub-float/2addr v3, v5

    mul-float/2addr v3, v4

    add-float v4, v1, v3

    .line 377
    .end local v14           #nextTab:Landroid/view/View;
    .end local v15           #nextTabLeft:F
    .end local v16           #nextTabRight:F
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->indicatorHeight:I

    sub-int v1, v12, v1

    int-to-float v3, v1

    int-to-float v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->underlineColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 382
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->underlineHeight:I

    sub-int v1, v12, v1

    int-to-float v7, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v8, v1

    int-to-float v9, v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v13, v1, :cond_0

    .line 388
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 389
    .local v17, tab:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerPadding:I

    int-to-float v7, v1

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v8, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerPadding:I

    sub-int v1, v12, v1

    int-to-float v9, v1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 387
    add-int/lit8 v13, v13, 0x1

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 575
    move-object v0, p1

    check-cast v0, Lcom/boohee/widgets/PagerSlidingTabStrip$SavedState;

    .line 576
    .local v0, savedState:Lcom/boohee/widgets/PagerSlidingTabStrip$SavedState;
    invoke-virtual {v0}, Lcom/boohee/widgets/PagerSlidingTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 577
    iget v1, v0, Lcom/boohee/widgets/PagerSlidingTabStrip$SavedState;->currentPosition:I

    iput v1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->currentPosition:I

    .line 578
    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->requestLayout()V

    .line 579
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 583
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 584
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/boohee/widgets/PagerSlidingTabStrip$SavedState;

    invoke-direct {v0, v1}, Lcom/boohee/widgets/PagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 585
    .local v0, savedState:Lcom/boohee/widgets/PagerSlidingTabStrip$SavedState;
    iget v2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->currentPosition:I

    iput v2, v0, Lcom/boohee/widgets/PagerSlidingTabStrip$SavedState;->currentPosition:I

    .line 586
    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 0
    .parameter "textAllCaps"

    .prologue
    .line 524
    iput-boolean p1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->textAllCaps:Z

    .line 525
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .parameter "dividerColor"

    .prologue
    .line 470
    iput p1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerColor:I

    .line 471
    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->invalidate()V

    .line 472
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerColor:I

    .line 476
    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->invalidate()V

    .line 477
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .parameter "dividerPaddingPx"

    .prologue
    .line 493
    iput p1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->dividerPadding:I

    .line 494
    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->invalidate()V

    .line 495
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .parameter "indicatorColor"

    .prologue
    .line 433
    iput p1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->indicatorColor:I

    .line 434
    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->invalidate()V

    .line 435
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->indicatorColor:I

    .line 439
    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->invalidate()V

    .line 440
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0
    .parameter "indicatorLineHeightPx"

    .prologue
    .line 447
    iput p1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->indicatorHeight:I

    .line 448
    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->invalidate()V

    .line 449
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 202
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0
    .parameter "scrollOffsetPx"

    .prologue
    .line 502
    iput p1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->scrollOffset:I

    .line 503
    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->invalidate()V

    .line 504
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0
    .parameter "shouldExpand"

    .prologue
    .line 511
    iput-boolean p1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->shouldExpand:Z

    .line 512
    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->requestLayout()V

    .line 513
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 557
    iput p1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 558
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0
    .parameter "paddingPx"

    .prologue
    .line 565
    iput p1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabPadding:I

    .line 566
    invoke-direct {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->updateTabStyles()V

    .line 567
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter "textColor"

    .prologue
    .line 537
    iput p1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabTextColor:I

    .line 538
    invoke-direct {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->updateTabStyles()V

    .line 539
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabTextColor:I

    .line 543
    invoke-direct {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->updateTabStyles()V

    .line 544
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .parameter "textSizePx"

    .prologue
    .line 528
    iput p1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabTextSize:I

    .line 529
    invoke-direct {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->updateTabStyles()V

    .line 530
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .parameter "typeface"
    .parameter "style"

    .prologue
    .line 551
    iput-object p1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 552
    iput p2, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->tabTypefaceStyle:I

    .line 553
    invoke-direct {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->updateTabStyles()V

    .line 554
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .parameter "underlineColor"

    .prologue
    .line 456
    iput p1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->underlineColor:I

    .line 457
    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->invalidate()V

    .line 458
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->underlineColor:I

    .line 462
    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->invalidate()V

    .line 463
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0
    .parameter "underlineHeightPx"

    .prologue
    .line 484
    iput p1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->underlineHeight:I

    .line 485
    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->invalidate()V

    .line 486
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .parameter "pager"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    .line 191
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/boohee/widgets/PagerSlidingTabStrip;->pageListener:Lcom/boohee/widgets/PagerSlidingTabStrip$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 197
    invoke-virtual {p0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 198
    return-void
.end method
