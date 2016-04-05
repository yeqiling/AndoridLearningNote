.class Lme/nereo/multi_image_selector/MultiImageSelectorFragment$7;
.super Ljava/lang/Object;
.source "MultiImageSelectorFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;


# direct methods
.method constructor <init>(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$7;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 385
    iget-object v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$7;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    invoke-virtual {v4}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lme/nereo/multi_image_selector/R$dimen;->image_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 386
    .local v2, desireSize:I
    const-string v4, "MultiImageSelector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Desire Size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$7;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v4}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$500(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/GridView;->getWidth()I

    move-result v4

    div-int v3, v4, v2

    .line 388
    .local v3, numCount:I
    const-string v4, "MultiImageSelector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Grid Size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$7;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v6}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$500(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/GridView;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v4, "MultiImageSelector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "num count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$7;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    invoke-virtual {v4}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lme/nereo/multi_image_selector/R$dimen;->space_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 391
    .local v0, columnSpace:I
    iget-object v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$7;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v4}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$500(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/GridView;->getWidth()I

    move-result v4

    add-int/lit8 v5, v3, -0x1

    mul-int/2addr v5, v0

    sub-int/2addr v4, v5

    div-int v1, v4, v3

    .line 392
    .local v1, columnWidth:I
    iget-object v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$7;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mImageAdapter:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;
    invoke-static {v4}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$600(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->setItemSize(I)V

    .line 394
    iget-object v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$7;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderPopupWindow:Landroid/support/v7/widget/ListPopupWindow;
    invoke-static {v4}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$000(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 395
    iget-object v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$7;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #calls: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->setFolderPopupWindowSize()V
    invoke-static {v4}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$1400(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)V

    .line 398
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_1

    .line 399
    iget-object v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$7;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v4}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$500(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$7;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v4}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$500(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
