.class public Lme/nereo/multi_image_selector/adapter/MultiImagePreviewAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MultiImagePreviewAdapter.java"


# instance fields
.field mImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lme/nereo/multi_image_selector/bean/Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .parameter "fm"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Lme/nereo/multi_image_selector/bean/Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, imageList:Ljava/util/List;,"Ljava/util/List<Lme/nereo/multi_image_selector/bean/Image;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 21
    iput-object p2, p0, Lme/nereo/multi_image_selector/adapter/MultiImagePreviewAdapter;->mImageList:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/MultiImagePreviewAdapter;->mImageList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/MultiImagePreviewAdapter;->mImageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter "position"

    .prologue
    .line 26
    iget-object v1, p0, Lme/nereo/multi_image_selector/adapter/MultiImagePreviewAdapter;->mImageList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/nereo/multi_image_selector/bean/Image;

    .line 27
    .local v0, image:Lme/nereo/multi_image_selector/bean/Image;
    invoke-static {v0}, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->newInstance(Lme/nereo/multi_image_selector/bean/Image;)Lme/nereo/multi_image_selector/MultiImagePreviewFragment;

    move-result-object v1

    return-object v1
.end method
