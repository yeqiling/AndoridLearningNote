.class public Lme/nereo/multi_image_selector/adapter/FolderAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field lastSelected:I

.field private mContext:Landroid/content/Context;

.field private mFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lme/nereo/multi_image_selector/bean/Folder;",
            ">;"
        }
    .end annotation
.end field

.field mImageSize:I

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->lastSelected:I

    .line 37
    iput-object p1, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    .line 38
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/nereo/multi_image_selector/R$dimen;->folder_cover_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->mImageSize:I

    .line 40
    return-void
.end method

.method static synthetic access$000(Lme/nereo/multi_image_selector/adapter/FolderAdapter;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->getPicUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getPicUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "id"

    .prologue
    .line 149
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getTotalImageSize()I
    .locals 4

    .prologue
    .line 104
    const/4 v2, 0x0

    .line 105
    .local v2, result:I
    iget-object v3, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 106
    iget-object v3, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/nereo/multi_image_selector/bean/Folder;

    .line 107
    .local v0, f:Lme/nereo/multi_image_selector/bean/Folder;
    iget-object v3, v0, Lme/nereo/multi_image_selector/bean/Folder;->images:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 108
    goto :goto_0

    .line 110
    .end local v0           #f:Lme/nereo/multi_image_selector/bean/Folder;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return v2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->getItem(I)Lme/nereo/multi_image_selector/bean/Folder;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lme/nereo/multi_image_selector/bean/Folder;
    .locals 2
    .parameter "i"

    .prologue
    .line 63
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/nereo/multi_image_selector/bean/Folder;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectIndex()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->lastSelected:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    const/4 v9, 0x0

    .line 75
    if-nez p2, :cond_2

    .line 76
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lme/nereo/multi_image_selector/R$layout;->list_item_folder:I

    invoke-virtual {v0, v1, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 77
    new-instance v7, Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;

    invoke-direct {v7, p0, p2}, Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;-><init>(Lme/nereo/multi_image_selector/adapter/FolderAdapter;Landroid/view/View;)V

    .line 81
    .local v7, holder:Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;
    :goto_0
    if-eqz v7, :cond_1

    .line 82
    if-nez p1, :cond_3

    .line 83
    iget-object v0, v7, Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const-string v1, "\u6240\u6709\u56fe\u7247"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, v7, Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;->size:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->getTotalImageSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5f20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lme/nereo/multi_image_selector/bean/Folder;

    .line 87
    .local v6, f:Lme/nereo/multi_image_selector/bean/Folder;
    new-instance v0, Ljava/io/File;

    iget-object v1, v6, Lme/nereo/multi_image_selector/bean/Folder;->cover:Lme/nereo/multi_image_selector/bean/Image;

    iget-object v1, v1, Lme/nereo/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 88
    .local v8, imageUri:Landroid/net/Uri;
    invoke-static {}, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->getImageLoader()Lme/nereo/multi_image_selector/utils/MultiImageLoader;

    move-result-object v0

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    iget v3, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->mImageSize:I

    iget v4, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->mImageSize:I

    sget v5, Lme/nereo/multi_image_selector/R$drawable;->default_error:I

    invoke-interface/range {v0 .. v5}, Lme/nereo/multi_image_selector/utils/MultiImageLoader;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;III)V

    .line 94
    .end local v6           #f:Lme/nereo/multi_image_selector/bean/Folder;
    .end local v8           #imageUri:Landroid/net/Uri;
    :cond_0
    :goto_1
    iget v0, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->lastSelected:I

    if-ne v0, p1, :cond_4

    .line 95
    iget-object v0, v7, Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    :cond_1
    :goto_2
    return-object p2

    .line 79
    .end local v7           #holder:Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;

    .restart local v7       #holder:Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p0, p1}, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->getItem(I)Lme/nereo/multi_image_selector/bean/Folder;

    move-result-object v0

    invoke-virtual {v7, v0}, Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;->bindData(Lme/nereo/multi_image_selector/bean/Folder;)V

    goto :goto_1

    .line 97
    :cond_4
    iget-object v0, v7, Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lme/nereo/multi_image_selector/bean/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, folders:Ljava/util/List;,"Ljava/util/List<Lme/nereo/multi_image_selector/bean/Folder;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 49
    iput-object p1, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    .line 53
    :goto_0
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->notifyDataSetChanged()V

    .line 54
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public setSelectIndex(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 114
    iget v0, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->lastSelected:I

    if-ne v0, p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iput p1, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->lastSelected:I

    .line 117
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
