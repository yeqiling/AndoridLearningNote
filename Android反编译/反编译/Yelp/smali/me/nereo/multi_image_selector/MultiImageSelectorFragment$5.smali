.class Lme/nereo/multi_image_selector/MultiImageSelectorFragment$5;
.super Ljava/lang/Object;
.source "MultiImageSelectorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$5;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    iput p2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$5;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clickPictureItem(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 280
    iget v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$5;->val$mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 282
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$5;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    invoke-virtual {v1}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$5;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mImageList:Ljava/util/List;
    invoke-static {v2}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$900(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$200()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$5;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mDesireImageCount:I
    invoke-static {v4}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$300(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)I

    move-result v4

    iget-object v5, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$5;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mShowCamera:Z
    invoke-static {v5}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$1000(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 p1, p1, -0x1

    .end local p1
    :cond_0
    invoke-static {v1, v2, v3, v4, p1}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->startMe(Landroid/app/Activity;Ljava/util/List;Ljava/util/ArrayList;II)V

    .line 291
    :cond_1
    :goto_0
    return-void

    .line 285
    .restart local p1
    :cond_2
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$5;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mImageAdapter:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;
    invoke-static {v1}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$600(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->getItem(I)Lme/nereo/multi_image_selector/bean/Image;

    move-result-object v0

    .line 287
    .local v0, image:Lme/nereo/multi_image_selector/bean/Image;
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$5;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mCallback:Lme/nereo/multi_image_selector/MultiImageSelectorFragment$Callback;
    invoke-static {v1}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$1100(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Lme/nereo/multi_image_selector/MultiImageSelectorFragment$Callback;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 288
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$5;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mCallback:Lme/nereo/multi_image_selector/MultiImageSelectorFragment$Callback;
    invoke-static {v1}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$1100(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Lme/nereo/multi_image_selector/MultiImageSelectorFragment$Callback;

    move-result-object v1

    iget-object v2, v0, Lme/nereo/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$Callback;->onSingleImageSelected(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "i"
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$5;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mImageAdapter:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;
    invoke-static {v0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$600(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->isShowCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    if-nez p3, :cond_0

    .line 269
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$5;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #calls: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->showCameraAction()V
    invoke-static {v0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$800(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)V

    .line 276
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-direct {p0, p3}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$5;->clickPictureItem(I)V

    goto :goto_0

    .line 274
    :cond_1
    invoke-direct {p0, p3}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$5;->clickPictureItem(I)V

    goto :goto_0
.end method
