.class Lme/nereo/multi_image_selector/view/GestureImageView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
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
    .line 81
    iput-object p1, p0, Lme/nereo/multi_image_selector/view/GestureImageView$2;->this$0:Lme/nereo/multi_image_selector/view/GestureImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/high16 v3, 0x3f80

    .line 84
    iget-object v0, p0, Lme/nereo/multi_image_selector/view/GestureImageView$2;->this$0:Lme/nereo/multi_image_selector/view/GestureImageView;

    #getter for: Lme/nereo/multi_image_selector/view/GestureImageView;->mImageMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lme/nereo/multi_image_selector/view/GestureImageView;->access$200(Lme/nereo/multi_image_selector/view/GestureImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lme/nereo/multi_image_selector/view/GestureImageView$2;->this$0:Lme/nereo/multi_image_selector/view/GestureImageView;

    #getter for: Lme/nereo/multi_image_selector/view/GestureImageView;->mCenterX:I
    invoke-static {v1}, Lme/nereo/multi_image_selector/view/GestureImageView;->access$000(Lme/nereo/multi_image_selector/view/GestureImageView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lme/nereo/multi_image_selector/view/GestureImageView$2;->this$0:Lme/nereo/multi_image_selector/view/GestureImageView;

    #getter for: Lme/nereo/multi_image_selector/view/GestureImageView;->mCenterY:I
    invoke-static {v2}, Lme/nereo/multi_image_selector/view/GestureImageView;->access$100(Lme/nereo/multi_image_selector/view/GestureImageView;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 85
    iget-object v0, p0, Lme/nereo/multi_image_selector/view/GestureImageView$2;->this$0:Lme/nereo/multi_image_selector/view/GestureImageView;

    iget-object v1, p0, Lme/nereo/multi_image_selector/view/GestureImageView$2;->this$0:Lme/nereo/multi_image_selector/view/GestureImageView;

    #getter for: Lme/nereo/multi_image_selector/view/GestureImageView;->mImageMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Lme/nereo/multi_image_selector/view/GestureImageView;->access$200(Lme/nereo/multi_image_selector/view/GestureImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/nereo/multi_image_selector/view/GestureImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method
