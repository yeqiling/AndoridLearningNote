.class Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/nereo/multi_image_selector/adapter/FolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field cover:Landroid/widget/ImageView;

.field indicator:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field size:Landroid/widget/TextView;

.field final synthetic this$0:Lme/nereo/multi_image_selector/adapter/FolderAdapter;


# direct methods
.method constructor <init>(Lme/nereo/multi_image_selector/adapter/FolderAdapter;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "view"

    .prologue
    .line 130
    iput-object p1, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;->this$0:Lme/nereo/multi_image_selector/adapter/FolderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    sget v0, Lme/nereo/multi_image_selector/R$id;->cover:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    .line 132
    sget v0, Lme/nereo/multi_image_selector/R$id;->name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 133
    sget v0, Lme/nereo/multi_image_selector/R$id;->size:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;->size:Landroid/widget/TextView;

    .line 134
    sget v0, Lme/nereo/multi_image_selector/R$id;->indicator:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    .line 135
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 136
    return-void
.end method


# virtual methods
.method bindData(Lme/nereo/multi_image_selector/bean/Folder;)V
    .locals 6
    .parameter "data"

    .prologue
    .line 139
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p1, Lme/nereo/multi_image_selector/bean/Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;->size:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lme/nereo/multi_image_selector/bean/Folder;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5f20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-static {}, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->getImageLoader()Lme/nereo/multi_image_selector/utils/MultiImageLoader;

    move-result-object v0

    iget-object v1, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;->this$0:Lme/nereo/multi_image_selector/adapter/FolderAdapter;

    iget-object v2, p1, Lme/nereo/multi_image_selector/bean/Folder;->cover:Lme/nereo/multi_image_selector/bean/Image;

    iget-object v2, v2, Lme/nereo/multi_image_selector/bean/Image;->id:Ljava/lang/String;

    #calls: Lme/nereo/multi_image_selector/adapter/FolderAdapter;->getPicUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v1, v2}, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->access$000(Lme/nereo/multi_image_selector/adapter/FolderAdapter;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    iget-object v3, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;->this$0:Lme/nereo/multi_image_selector/adapter/FolderAdapter;

    iget v3, v3, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->mImageSize:I

    iget-object v4, p0, Lme/nereo/multi_image_selector/adapter/FolderAdapter$ViewHolder;->this$0:Lme/nereo/multi_image_selector/adapter/FolderAdapter;

    iget v4, v4, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->mImageSize:I

    sget v5, Lme/nereo/multi_image_selector/R$drawable;->default_error:I

    invoke-interface/range {v0 .. v5}, Lme/nereo/multi_image_selector/utils/MultiImageLoader;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;III)V

    .line 145
    return-void
.end method
