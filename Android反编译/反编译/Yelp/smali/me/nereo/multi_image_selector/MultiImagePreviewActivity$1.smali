.class Lme/nereo/multi_image_selector/MultiImagePreviewActivity$1;
.super Ljava/lang/Object;
.source "MultiImagePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;


# direct methods
.method constructor <init>(Lme/nereo/multi_image_selector/MultiImagePreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$1;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 89
    sget-object v1, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mImageList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$1;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    iget v1, v1, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->currentPosition:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$1;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    iget v1, v1, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->currentPosition:I

    sget-object v2, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mImageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    sget-object v1, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mImageList:Ljava/util/List;

    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$1;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    iget v2, v2, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->currentPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/nereo/multi_image_selector/bean/Image;

    .line 92
    .local v0, image:Lme/nereo/multi_image_selector/bean/Image;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$1;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    iget-object v1, v1, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mCheckmarkImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 94
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$1;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    #calls: Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->onUnSelect(Lme/nereo/multi_image_selector/bean/Image;)Z
    invoke-static {v1, v0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->access$000(Lme/nereo/multi_image_selector/MultiImagePreviewActivity;Lme/nereo/multi_image_selector/bean/Image;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$1;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    iget-object v1, v1, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mCheckmarkImage:Landroid/widget/ImageView;

    sget v2, Lme/nereo/multi_image_selector/R$drawable;->btn_unselected:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$1;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    iget-object v1, v1, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mCheckmarkImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 106
    :cond_2
    :goto_1
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$1;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    #calls: Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->refreshSubmitBtn()V
    invoke-static {v1}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->access$200(Lme/nereo/multi_image_selector/MultiImagePreviewActivity;)V

    goto :goto_0

    .line 100
    :cond_3
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$1;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    #calls: Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->onSelect(Lme/nereo/multi_image_selector/bean/Image;)Z
    invoke-static {v1, v0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->access$100(Lme/nereo/multi_image_selector/MultiImagePreviewActivity;Lme/nereo/multi_image_selector/bean/Image;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$1;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    iget-object v1, v1, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mCheckmarkImage:Landroid/widget/ImageView;

    sget v2, Lme/nereo/multi_image_selector/R$drawable;->btn_selected:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$1;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    iget-object v1, v1, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mCheckmarkImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_1
.end method
