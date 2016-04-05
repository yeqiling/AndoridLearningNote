.class final Lcom/prolificinteractive/materialcalendarview/DayView$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "DayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prolificinteractive/materialcalendarview/DayView;->generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$color:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView$1;->val$color:I

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .locals 8
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 180
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v5, p0, Lcom/prolificinteractive/materialcalendarview/DayView$1;->val$color:I

    iget v6, p0, Lcom/prolificinteractive/materialcalendarview/DayView$1;->val$color:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    return-object v0
.end method
