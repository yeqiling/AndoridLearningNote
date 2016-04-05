.class Lme/nereo/multi_image_selector/MultiImageSelectorFragment$1;
.super Ljava/lang/Object;
.source "MultiImageSelectorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 180
    iput-object p1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$1;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 183
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$1;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderPopupWindow:Landroid/support/v7/widget/ListPopupWindow;
    invoke-static {v1}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$000(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$1;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderPopupWindow:Landroid/support/v7/widget/ListPopupWindow;
    invoke-static {v1}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$000(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 191
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$1;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderPopupWindow:Landroid/support/v7/widget/ListPopupWindow;
    invoke-static {v1}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$000(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 187
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$1;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderAdapter:Lme/nereo/multi_image_selector/adapter/FolderAdapter;
    invoke-static {v1}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$100(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Lme/nereo/multi_image_selector/adapter/FolderAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->getSelectIndex()I

    move-result v0

    .line 188
    .local v0, index:I
    if-nez v0, :cond_1

    .line 189
    :goto_1
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$1;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderPopupWindow:Landroid/support/v7/widget/ListPopupWindow;
    invoke-static {v1}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$000(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 188
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
