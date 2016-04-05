.class Lme/nereo/multi_image_selector/MultiImageSelectorFragment$4;
.super Ljava/lang/Object;
.source "MultiImageSelectorFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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


# direct methods
.method constructor <init>(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$4;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

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
    .line 244
    iget-object v5, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$4;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v5}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$500(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/GridView;->getWidth()I

    move-result v4

    .line 246
    .local v4, width:I
    iget-object v5, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$4;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    invoke-virtual {v5}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lme/nereo/multi_image_selector/R$dimen;->image_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 247
    .local v2, desireSize:I
    div-int v3, v4, v2

    .line 248
    .local v3, numCount:I
    iget-object v5, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$4;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    invoke-virtual {v5}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lme/nereo/multi_image_selector/R$dimen;->space_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 249
    .local v0, columnSpace:I
    add-int/lit8 v5, v3, -0x1

    mul-int/2addr v5, v0

    sub-int v5, v4, v5

    div-int v1, v5, v3

    .line 250
    .local v1, columnWidth:I
    iget-object v5, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$4;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mImageAdapter:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;
    invoke-static {v5}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$600(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    move-result-object v5

    invoke-virtual {v5, v1}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->setItemSize(I)V

    .line 252
    iget-object v5, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$4;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderPopupWindow:Landroid/support/v7/widget/ListPopupWindow;
    invoke-static {v5}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$000(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v5

    if-nez v5, :cond_0

    .line 253
    iget-object v5, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$4;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #calls: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->createPopupFolderList(I)V
    invoke-static {v5, v4}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$700(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;I)V

    .line 256
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_1

    .line 257
    iget-object v5, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$4;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v5}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$500(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v5, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$4;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v5}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$500(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
