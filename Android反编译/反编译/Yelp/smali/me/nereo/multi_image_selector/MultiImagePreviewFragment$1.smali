.class Lme/nereo/multi_image_selector/MultiImagePreviewFragment$1;
.super Ljava/lang/Object;
.source "MultiImagePreviewFragment.java"

# interfaces
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;


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
    .line 77
    iput-object p1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewFragment$1;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoTap(Landroid/view/View;FF)V
    .locals 1
    .parameter "view"
    .parameter "v"
    .parameter "v2"

    .prologue
    .line 80
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewFragment$1;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewFragment;

    invoke-virtual {v0}, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 81
    return-void
.end method
