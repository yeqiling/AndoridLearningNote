.class Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$CheckClickListener;
.super Ljava/lang/Object;
.source "ImageGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckClickListener"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;


# direct methods
.method public constructor <init>(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;I)V
    .locals 0
    .parameter
    .parameter "position"

    .prologue
    .line 270
    iput-object p1, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$CheckClickListener;->this$0:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput p2, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$CheckClickListener;->position:I

    .line 272
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 276
    iget-object v1, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$CheckClickListener;->this$0:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    #getter for: Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mActivity:Lme/nereo/multi_image_selector/MultiImageSelectorActivity;
    invoke-static {v1}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->access$500(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;)Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v2, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$CheckClickListener;->this$0:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    iget-object v1, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$CheckClickListener;->this$0:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    #getter for: Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;
    invoke-static {v1}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->access$600(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$CheckClickListener;->position:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/nereo/multi_image_selector/bean/Image;

    invoke-virtual {v2, v1}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->select(Lme/nereo/multi_image_selector/bean/Image;)V

    .line 279
    iget-object v1, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$CheckClickListener;->this$0:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    #getter for: Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mActivity:Lme/nereo/multi_image_selector/MultiImageSelectorActivity;
    invoke-static {v1}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->access$500(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;)Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    move-result-object v1

    invoke-virtual {v1}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->refreshSubmitBtnState()V

    .line 281
    iget-object v1, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$CheckClickListener;->this$0:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    #getter for: Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mActivity:Lme/nereo/multi_image_selector/MultiImageSelectorActivity;
    invoke-static {v1}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->access$500(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;)Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    move-result-object v1

    invoke-virtual {v1}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "MultiImageSelector"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    .line 283
    .local v0, fragment:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->refreshPreviewBtn()V

    goto :goto_0
.end method
