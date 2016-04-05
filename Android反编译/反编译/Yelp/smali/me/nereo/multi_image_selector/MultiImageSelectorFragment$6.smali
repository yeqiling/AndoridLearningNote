.class Lme/nereo/multi_image_selector/MultiImageSelectorFragment$6;
.super Ljava/lang/Object;
.source "MultiImageSelectorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->createPopupFolderList(I)V
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
    .line 313
    iput-object p1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$6;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 316
    if-nez p3, :cond_0

    .line 317
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$6;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    invoke-virtual {v2}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$6;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mLoaderCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    invoke-static {v4}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$1200(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v4

    invoke-virtual {v2, v5, v3, v4}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 318
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$6;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mCategoryText:Landroid/widget/TextView;
    invoke-static {v2}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$1300(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lme/nereo/multi_image_selector/R$string;->folder_all:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 319
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$6;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mImageAdapter:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;
    invoke-static {v2}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$600(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    move-result-object v2

    invoke-virtual {v2, v6}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->setShowCamera(Z)V

    .line 320
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$6;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #setter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mShowCamera:Z
    invoke-static {v2, v6}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$1002(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;Z)Z

    .line 332
    :goto_0
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$6;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderAdapter:Lme/nereo/multi_image_selector/adapter/FolderAdapter;
    invoke-static {v2}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$100(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Lme/nereo/multi_image_selector/adapter/FolderAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->setSelectIndex(I)V

    .line 333
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$6;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderPopupWindow:Landroid/support/v7/widget/ListPopupWindow;
    invoke-static {v2}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$000(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 336
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$6;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v2}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$500(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    .line 337
    return-void

    .line 322
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/nereo/multi_image_selector/bean/Folder;

    .line 323
    .local v1, folder:Lme/nereo/multi_image_selector/bean/Folder;
    if-eqz v1, :cond_1

    .line 324
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 325
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "path"

    iget-object v3, v1, Lme/nereo/multi_image_selector/bean/Folder;->path:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$6;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    invoke-virtual {v2}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$6;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mLoaderCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    invoke-static {v3}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$1200(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v3

    invoke-virtual {v2, v6, v0, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 327
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$6;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mCategoryText:Landroid/widget/TextView;
    invoke-static {v2}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$1300(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lme/nereo/multi_image_selector/bean/Folder;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    .end local v0           #args:Landroid/os/Bundle;
    :cond_1
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$6;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mImageAdapter:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;
    invoke-static {v2}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$600(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    move-result-object v2

    invoke-virtual {v2, v5}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->setShowCamera(Z)V

    .line 330
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$6;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #setter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mShowCamera:Z
    invoke-static {v2, v5}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$1002(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;Z)Z

    goto :goto_0
.end method
