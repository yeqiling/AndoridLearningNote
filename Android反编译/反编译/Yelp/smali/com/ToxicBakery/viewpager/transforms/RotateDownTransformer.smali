.class public Lcom/ToxicBakery/viewpager/transforms/RotateDownTransformer;
.super Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;
.source "RotateDownTransformer.java"


# static fields
.field private static final ROT_MOD:F = -15.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method protected isPagingEnabled()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method protected onTransform(Landroid/view/View;F)V
    .locals 5
    .parameter "view"
    .parameter "position"

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 28
    .local v2, width:F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 29
    .local v0, height:F
    const/high16 v3, -0x3e90

    mul-float/2addr v3, p2

    const/high16 v4, -0x4060

    mul-float v1, v3, v4

    .line 31
    .local v1, rotation:F
    const/high16 v3, 0x3f00

    mul-float/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 34
    return-void
.end method
