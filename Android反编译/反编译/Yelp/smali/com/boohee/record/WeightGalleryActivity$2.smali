.class Lcom/boohee/record/WeightGalleryActivity$2;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "WeightGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/WeightGalleryActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/WeightGalleryActivity;


# direct methods
.method constructor <init>(Lcom/boohee/record/WeightGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/boohee/record/WeightGalleryActivity$2;->this$0:Lcom/boohee/record/WeightGalleryActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 102
    iget-object v0, p0, Lcom/boohee/record/WeightGalleryActivity$2;->this$0:Lcom/boohee/record/WeightGalleryActivity;

    iget-object v0, v0, Lcom/boohee/record/WeightGalleryActivity;->tv_index:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/record/WeightGalleryActivity$2;->this$0:Lcom/boohee/record/WeightGalleryActivity;

    invoke-virtual {v1}, Lcom/boohee/record/WeightGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070632

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/boohee/record/WeightGalleryActivity$2;->this$0:Lcom/boohee/record/WeightGalleryActivity;

    #getter for: Lcom/boohee/record/WeightGalleryActivity;->mPreviewPhotos:Ljava/util/List;
    invoke-static {v4}, Lcom/boohee/record/WeightGalleryActivity;->access$000(Lcom/boohee/record/WeightGalleryActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method
