.class public abstract Lme/dm7/barcodescanner/core/BarcodeScannerView;
.super Landroid/widget/FrameLayout;
.source "BarcodeScannerView.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mFramingRectInPreview:Landroid/graphics/Rect;

.field private mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

.field private mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setupLayout()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setupLayout()V

    .line 27
    return-void
.end method


# virtual methods
.method protected createViewFinderView(Landroid/content/Context;)Lme/dm7/barcodescanner/core/IViewFinder;
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    new-instance v0, Lme/dm7/barcodescanner/core/ViewFinderView;

    invoke-direct {v0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getFlash()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    invoke-static {v2}, Lme/dm7/barcodescanner/core/CameraUtils;->isFlashSupported(Landroid/hardware/Camera;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 125
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "torch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    const/4 v1, 0x1

    .line 131
    .end local v0           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_0
    return v1
.end method

.method public declared-synchronized getFramingRectInPreview(II)Landroid/graphics/Rect;
    .locals 5
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFramingRectInPreview:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    .line 85
    iget-object v4, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v4}, Lme/dm7/barcodescanner/core/IViewFinder;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 86
    .local v0, framingRect:Landroid/graphics/Rect;
    iget-object v4, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v4}, Lme/dm7/barcodescanner/core/IViewFinder;->getWidth()I

    move-result v3

    .line 87
    .local v3, viewFinderViewWidth:I
    iget-object v4, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v4}, Lme/dm7/barcodescanner/core/IViewFinder;->getHeight()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 88
    .local v2, viewFinderViewHeight:I
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 89
    :cond_0
    const/4 v4, 0x0

    .line 100
    .end local v0           #framingRect:Landroid/graphics/Rect;
    .end local v2           #viewFinderViewHeight:I
    .end local v3           #viewFinderViewWidth:I
    :goto_0
    monitor-exit p0

    return-object v4

    .line 92
    .restart local v0       #framingRect:Landroid/graphics/Rect;
    .restart local v2       #viewFinderViewHeight:I
    .restart local v3       #viewFinderViewWidth:I
    :cond_1
    :try_start_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 93
    .local v1, rect:Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    mul-int/2addr v4, p1

    div-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 94
    iget v4, v1, Landroid/graphics/Rect;->right:I

    mul-int/2addr v4, p1

    div-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 95
    iget v4, v1, Landroid/graphics/Rect;->top:I

    mul-int/2addr v4, p2

    div-int/2addr v4, v2

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 96
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v4, p2

    div-int/2addr v4, v2

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 98
    iput-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFramingRectInPreview:Landroid/graphics/Rect;

    .line 100
    .end local v0           #framingRect:Landroid/graphics/Rect;
    .end local v1           #rect:Landroid/graphics/Rect;
    .end local v2           #viewFinderViewHeight:I
    .end local v3           #viewFinderViewWidth:I
    :cond_2
    iget-object v4, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFramingRectInPreview:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setAutoFocus(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 147
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0, p1}, Lme/dm7/barcodescanner/core/CameraPreview;->setAutoFocus(Z)V

    .line 150
    :cond_0
    return-void
.end method

.method public setFlash(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 104
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    invoke-static {v1}, Lme/dm7/barcodescanner/core/CameraUtils;->isFlashSupported(Landroid/hardware/Camera;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 107
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    if-eqz p1, :cond_2

    .line 108
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    .end local v0           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_0
    return-void

    .line 111
    .restart local v0       #parameters:Landroid/hardware/Camera$Parameters;
    :cond_1
    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 118
    :goto_1
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final setupLayout()V
    .locals 3

    .prologue
    .line 30
    new-instance v1, Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lme/dm7/barcodescanner/core/CameraPreview;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    .line 31
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    .local v0, relativeLayout:Landroid/widget/RelativeLayout;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 33
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 34
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->addView(Landroid/view/View;)V

    .line 37
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->createViewFinderView(Landroid/content/Context;)Lme/dm7/barcodescanner/core/IViewFinder;

    move-result-object v1

    iput-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    .line 38
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->addView(Landroid/view/View;)V

    .line 44
    return-void

    .line 41
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IViewFinder object returned by \'createViewFinderView()\' should be instance of android.view.View"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startCamera()V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lme/dm7/barcodescanner/core/CameraUtils;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->startCamera(Landroid/hardware/Camera;)V

    .line 72
    return-void
.end method

.method public startCamera(I)V
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 58
    invoke-static {p1}, Lme/dm7/barcodescanner/core/CameraUtils;->getCameraInstance(I)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->startCamera(Landroid/hardware/Camera;)V

    .line 59
    return-void
.end method

.method public startCamera(Landroid/hardware/Camera;)V
    .locals 2
    .parameter "camera"

    .prologue
    .line 62
    iput-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    .line 63
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    .line 65
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, p0}, Lme/dm7/barcodescanner/core/CameraPreview;->setCamera(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)V

    .line 66
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->initCameraPreview()V

    .line 68
    :cond_0
    return-void
.end method

.method public stopCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->stopCameraPreview()V

    .line 77
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0, v1, v1}, Lme/dm7/barcodescanner/core/CameraPreview;->setCamera(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)V

    .line 78
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 79
    iput-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    .line 81
    :cond_0
    return-void
.end method

.method public toggleFlash()V
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    invoke-static {v1}, Lme/dm7/barcodescanner/core/CameraUtils;->isFlashSupported(Landroid/hardware/Camera;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 137
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 142
    :goto_0
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 144
    .end local v0           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_0
    return-void

    .line 140
    .restart local v0       #parameters:Landroid/hardware/Camera$Parameters;
    :cond_1
    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0
.end method
