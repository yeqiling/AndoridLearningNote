.class public Lcom/boohee/utils/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field static final TAG:Ljava/lang/String;

.field private static lastClickTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/boohee/utils/ViewUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/utils/ViewUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "dpValue"

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 146
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getActionBarHeight(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    .line 191
    const v1, 0x7f0e059a

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 193
    :goto_0
    return v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4260

    invoke-static {v1, v2}, Lcom/boohee/utils/ViewUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    goto :goto_0
.end method

.method public static getViewHeight(Landroid/content/Context;Landroid/view/View;)I
    .locals 3
    .parameter "context"
    .parameter "view"

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 95
    .local v0, displaymetrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    return v1
.end method

.method public static getViewWidth(Landroid/content/Context;Landroid/view/View;)I
    .locals 3
    .parameter "context"
    .parameter "view"

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 89
    .local v0, displaymetrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    return v1
.end method

.method public static initImageView(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;)V
    .locals 3
    .parameter "context"
    .parameter "mUri"
    .parameter "preImage"

    .prologue
    .line 106
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d00c5

    invoke-static {v2}, Lcom/boohee/utility/ImageLoaderOptions;->color(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_0
.end method

.method public static isFastDoubleClick()Z
    .locals 2

    .prologue
    .line 164
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lcom/boohee/utils/ViewUtils;->isFastDoubleClick(J)Z

    move-result v0

    return v0
.end method

.method public static isFastDoubleClick(J)Z
    .locals 6
    .parameter "timeMillis"

    .prologue
    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 169
    .local v0, time:J
    sget-wide v4, Lcom/boohee/utils/ViewUtils;->lastClickTime:J

    sub-long v2, v0, v4

    .line 170
    .local v2, timeD:J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    cmp-long v4, v2, p0

    if-gez v4, :cond_0

    .line 171
    const/4 v4, 0x1

    .line 174
    :goto_0
    return v4

    .line 173
    :cond_0
    sput-wide v0, Lcom/boohee/utils/ViewUtils;->lastClickTime:J

    .line 174
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "pxValue"

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 154
    .local v0, scale:F
    div-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static varargs setBatchViewScaleHeight(Landroid/content/Context;II[Landroid/view/View;)V
    .locals 4
    .parameter "context"
    .parameter "width"
    .parameter "height"
    .parameter "views"

    .prologue
    .line 74
    move-object v0, p3

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 75
    .local v3, view:Landroid/view/View;
    invoke-static {p0, v3, p1, p2}, Lcom/boohee/utils/ViewUtils;->setViewScaleHeight(Landroid/content/Context;Landroid/view/View;II)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v3           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public static varargs setSelection([Landroid/widget/EditText;)V
    .locals 6
    .parameter "edits"

    .prologue
    .line 41
    move-object v0, p0

    .local v0, arr$:[Landroid/widget/EditText;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 42
    .local v1, edit:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v5

    .line 43
    .local v5, position:I
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 44
    .local v2, etext:Landroid/text/Editable;
    invoke-static {v2, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    .end local v1           #edit:Landroid/widget/EditText;
    .end local v2           #etext:Landroid/text/Editable;
    .end local v5           #position:I
    :cond_0
    return-void
.end method

.method public static setViewScaleHeight(Landroid/content/Context;Landroid/view/View;II)V
    .locals 2
    .parameter "context"
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/boohee/utils/ResolutionUtils;->getHeight(Landroid/content/Context;II)I

    move-result v0

    .line 55
    .local v0, scaleHeight:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public static setViewScaleHeightBaseSelf(Landroid/content/Context;Landroid/view/View;II)V
    .locals 3
    .parameter "context"
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {p0, p1}, Lcom/boohee/utils/ViewUtils;->getViewWidth(Landroid/content/Context;Landroid/view/View;)I

    move-result v0

    .line 65
    .local v0, originWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {p0, v0, p2, p3}, Lcom/boohee/utils/ResolutionUtils;->getHeight(Landroid/content/Context;III)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public static setViewScaleWidth(Landroid/view/View;III)V
    .locals 2
    .parameter "view"
    .parameter "width"
    .parameter "height"
    .parameter "baseHieght"

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/boohee/utils/ResolutionUtils;->getWidthBasedHeight(III)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 85
    return-void
.end method

.method public static showTimeDialog(Landroid/content/Context;Lcom/boohee/model/Alarm;Lcom/boohee/modeldao/AlarmDao;Landroid/widget/TextView;)V
    .locals 9
    .parameter "context"
    .parameter "alarm"
    .parameter "alarmDao"
    .parameter "text_view"

    .prologue
    .line 121
    new-instance v2, Lcom/boohee/myview/TimePickerWheelView;

    iget v0, p1, Lcom/boohee/model/Alarm;->hour:I

    iget v1, p1, Lcom/boohee/model/Alarm;->minute:I

    invoke-direct {v2, p0, v0, v1}, Lcom/boohee/myview/TimePickerWheelView;-><init>(Landroid/content/Context;II)V

    .line 123
    .local v2, timePickerView:Lcom/boohee/myview/TimePickerWheelView;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f070082

    new-instance v0, Lcom/boohee/utils/ViewUtils$1;

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/boohee/utils/ViewUtils$1;-><init>(Lcom/boohee/model/Alarm;Lcom/boohee/myview/TimePickerWheelView;Landroid/widget/TextView;Lcom/boohee/modeldao/AlarmDao;Landroid/content/Context;)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 139
    return-void
.end method

.method public static startRiseNumber(Lcom/boohee/myview/risenumber/RiseNumberTextView;I)V
    .locals 4
    .parameter "riseNumberTextView"
    .parameter "number"

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/boohee/myview/risenumber/RiseNumberTextView;->withNumber(I)Lcom/boohee/myview/risenumber/RiseNumberTextView;

    move-result-object v0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Lcom/boohee/myview/risenumber/RiseNumberTextView;->setDuration(J)Lcom/boohee/myview/risenumber/RiseNumberTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/myview/risenumber/RiseNumberTextView;->start()V

    .line 185
    return-void
.end method
