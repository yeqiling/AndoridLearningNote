.class Lme/nereo/multi_image_selector/MultiImageSelectorFragment$3;
.super Ljava/lang/Object;
.source "MultiImageSelectorFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    .line 209
    iput-object p1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$3;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 229
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$3;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mTimeLineText:Landroid/widget/TextView;
    invoke-static {v2}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$400(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 230
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ne v3, v2, :cond_1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 231
    .local v1, index:I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/nereo/multi_image_selector/bean/Image;

    .line 232
    .local v0, image:Lme/nereo/multi_image_selector/bean/Image;
    if-eqz v0, :cond_0

    .line 233
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$3;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mTimeLineText:Landroid/widget/TextView;
    invoke-static {v2}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$400(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lme/nereo/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-static {v3}, Lme/nereo/multi_image_selector/utils/TimeUtils;->formatPhotoDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    .end local v0           #image:Lme/nereo/multi_image_selector/bean/Image;
    .end local v1           #index:I
    :cond_0
    return-void

    .line 230
    :cond_1
    add-int/lit8 v1, p2, 0x1

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "absListView"
    .parameter "state"

    .prologue
    .line 213
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 214
    :cond_0
    invoke-static {}, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->getImageLoader()Lme/nereo/multi_image_selector/utils/MultiImageLoader;

    move-result-object v0

    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$3;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    invoke-virtual {v1}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lme/nereo/multi_image_selector/utils/MultiImageLoader;->resume(Ljava/lang/Object;)V

    .line 219
    :goto_0
    if-nez p2, :cond_3

    .line 221
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$3;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mTimeLineText:Landroid/widget/TextView;
    invoke-static {v0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$400(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    :cond_1
    :goto_1
    return-void

    .line 216
    :cond_2
    invoke-static {}, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->getImageLoader()Lme/nereo/multi_image_selector/utils/MultiImageLoader;

    move-result-object v0

    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$3;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    invoke-virtual {v1}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lme/nereo/multi_image_selector/utils/MultiImageLoader;->pause(Ljava/lang/Object;)V

    goto :goto_0

    .line 222
    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 223
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$3;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mTimeLineText:Landroid/widget/TextView;
    invoke-static {v0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$400(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
