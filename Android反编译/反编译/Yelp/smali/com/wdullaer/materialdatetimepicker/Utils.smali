.class public Lcom/wdullaer/materialdatetimepicker/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final FULL_ALPHA:I = 0xff

.field public static final PULSE_ANIMATOR_DURATION:I = 0x220

.field public static final SELECTED_ALPHA:I = 0xff

.field public static final SELECTED_ALPHA_THEME_DARK:I = 0xff


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static darkenColor(I)I
    .locals 4
    .parameter "color"

    .prologue
    const/4 v3, 0x2

    .line 131
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 132
    .local v0, hsv:[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 133
    aget v1, v0, v3

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    aput v1, v0, v3

    .line 134
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public static dpToPx(FLandroid/content/res/Resources;)I
    .locals 3
    .parameter "dp"
    .parameter "resources"

    .prologue
    .line 126
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 127
    .local v0, px:F
    float-to-int v1, v0

    return v1
.end method

.method public static getAccentColorFromThemeIfAvailable(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 143
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 145
    .local v1, typedValue:Landroid/util/TypedValue;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010435

    invoke-virtual {v2, v3, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 147
    iget v2, v1, Landroid/util/TypedValue;->data:I

    .line 155
    :goto_0
    return v2

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "colorAccent"

    const-string v4, "attr"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, colorAccentResId:I
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    iget v2, v1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_accent_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_0
.end method

.method public static getPulseAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 13
    .parameter "labelToAnimate"
    .parameter "decreaseRatio"
    .parameter "increaseRatio"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f80

    .line 107
    const/4 v7, 0x0

    invoke-static {v7, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 108
    .local v0, k0:Landroid/animation/Keyframe;
    const v7, 0x3e8ccccd

    invoke-static {v7, p1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 109
    .local v1, k1:Landroid/animation/Keyframe;
    const v7, 0x3f30a3d7

    invoke-static {v7, p2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 110
    .local v2, k2:Landroid/animation/Keyframe;
    invoke-static {v8, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 112
    .local v3, k3:Landroid/animation/Keyframe;
    const-string v7, "scaleX"

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/Keyframe;

    aput-object v0, v8, v9

    aput-object v1, v8, v10

    aput-object v2, v8, v11

    aput-object v3, v8, v12

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 113
    .local v5, scaleX:Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleY"

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/Keyframe;

    aput-object v0, v8, v9

    aput-object v1, v8, v10

    aput-object v2, v8, v11

    aput-object v3, v8, v12

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 114
    .local v6, scaleY:Landroid/animation/PropertyValuesHolder;
    new-array v7, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v7, v9

    aput-object v6, v7, v10

    invoke-static {p0, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 116
    .local v4, pulseAnimator:Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x220

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 118
    return-object v4
.end method

.method public static isJellybeanOrLater()Z
    .locals 2

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "view"
    .parameter "text"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Lcom/wdullaer/materialdatetimepicker/Utils;->isJellybeanOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    return-void
.end method
