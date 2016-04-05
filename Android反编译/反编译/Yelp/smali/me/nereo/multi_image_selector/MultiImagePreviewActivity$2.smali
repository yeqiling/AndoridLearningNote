.class Lme/nereo/multi_image_selector/MultiImagePreviewActivity$2;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "MultiImagePreviewActivity.java"


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
    .line 110
    iput-object p1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$2;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 113
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$2;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    iput p1, v0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->currentPosition:I

    .line 114
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$2;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    iget-object v0, v0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->tvPhotoPosition:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$2;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    iget-object v2, v2, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mPagerAdapter:Lme/nereo/multi_image_selector/adapter/MultiImagePreviewAdapter;

    invoke-virtual {v2}, Lme/nereo/multi_image_selector/adapter/MultiImagePreviewAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$2;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    #calls: Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->refreshCheckmarkImage()V
    invoke-static {v0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->access$300(Lme/nereo/multi_image_selector/MultiImagePreviewActivity;)V

    .line 116
    return-void
.end method
