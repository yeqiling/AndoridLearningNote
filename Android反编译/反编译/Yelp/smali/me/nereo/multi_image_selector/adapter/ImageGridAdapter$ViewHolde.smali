.class Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;
.super Ljava/lang/Object;
.source "ImageGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolde"
.end annotation


# instance fields
.field image:Landroid/widget/ImageView;

.field indicator:Landroid/widget/ImageView;

.field final synthetic this$0:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;


# direct methods
.method constructor <init>(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "view"

    .prologue
    .line 235
    iput-object p1, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;->this$0:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    sget v0, Lme/nereo/multi_image_selector/R$id;->image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;->image:Landroid/widget/ImageView;

    .line 237
    sget v0, Lme/nereo/multi_image_selector/R$id;->checkmark:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;->indicator:Landroid/widget/ImageView;

    .line 238
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 239
    return-void
.end method


# virtual methods
.method bindData(Lme/nereo/multi_image_selector/bean/Image;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 242
    if-nez p1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;->this$0:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    #getter for: Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->showSelectIndicator:Z
    invoke-static {v0}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->access$000(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;->indicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;->this$0:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    #getter for: Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;
    invoke-static {v0}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->access$100(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;->indicator:Landroid/widget/ImageView;

    sget v1, Lme/nereo/multi_image_selector/R$drawable;->btn_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;->image:Landroid/widget/ImageView;

    const-string v1, "#77000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 258
    :goto_1
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;->this$0:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    iget-object v1, p1, Lme/nereo/multi_image_selector/bean/Image;->id:Ljava/lang/String;

    #calls: Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->getPicUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0, v1}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->access$200(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 259
    .local v6, uri:Landroid/net/Uri;
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;->this$0:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    #getter for: Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mItemSize:I
    invoke-static {v0}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->access$300(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;->this$0:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    #getter for: Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mImageLoader:Lme/nereo/multi_image_selector/utils/MultiImageLoader;
    invoke-static {v0}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->access$400(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;)Lme/nereo/multi_image_selector/utils/MultiImageLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;->this$0:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    #getter for: Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mImageLoader:Lme/nereo/multi_image_selector/utils/MultiImageLoader;
    invoke-static {v0}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->access$400(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;)Lme/nereo/multi_image_selector/utils/MultiImageLoader;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;->image:Landroid/widget/ImageView;

    iget-object v3, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;->this$0:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    #getter for: Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mItemSize:I
    invoke-static {v3}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->access$300(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;)I

    move-result v3

    iget-object v4, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;->this$0:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    #getter for: Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->mItemSize:I
    invoke-static {v4}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->access$300(Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;)I

    move-result v4

    sget v5, Lme/nereo/multi_image_selector/R$drawable;->default_error:I

    invoke-interface/range {v0 .. v5}, Lme/nereo/multi_image_selector/utils/MultiImageLoader;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;III)V

    goto :goto_0

    .line 252
    .end local v6           #uri:Landroid/net/Uri;
    :cond_2
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;->indicator:Landroid/widget/ImageView;

    sget v1, Lme/nereo/multi_image_selector/R$drawable;->btn_unselected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;->image:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 256
    :cond_3
    iget-object v0, p0, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter$ViewHolde;->indicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
