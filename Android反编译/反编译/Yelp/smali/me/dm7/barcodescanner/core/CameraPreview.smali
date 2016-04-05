.class public Lme/dm7/barcodescanner/core/CameraPreview;
.super Landroid/view/SurfaceView;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraPreview"


# instance fields
.field autoFocusCB:Landroid/hardware/Camera$AutoFocusCallback;

.field private doAutoFocus:Ljava/lang/Runnable;

.field private mAutoFocus:Z

.field private mAutoFocusHandler:Landroid/os/Handler;

.field private mCamera:Landroid/hardware/Camera;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewing:Z

.field private mSurfaceCreated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 24
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mPreviewing:Z

    .line 25
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mAutoFocus:Z

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mSurfaceCreated:Z

    .line 251
    new-instance v0, Lme/dm7/barcodescanner/core/CameraPreview$1;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/core/CameraPreview$1;-><init>(Lme/dm7/barcodescanner/core/CameraPreview;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->doAutoFocus:Ljava/lang/Runnable;

    .line 260
    new-instance v0, Lme/dm7/barcodescanner/core/CameraPreview$2;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/core/CameraPreview$2;-><init>(Lme/dm7/barcodescanner/core/CameraPreview;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->autoFocusCB:Landroid/hardware/Camera$AutoFocusCallback;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mPreviewing:Z

    .line 25
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mAutoFocus:Z

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mSurfaceCreated:Z

    .line 251
    new-instance v0, Lme/dm7/barcodescanner/core/CameraPreview$1;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/core/CameraPreview$1;-><init>(Lme/dm7/barcodescanner/core/CameraPreview;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->doAutoFocus:Ljava/lang/Runnable;

    .line 260
    new-instance v0, Lme/dm7/barcodescanner/core/CameraPreview$2;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/core/CameraPreview$2;-><init>(Lme/dm7/barcodescanner/core/CameraPreview;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->autoFocusCB:Landroid/hardware/Camera$AutoFocusCallback;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lme/dm7/barcodescanner/core/CameraPreview;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$100(Lme/dm7/barcodescanner/core/CameraPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mPreviewing:Z

    return v0
.end method

.method static synthetic access$200(Lme/dm7/barcodescanner/core/CameraPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mAutoFocus:Z

    return v0
.end method

.method static synthetic access$300(Lme/dm7/barcodescanner/core/CameraPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mSurfaceCreated:Z

    return v0
.end method

.method static synthetic access$400(Lme/dm7/barcodescanner/core/CameraPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->scheduleAutoFocus()V

    return-void
.end method

.method private adjustViewSize(Landroid/hardware/Camera$Size;)V
    .locals 6
    .parameter "cameraSize"

    .prologue
    .line 129
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v3}, Lme/dm7/barcodescanner/core/CameraPreview;->convertSizeToLandscapeOrientation(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 130
    .local v1, previewSize:Landroid/graphics/Point;
    iget v3, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v3, v3

    iget v4, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 131
    .local v0, cameraRatio:F
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 133
    .local v2, screenRatio:F
    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    .line 134
    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v3, v4}, Lme/dm7/barcodescanner/core/CameraPreview;->setViewSize(II)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    invoke-direct {p0, v3, v4}, Lme/dm7/barcodescanner/core/CameraPreview;->setViewSize(II)V

    goto :goto_0
.end method

.method private convertSizeToLandscapeOrientation(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3
    .parameter "size"

    .prologue
    .line 141
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getDisplayOrientation()I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 144
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    move-object p1, v0

    goto :goto_0
.end method

.method private getOptimalPreviewSize()Landroid/hardware/Camera$Size;
    .locals 22

    .prologue
    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/dm7/barcodescanner/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 187
    const/4 v8, 0x0

    .line 228
    :cond_0
    :goto_0
    return-object v8

    .line 190
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/dm7/barcodescanner/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v13

    .line 191
    .local v13, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual/range {p0 .. p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getWidth()I

    move-result v15

    .line 192
    .local v15, w:I
    invoke-virtual/range {p0 .. p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHeight()I

    move-result v4

    .line 193
    .local v4, h:I
    invoke-virtual/range {p0 .. p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lme/dm7/barcodescanner/core/DisplayUtils;->getScreenOrientation(Landroid/content/Context;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 194
    move v9, v4

    .line 195
    .local v9, portraitWidth:I
    move v4, v15

    .line 196
    move v15, v9

    .line 199
    .end local v9           #portraitWidth:I
    :cond_2
    const-wide v2, 0x3fb999999999999aL

    .line 200
    .local v2, ASPECT_TOLERANCE:D
    int-to-double v0, v15

    move-wide/from16 v18, v0

    int-to-double v0, v4

    move-wide/from16 v20, v0

    div-double v16, v18, v20

    .line 201
    .local v16, targetRatio:D
    if-nez v13, :cond_3

    const/4 v8, 0x0

    goto :goto_0

    .line 203
    :cond_3
    const/4 v8, 0x0

    .line 204
    .local v8, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v6, 0x7fefffffffffffffL

    .line 206
    .local v6, minDiff:D
    move v14, v4

    .line 209
    .local v14, targetHeight:I
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    .line 210
    .local v12, size:Landroid/hardware/Camera$Size;
    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v10, v18, v20

    .line 211
    .local v10, ratio:D
    sub-double v18, v10, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    const-wide v20, 0x3fb999999999999aL

    cmpl-double v18, v18, v20

    if-gtz v18, :cond_4

    .line 212
    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    sub-int v18, v18, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v18, v6

    if-gez v18, :cond_4

    .line 213
    move-object v8, v12

    .line 214
    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    sub-int v18, v18, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-double v6, v0

    goto :goto_1

    .line 219
    .end local v10           #ratio:D
    .end local v12           #size:Landroid/hardware/Camera$Size;
    :cond_5
    if-nez v8, :cond_0

    .line 220
    const-wide v6, 0x7fefffffffffffffL

    .line 221
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    .line 222
    .restart local v12       #size:Landroid/hardware/Camera$Size;
    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    sub-int v18, v18, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v18, v6

    if-gez v18, :cond_6

    .line 223
    move-object v8, v12

    .line 224
    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    sub-int v18, v18, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-double v6, v0

    goto :goto_2
.end method

.method private scheduleAutoFocus()V
    .locals 4

    .prologue
    .line 267
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mAutoFocusHandler:Landroid/os/Handler;

    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->doAutoFocus:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 268
    return-void
.end method

.method private setViewSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 149
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 150
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getDisplayOrientation()I

    move-result v1

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    .line 151
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 157
    :goto_0
    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/CameraPreview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    return-void

    .line 154
    :cond_0
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 155
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method


# virtual methods
.method public getDisplayOrientation()I
    .locals 8

    .prologue
    .line 161
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 162
    .local v2, info:Landroid/hardware/Camera$CameraInfo;
    const/4 v6, 0x0

    invoke-static {v6, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 163
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 164
    .local v5, wm:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 166
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 167
    .local v4, rotation:I
    const/4 v0, 0x0

    .line 168
    .local v0, degrees:I
    packed-switch v4, :pswitch_data_0

    .line 176
    :goto_0
    iget v6, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 177
    iget v6, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v6, v0

    rem-int/lit16 v3, v6, 0x168

    .line 178
    .local v3, result:I
    rsub-int v6, v3, 0x168

    rem-int/lit16 v3, v6, 0x168

    .line 182
    :goto_1
    return v3

    .line 169
    .end local v3           #result:I
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 171
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 172
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 180
    :cond_0
    iget v6, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v6, v0

    add-int/lit16 v6, v6, 0x168

    rem-int/lit16 v3, v6, 0x168

    .restart local v3       #result:I
    goto :goto_1

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public initCameraPreview()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 46
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 47
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mPreviewing:Z

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->requestLayout()V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->showCameraPreview()V

    goto :goto_0
.end method

.method public safeAutoFocus()V
    .locals 3

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lme/dm7/barcodescanner/core/CameraPreview;->autoFocusCB:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 103
    .local v0, re:Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->scheduleAutoFocus()V

    goto :goto_0
.end method

.method public setAutoFocus(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 232
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 233
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mAutoFocus:Z

    if-ne p1, v0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mAutoFocus:Z

    .line 237
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mAutoFocus:Z

    if-eqz v0, :cond_3

    .line 238
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mSurfaceCreated:Z

    if-eqz v0, :cond_2

    .line 239
    const-string v0, "CameraPreview"

    const-string v1, "Starting autofocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->safeAutoFocus()V

    goto :goto_0

    .line 242
    :cond_2
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->scheduleAutoFocus()V

    goto :goto_0

    .line 245
    :cond_3
    const-string v0, "CameraPreview"

    const-string v1, "Cancelling autofocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    goto :goto_0
.end method

.method public setCamera(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1
    .parameter "camera"
    .parameter "previewCallback"

    .prologue
    .line 38
    iput-object p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 39
    iput-object p2, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mAutoFocusHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method public setupCameraParameters()V
    .locals 4

    .prologue
    .line 121
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getOptimalPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 122
    .local v0, optimalSize:Landroid/hardware/Camera$Size;
    iget-object v2, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 123
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 124
    iget-object v2, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 125
    invoke-direct {p0, v0}, Lme/dm7/barcodescanner/core/CameraPreview;->adjustViewSize(Landroid/hardware/Camera$Size;)V

    .line 126
    return-void
.end method

.method public showCameraPreview()V
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 78
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mPreviewing:Z

    .line 79
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->setupCameraParameters()V

    .line 80
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 81
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getDisplayOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 82
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 83
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 84
    iget-boolean v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mAutoFocus:Z

    if-eqz v1, :cond_0

    .line 85
    iget-boolean v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mSurfaceCreated:Z

    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->safeAutoFocus()V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->scheduleAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CameraPreview"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopCameraPreview()V
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 110
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mPreviewing:Z

    .line 111
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 112
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 113
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CameraPreview"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "surfaceHolder"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 62
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->stopCameraPreview()V

    .line 66
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->showCameraPreview()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "surfaceHolder"

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mSurfaceCreated:Z

    .line 58
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "surfaceHolder"

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mSurfaceCreated:Z

    .line 72
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->stopCameraPreview()V

    .line 73
    return-void
.end method
