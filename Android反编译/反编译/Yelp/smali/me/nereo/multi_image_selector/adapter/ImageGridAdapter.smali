.class public Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$CheckClickListener;,
        Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;
    }
.end annotation


# static fields
.field private static final TYPE_CAMERA:I = 0x0

.field private static final TYPE_NORMAL:I = 0x1


# instance fields
.field private mActivity:Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

.field private mImageLoader:Lme/nereo/multi_image_selector/utils/MultiImageLoader;

.field private mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lme/nereo/multi_image_selector/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

.field private mItemSize:I

.field private mMaxImageNum:I

.field private mResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lme/nereo/multi_image_selector/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field private showCamera:Z

.field private showSelectIndicator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 3
    .parameter "context"
    .parameter "showCamera"
    .parameter "mMaxImageNum"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-boolean v1, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->showCamera:Z

    .line 36
    iput-boolean v1, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->showSelectIndicator:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    .line 46
    iput v1, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mMaxImageNum:I

    .line 49
    iput p3, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mMaxImageNum:I

    move-object v0, p1

    .line 50
    check-cast v0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    iput-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mActivity:Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    .line 51
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    iput-boolean p2, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->showCamera:Z

    .line 53
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mItemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    .line 54
    invoke-static {}, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->getImageLoader()Lme/nereo/multi_image_selector/utils/MultiImageLoader;

    move-result-object v0

    iput-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mImageLoader:Lme/nereo/multi_image_selector/utils/MultiImageLoader;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->showSelectIndicator:Z

    return v0
.end method

.method static synthetic access$100(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->getPicUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mItemSize:I

    return v0
.end method

.method static synthetic access$400(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;)Lme/nereo/multi_image_selector/utils/MultiImageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mImageLoader:Lme/nereo/multi_image_selector/utils/MultiImageLoader;

    return-object v0
.end method

.method static synthetic access$500(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;)Lme/nereo/multi_image_selector/MultiImageSelectorActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mActivity:Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    return-object v0
.end method

.method static synthetic access$600(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    return-object v0
.end method

.method private getImageByPath(Ljava/lang/String;)Lme/nereo/multi_image_selector/bean/Image;
    .locals 3
    .parameter "path"

    .prologue
    .line 118
    iget-object v2, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 119
    iget-object v2, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/nereo/multi_image_selector/bean/Image;

    .line 120
    .local v1, image:Lme/nereo/multi_image_selector/bean/Image;
    iget-object v2, v1, Lme/nereo/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #image:Lme/nereo/multi_image_selector/bean/Image;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPicUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "id"

    .prologue
    .line 289
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->showCamera:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->getItem(I)Lme/nereo/multi_image_selector/bean/Image;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lme/nereo/multi_image_selector/bean/Image;
    .locals 2
    .parameter "i"

    .prologue
    .line 182
    iget-boolean v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->showCamera:Z

    if-eqz v0, :cond_1

    .line 183
    if-nez p1, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 188
    :goto_0
    return-object v0

    .line 186
    :cond_0
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/nereo/multi_image_selector/bean/Image;

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/nereo/multi_image_selector/bean/Image;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 194
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 169
    iget-boolean v1, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->showCamera:Z

    if-eqz v1, :cond_0

    .line 170
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 172
    :cond_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    const/4 v5, 0x0

    .line 200
    invoke-virtual {p0, p1}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->getItemViewType(I)I

    move-result v2

    .line 201
    .local v2, type:I
    if-nez v2, :cond_2

    .line 202
    iget-object v3, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lme/nereo/multi_image_selector/R$layout;->list_item_camera:I

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 203
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 223
    .end local p1
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 224
    .local v1, lp:Landroid/widget/AbsListView$LayoutParams;
    iget v3, v1, Landroid/widget/AbsListView$LayoutParams;->height:I

    iget v4, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mItemSize:I

    if-eq v3, v4, :cond_1

    .line 225
    iget-object v3, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mItemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    :cond_1
    return-object p2

    .line 204
    .end local v1           #lp:Landroid/widget/AbsListView$LayoutParams;
    .restart local p1
    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 206
    if-nez p2, :cond_5

    .line 207
    iget-object v3, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lme/nereo/multi_image_selector/R$layout;->list_item_image:I

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 208
    new-instance v0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;

    invoke-direct {v0, p0, p2}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;-><init>(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;Landroid/view/View;)V

    .line 217
    .local v0, holde:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->getItem(I)Lme/nereo/multi_image_selector/bean/Image;

    move-result-object v3

    invoke-virtual {v0, v3}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;->bindData(Lme/nereo/multi_image_selector/bean/Image;)V

    .line 219
    iget-object v3, v0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;->indicator:Landroid/widget/ImageView;

    new-instance v4, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$CheckClickListener;

    iget-boolean v5, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->showCamera:Z

    if-eqz v5, :cond_4

    add-int/lit8 p1, p1, -0x1

    .end local p1
    :cond_4
    invoke-direct {v4, p0, p1}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$CheckClickListener;-><init>(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 210
    .end local v0           #holde:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;
    .restart local p1
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;

    .line 211
    .restart local v0       #holde:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;
    if-nez v0, :cond_3

    .line 212
    iget-object v3, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lme/nereo/multi_image_selector/R$layout;->list_item_image:I

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 213
    new-instance v0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;

    .end local v0           #holde:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;
    invoke-direct {v0, p0, p2}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;-><init>(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;Landroid/view/View;)V

    .restart local v0       #holde:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x2

    return v0
.end method

.method public isShowCamera()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->showCamera:Z

    return v0
.end method

.method public select(Lme/nereo/multi_image_selector/bean/Image;)V
    .locals 3
    .parameter "image"

    .prologue
    .line 82
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    :goto_0
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mResultList:Ljava/util/List;

    iget-object v1, p1, Lme/nereo/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mResultList:Ljava/util/List;

    iget-object v1, p1, Lme/nereo/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 97
    :goto_1
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->notifyDataSetChanged()V

    .line 98
    :goto_2
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mMaxImageNum:I

    if-eq v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mMaxImageNum:I

    if-ne v0, v1, :cond_3

    .line 92
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mActivity:Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    sget v1, Lme/nereo/multi_image_selector/R$string;->msg_amount_limit:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 95
    :cond_3
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mResultList:Ljava/util/List;

    iget-object v1, p1, Lme/nereo/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lme/nereo/multi_image_selector/bean/Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, images:Ljava/util/List;,"Ljava/util/List<Lme/nereo/multi_image_selector/bean/Image;>;"
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 137
    iput-object p1, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    .line 141
    :goto_0
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->notifyDataSetChanged()V

    .line 142
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public setDefaultSelected(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 115
    :cond_0
    return-void

    .line 107
    :cond_1
    iput-object p1, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mResultList:Ljava/util/List;

    .line 108
    iget-object v3, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 109
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 110
    .local v2, path:Ljava/lang/String;
    invoke-direct {p0, v2}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->getImageByPath(Ljava/lang/String;)Lme/nereo/multi_image_selector/bean/Image;

    move-result-object v1

    .line 111
    .local v1, image:Lme/nereo/multi_image_selector/bean/Image;
    if-eqz v1, :cond_2

    .line 112
    iget-object v3, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setItemSize(I)V
    .locals 3
    .parameter "columnWidth"

    .prologue
    .line 151
    iget v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mItemSize:I

    if-ne v0, p1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 155
    :cond_0
    iput p1, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mItemSize:I

    .line 157
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget v1, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mItemSize:I

    iget v2, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mItemSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mItemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    .line 159
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setShowCamera(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 67
    iget-boolean v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->showCamera:Z

    if-ne v0, p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iput-boolean p1, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->showCamera:Z

    .line 69
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public showSelectIndicator(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 63
    iput-boolean p1, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->showSelectIndicator:Z

    .line 64
    return-void
.end method
