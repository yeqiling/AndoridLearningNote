.class Lme/nereo/multi_image_selector/MultiImageSelectorFragment$2;
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
    .line 195
    iput-object p1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$2;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 198
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v9, tempImageList:Ljava/util/List;,"Ljava/util/List<Lme/nereo/multi_image_selector/bean/Image;>;"
    invoke-static {}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$200()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 200
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 201
    new-instance v1, Lme/nereo/multi_image_selector/bean/Image;

    move-wide v6, v4

    move-object v8, v3

    invoke-direct/range {v1 .. v8}, Lme/nereo/multi_image_selector/bean/Image;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 202
    .local v1, image:Lme/nereo/multi_image_selector/bean/Image;
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    .end local v1           #image:Lme/nereo/multi_image_selector/bean/Image;
    .end local v2           #s:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$2;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    invoke-virtual {v3}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$2;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mDesireImageCount:I
    invoke-static {v5}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$300(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v3, v9, v4, v5, v6}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->startMe(Landroid/app/Activity;Ljava/util/List;Ljava/util/ArrayList;II)V

    .line 205
    return-void
.end method
