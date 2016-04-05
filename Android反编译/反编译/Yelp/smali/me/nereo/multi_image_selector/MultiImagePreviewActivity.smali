.class public Lme/nereo/multi_image_selector/MultiImagePreviewActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MultiImagePreviewActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final KEY_SELECT_POSITION:Ljava/lang/String; = "key_select_position"

.field public static final PREVIEW_REQ_CODE:I = 0x1

.field static mImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lme/nereo/multi_image_selector/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field static mMaxImageNum:I

.field static mSelectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentPosition:I

.field mBtnBack:Landroid/widget/ImageView;

.field mCheckArea:Landroid/widget/LinearLayout;

.field mCheckmarkImage:Landroid/widget/ImageView;

.field mPagerAdapter:Lme/nereo/multi_image_selector/adapter/MultiImagePreviewAdapter;

.field mSubmitButton:Landroid/widget/Button;

.field mTvBack:Landroid/widget/TextView;

.field mViewPager:Lme/nereo/multi_image_selector/view/ViewPagerFixed;

.field tvPhotoPosition:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->currentPosition:I

    return-void
.end method

.method static synthetic access$000(Lme/nereo/multi_image_selector/MultiImagePreviewActivity;Lme/nereo/multi_image_selector/bean/Image;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->onUnSelect(Lme/nereo/multi_image_selector/bean/Image;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lme/nereo/multi_image_selector/MultiImagePreviewActivity;Lme/nereo/multi_image_selector/bean/Image;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->onSelect(Lme/nereo/multi_image_selector/bean/Image;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lme/nereo/multi_image_selector/MultiImagePreviewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->refreshSubmitBtn()V

    return-void
.end method

.method static synthetic access$300(Lme/nereo/multi_image_selector/MultiImagePreviewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->refreshCheckmarkImage()V

    return-void
.end method

.method private addListener()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mCheckArea:Landroid/widget/LinearLayout;

    new-instance v1, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$1;

    invoke-direct {v1, p0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$1;-><init>(Lme/nereo/multi_image_selector/MultiImagePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mViewPager:Lme/nereo/multi_image_selector/view/ViewPagerFixed;

    new-instance v1, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$2;

    invoke-direct {v1, p0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$2;-><init>(Lme/nereo/multi_image_selector/MultiImagePreviewActivity;)V

    invoke-virtual {v0, v1}, Lme/nereo/multi_image_selector/view/ViewPagerFixed;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 119
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mBtnBack:Landroid/widget/ImageView;

    new-instance v1, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$3;

    invoke-direct {v1, p0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$3;-><init>(Lme/nereo/multi_image_selector/MultiImagePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mSubmitButton:Landroid/widget/Button;

    new-instance v1, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$4;

    invoke-direct {v1, p0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$4;-><init>(Lme/nereo/multi_image_selector/MultiImagePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 75
    sget v0, Lme/nereo/multi_image_selector/R$id;->tv_photo_position:I

    invoke-virtual {p0, v0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->tvPhotoPosition:Landroid/widget/TextView;

    .line 76
    sget v0, Lme/nereo/multi_image_selector/R$id;->vp_multi_image:I

    invoke-virtual {p0, v0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/nereo/multi_image_selector/view/ViewPagerFixed;

    iput-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mViewPager:Lme/nereo/multi_image_selector/view/ViewPagerFixed;

    .line 77
    sget v0, Lme/nereo/multi_image_selector/R$id;->commit:I

    invoke-virtual {p0, v0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mSubmitButton:Landroid/widget/Button;

    .line 78
    sget v0, Lme/nereo/multi_image_selector/R$id;->ll_select:I

    invoke-virtual {p0, v0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mCheckArea:Landroid/widget/LinearLayout;

    .line 79
    sget v0, Lme/nereo/multi_image_selector/R$id;->checkmark:I

    invoke-virtual {p0, v0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mCheckmarkImage:Landroid/widget/ImageView;

    .line 80
    sget v0, Lme/nereo/multi_image_selector/R$id;->tv_back:I

    invoke-virtual {p0, v0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mTvBack:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mTvBack:Landroid/widget/TextView;

    sget v1, Lme/nereo/multi_image_selector/R$string;->preview:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    sget v0, Lme/nereo/multi_image_selector/R$id;->btn_back:I

    invoke-virtual {p0, v0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mBtnBack:Landroid/widget/ImageView;

    .line 83
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 141
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 142
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 143
    :cond_0
    const-string v1, "key_select_position"

    iget v2, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->currentPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->currentPosition:I

    .line 144
    new-instance v1, Lme/nereo/multi_image_selector/adapter/MultiImagePreviewAdapter;

    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mImageList:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lme/nereo/multi_image_selector/adapter/MultiImagePreviewAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mPagerAdapter:Lme/nereo/multi_image_selector/adapter/MultiImagePreviewAdapter;

    .line 145
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mViewPager:Lme/nereo/multi_image_selector/view/ViewPagerFixed;

    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mPagerAdapter:Lme/nereo/multi_image_selector/adapter/MultiImagePreviewAdapter;

    invoke-virtual {v1, v2}, Lme/nereo/multi_image_selector/view/ViewPagerFixed;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 146
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mViewPager:Lme/nereo/multi_image_selector/view/ViewPagerFixed;

    iget v2, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->currentPosition:I

    invoke-virtual {v1, v2}, Lme/nereo/multi_image_selector/view/ViewPagerFixed;->setCurrentItem(I)V

    .line 147
    invoke-direct {p0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->refreshSubmitBtn()V

    .line 148
    invoke-direct {p0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->refreshCheckmarkImage()V

    .line 149
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->tvPhotoPosition:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->currentPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mPagerAdapter:Lme/nereo/multi_image_selector/adapter/MultiImagePreviewAdapter;

    invoke-virtual {v3}, Lme/nereo/multi_image_selector/adapter/MultiImagePreviewAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private onSelect(Lme/nereo/multi_image_selector/bean/Image;)Z
    .locals 3
    .parameter "image"

    .prologue
    const/4 v0, 0x0

    .line 180
    sget-object v1, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mSelectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mMaxImageNum:I

    if-ne v1, v2, :cond_1

    .line 181
    sget v1, Lme/nereo/multi_image_selector/R$string;->msg_amount_limit:I

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 184
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    iget-object v1, p1, Lme/nereo/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mSelectList:Ljava/util/ArrayList;

    iget-object v2, p1, Lme/nereo/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onUnSelect(Lme/nereo/multi_image_selector/bean/Image;)Z
    .locals 2
    .parameter "image"

    .prologue
    .line 188
    if-eqz p1, :cond_0

    iget-object v0, p1, Lme/nereo/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mSelectList:Ljava/util/ArrayList;

    iget-object v1, p1, Lme/nereo/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshCheckmarkImage()V
    .locals 3

    .prologue
    .line 164
    sget-object v1, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mImageList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->currentPosition:I

    if-ltz v1, :cond_0

    iget v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->currentPosition:I

    sget-object v2, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mImageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    sget-object v1, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mImageList:Ljava/util/List;

    iget v2, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->currentPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/nereo/multi_image_selector/bean/Image;

    .line 167
    .local v0, image:Lme/nereo/multi_image_selector/bean/Image;
    if-eqz v0, :cond_2

    sget-object v1, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mSelectList:Ljava/util/ArrayList;

    iget-object v2, v0, Lme/nereo/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mCheckmarkImage:Landroid/widget/ImageView;

    sget v2, Lme/nereo/multi_image_selector/R$drawable;->btn_selected:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mCheckmarkImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mCheckmarkImage:Landroid/widget/ImageView;

    sget v2, Lme/nereo/multi_image_selector/R$drawable;->btn_unselected:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mCheckmarkImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private refreshSubmitBtn()V
    .locals 4

    .prologue
    .line 153
    sget-object v0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mSelectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mSubmitButton:Landroid/widget/Button;

    sget v1, Lme/nereo/multi_image_selector/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 155
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mSubmitButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 161
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mSubmitButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mSubmitButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lme/nereo/multi_image_selector/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mSelectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mMaxImageNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static startMe(Landroid/app/Activity;Ljava/util/List;Ljava/util/ArrayList;II)V
    .locals 3
    .parameter "activity"
    .parameter
    .parameter
    .parameter "maxImageNum"
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lme/nereo/multi_image_selector/bean/Image;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, imageList:Ljava/util/List;,"Ljava/util/List<Lme/nereo/multi_image_selector/bean/Image;>;"
    .local p2, selectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 54
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 63
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 55
    .restart local p3
    :cond_1
    if-nez p2, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    .end local p2           #selectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .restart local p2       #selectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    if-gez p4, :cond_3

    const/4 p4, 0x0

    .line 57
    :cond_3
    if-gt p3, v1, :cond_4

    move p3, v1

    .end local p3
    :cond_4
    sput p3, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mMaxImageNum:I

    .line 58
    sput-object p2, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mSelectList:Ljava/util/ArrayList;

    .line 59
    sput-object p1, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mImageList:Ljava/util/List;

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "key_select_position"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const-string v0, "MultiImagePreviewActivity"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "MultiImagePreviewActivity#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    sget v0, Lme/nereo/multi_image_selector/R$layout;->activity_multi_image_preview:I

    invoke-virtual {p0, v0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->setContentView(I)V

    .line 69
    invoke-direct {p0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->findView()V

    .line 70
    invoke-direct {p0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->addListener()V

    .line 71
    invoke-direct {p0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->init()V

    .line 72
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line -1
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MultiImagePreviewActivity#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method
