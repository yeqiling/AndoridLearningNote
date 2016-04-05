.class Lcom/prolificinteractive/materialcalendarview/DirectionButton;
.super Landroid/widget/ImageView;
.source "DirectionButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->getThemeSelectableBackgroundId(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setBackgroundResource(I)V

    .line 25
    return-void
.end method

.method private static getThemeSelectableBackgroundId(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "selectableItemBackgroundBorderless"

    const-string v4, "attr"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 42
    .local v0, colorAttr:I
    if-nez v0, :cond_0

    .line 43
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 44
    const v0, 0x101045c

    .line 50
    :cond_0
    :goto_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 51
    .local v1, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 52
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    return v2

    .line 46
    .end local v1           #outValue:Landroid/util/TypedValue;
    :cond_1
    const v0, 0x101030e

    goto :goto_0
.end method


# virtual methods
.method public setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 28
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 29
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 34
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setAlpha(F)V

    .line 35
    return-void

    .line 34
    :cond_0
    const v0, 0x3dcccccd

    goto :goto_0
.end method
