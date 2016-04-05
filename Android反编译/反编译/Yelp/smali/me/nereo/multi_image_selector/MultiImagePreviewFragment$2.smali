.class Lme/nereo/multi_image_selector/MultiImagePreviewFragment$2;
.super Lme/nereo/multi_image_selector/utils/MultiImageLoader$LoadCallBack;
.source "MultiImagePreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/nereo/multi_image_selector/MultiImagePreviewFragment;


# direct methods
.method constructor <init>(Lme/nereo/multi_image_selector/MultiImagePreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewFragment$2;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewFragment;

    invoke-direct {p0}, Lme/nereo/multi_image_selector/utils/MultiImageLoader$LoadCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewFragment$2;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewFragment;

    iget-object v0, v0, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->attacher:Luk/co/senab/photoview/PhotoViewAttacher;

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewFragment$2;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewFragment;

    iget-object v0, v0, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->attacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->update()V

    goto :goto_0
.end method
