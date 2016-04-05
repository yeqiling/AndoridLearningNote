.class Lme/dm7/barcodescanner/core/CameraPreview$1;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/dm7/barcodescanner/core/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/dm7/barcodescanner/core/CameraPreview;


# direct methods
.method constructor <init>(Lme/dm7/barcodescanner/core/CameraPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lme/dm7/barcodescanner/core/CameraPreview$1;->this$0:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview$1;->this$0:Lme/dm7/barcodescanner/core/CameraPreview;

    #getter for: Lme/dm7/barcodescanner/core/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->access$000(Lme/dm7/barcodescanner/core/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview$1;->this$0:Lme/dm7/barcodescanner/core/CameraPreview;

    #getter for: Lme/dm7/barcodescanner/core/CameraPreview;->mPreviewing:Z
    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->access$100(Lme/dm7/barcodescanner/core/CameraPreview;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview$1;->this$0:Lme/dm7/barcodescanner/core/CameraPreview;

    #getter for: Lme/dm7/barcodescanner/core/CameraPreview;->mAutoFocus:Z
    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->access$200(Lme/dm7/barcodescanner/core/CameraPreview;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview$1;->this$0:Lme/dm7/barcodescanner/core/CameraPreview;

    #getter for: Lme/dm7/barcodescanner/core/CameraPreview;->mSurfaceCreated:Z
    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->access$300(Lme/dm7/barcodescanner/core/CameraPreview;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview$1;->this$0:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->safeAutoFocus()V

    .line 256
    :cond_0
    return-void
.end method
