.class Lme/nereo/multi_image_selector/view/GestureImageView$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "GestureImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/nereo/multi_image_selector/view/GestureImageView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/nereo/multi_image_selector/view/GestureImageView;


# direct methods
.method constructor <init>(Lme/nereo/multi_image_selector/view/GestureImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lme/nereo/multi_image_selector/view/GestureImageView$1;->this$0:Lme/nereo/multi_image_selector/view/GestureImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .parameter "detector"

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 75
    .local v0, factor:F
    iget-object v1, p0, Lme/nereo/multi_image_selector/view/GestureImageView$1;->this$0:Lme/nereo/multi_image_selector/view/GestureImageView;

    #getter for: Lme/nereo/multi_image_selector/view/GestureImageView;->mImageMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Lme/nereo/multi_image_selector/view/GestureImageView;->access$200(Lme/nereo/multi_image_selector/view/GestureImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lme/nereo/multi_image_selector/view/GestureImageView$1;->this$0:Lme/nereo/multi_image_selector/view/GestureImageView;

    #getter for: Lme/nereo/multi_image_selector/view/GestureImageView;->mCenterX:I
    invoke-static {v2}, Lme/nereo/multi_image_selector/view/GestureImageView;->access$000(Lme/nereo/multi_image_selector/view/GestureImageView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lme/nereo/multi_image_selector/view/GestureImageView$1;->this$0:Lme/nereo/multi_image_selector/view/GestureImageView;

    #getter for: Lme/nereo/multi_image_selector/view/GestureImageView;->mCenterY:I
    invoke-static {v3}, Lme/nereo/multi_image_selector/view/GestureImageView;->access$100(Lme/nereo/multi_image_selector/view/GestureImageView;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 76
    iget-object v1, p0, Lme/nereo/multi_image_selector/view/GestureImageView$1;->this$0:Lme/nereo/multi_image_selector/view/GestureImageView;

    iget-object v2, p0, Lme/nereo/multi_image_selector/view/GestureImageView$1;->this$0:Lme/nereo/multi_image_selector/view/GestureImageView;

    #getter for: Lme/nereo/multi_image_selector/view/GestureImageView;->mImageMatrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Lme/nereo/multi_image_selector/view/GestureImageView;->access$200(Lme/nereo/multi_image_selector/view/GestureImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/nereo/multi_image_selector/view/GestureImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 77
    const/4 v1, 0x1

    return v1
.end method
