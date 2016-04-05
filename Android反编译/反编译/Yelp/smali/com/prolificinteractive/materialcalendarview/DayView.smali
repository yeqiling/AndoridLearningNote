.class Lcom/prolificinteractive/materialcalendarview/DayView;
.super Landroid/widget/CheckedTextView;
.source "DayView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private date:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private fadeTime:I

.field private formatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

.field private isDecoratedDisabled:Z

.field private isInRange:Z

.field private selectionColor:I

.field private selectionDrawable:Landroid/graphics/drawable/Drawable;

.field private showOtherDates:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    .line 35
    const v0, -0x777778

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionColor:I

    .line 40
    sget-object v0, Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->formatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInRange:Z

    .line 43
    iput-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->showOtherDates:Z

    .line 44
    iput-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isDecoratedDisabled:Z

    .line 48
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const v0, -0x777778

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionColor:I

    .line 40
    sget-object v0, Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->formatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInRange:Z

    .line 43
    iput-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->showOtherDates:Z

    .line 44
    iput-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isDecoratedDisabled:Z

    .line 53
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->init()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 2
    .parameter "context"
    .parameter "day"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    .line 35
    const v0, -0x777778

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionColor:I

    .line 40
    sget-object v0, Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->formatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInRange:Z

    .line 43
    iput-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->showOtherDates:Z

    .line 44
    iput-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isDecoratedDisabled:Z

    .line 58
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->init()V

    .line 59
    invoke-virtual {p0, p2}, Lcom/prolificinteractive/materialcalendarview/DayView;->setDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 60
    return-void
.end method

.method private static generateBackground(II)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "color"
    .parameter "fadeTime"

    .prologue
    const v5, 0x10100a7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 162
    .local v0, drawable:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    .line 163
    new-array v1, v4, [I

    const v2, 0x10100a0

    aput v2, v1, v3

    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 164
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 165
    new-array v1, v4, [I

    aput v5, v1, v3

    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateRippleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 170
    :goto_0
    new-array v1, v3, [I

    invoke-static {v3}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 172
    return-object v0

    .line 167
    :cond_0
    new-array v1, v4, [I

    aput v5, v1, v3

    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private static generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "color"

    .prologue
    .line 176
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 177
    .local v0, drawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v1, Lcom/prolificinteractive/materialcalendarview/DayView$1;

    invoke-direct {v1, p0}, Lcom/prolificinteractive/materialcalendarview/DayView$1;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    .line 183
    return-object v0
.end method

.method private static generateRippleDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "color"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 188
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 189
    .local v0, list:Landroid/content/res/ColorStateList;
    const/4 v2, -0x1

    invoke-static {v2}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 190
    .local v1, mask:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method private init()V
    .locals 3

    .prologue
    const/16 v2, 0x11

    .line 63
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->fadeTime:I

    .line 64
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionColor:I

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setSelectionColor(I)V

    .line 65
    invoke-virtual {p0, v2}, Lcom/prolificinteractive/materialcalendarview/DayView;->setGravity(I)V

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    .line 68
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setTextAlignment(I)V

    .line 70
    :cond_0
    return-void
.end method

.method private regenerateBackground()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionColor:I

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->fadeTime:I

    invoke-static {v0, v1}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateBackground(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setEnabled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInRange:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isDecoratedDisabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 129
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInRange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->showOtherDates:Z

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    invoke-virtual {p0, v1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setVisibility(I)V

    .line 130
    return-void

    :cond_1
    move v0, v1

    .line 128
    goto :goto_0

    .line 129
    :cond_2
    const/4 v1, 0x4

    goto :goto_1
.end method


# virtual methods
.method applyFacade(Lcom/prolificinteractive/materialcalendarview/DayViewFacade;)V
    .locals 9
    .parameter "facade"

    .prologue
    .line 197
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->areDaysDisabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isDecoratedDisabled:Z

    .line 198
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setEnabled()V

    .line 201
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->getSelectionDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/prolificinteractive/materialcalendarview/DayView;->setSelectionDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->getSpans()Ljava/util/List;

    move-result-object v4

    .line 205
    .local v4, spans:Ljava/util/List;,"Ljava/util/List<Lcom/prolificinteractive/materialcalendarview/DayViewFacade$Span;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, label:Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 208
    .local v0, formattedLabel:Landroid/text/SpannableString;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prolificinteractive/materialcalendarview/DayViewFacade$Span;

    .line 209
    .local v3, span:Lcom/prolificinteractive/materialcalendarview/DayViewFacade$Span;
    iget-object v5, v3, Lcom/prolificinteractive/materialcalendarview/DayViewFacade$Span;->span:Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 211
    .end local v3           #span:Lcom/prolificinteractive/materialcalendarview/DayViewFacade$Span;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    .end local v0           #formattedLabel:Landroid/text/SpannableString;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #label:Ljava/lang/String;
    :goto_1
    return-void

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/prolificinteractive/materialcalendarview/DayView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->date:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->formatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->date:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-interface {v0, v1}, Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;->format(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 1
    .parameter "date"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->date:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 74
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method public setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V
    .locals 11
    .parameter "formatter"

    .prologue
    const/4 v10, 0x0

    .line 83
    if-nez p1, :cond_0

    sget-object p1, Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->formatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .line 84
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 85
    .local v1, currentLabel:Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 86
    .local v6, spans:[Ljava/lang/Object;
    instance-of v7, v1, Landroid/text/Spanned;

    if-eqz v7, :cond_1

    move-object v7, v1

    .line 87
    check-cast v7, Landroid/text/Spanned;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-class v9, Ljava/lang/Object;

    invoke-interface {v7, v10, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .line 89
    :cond_1
    new-instance v4, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 90
    .local v4, newLabel:Landroid/text/SpannableString;
    if-eqz v6, :cond_2

    .line 91
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 92
    .local v5, span:Ljava/lang/Object;
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v4, v5, v10, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #span:Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, v4}, Lcom/prolificinteractive/materialcalendarview/DayView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public setSelectionColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 103
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionColor:I

    .line 104
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->regenerateBackground()V

    .line 105
    return-void
.end method

.method public setSelectionDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "selectionDrawable"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    .line 112
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->invalidate()V

    .line 113
    return-void
.end method

.method protected setupSelection(ZZZ)V
    .locals 1
    .parameter "showOtherDates"
    .parameter "inRange"
    .parameter "inMonth"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->showOtherDates:Z

    .line 134
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInRange:Z

    .line 135
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setEnabled()V

    .line 136
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
