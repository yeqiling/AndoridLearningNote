.class public Lcom/boohee/status/LargeImageActivity;
.super Lcom/boohee/one/ui/BaseNoToolbarActivity;
.source "LargeImageActivity.java"


# static fields
.field static final KEY_IMAGE_URL:Ljava/lang/String; = "image_url"

.field static final TAG:Ljava/lang/String;


# instance fields
.field private imageUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/boohee/status/LargeImageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/status/LargeImageActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseNoToolbarActivity;-><init>()V

    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 39
    iget-object v2, p0, Lcom/boohee/status/LargeImageActivity;->imageUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/boohee/status/LargeImageActivity;->imageUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->newInstance(Ljava/lang/String;)Lcom/boohee/one/ui/fragment/PhotoImageFragment;

    move-result-object v0

    .line 43
    .local v0, fragment:Lcom/boohee/one/ui/fragment/PhotoImageFragment;
    invoke-virtual {p0}, Lcom/boohee/status/LargeImageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 44
    .local v1, transaction:Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0e0178

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "imageUrl"

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/status/LargeImageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v0, starter:Landroid/content/Intent;
    const-string v1, "image_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseNoToolbarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/boohee/status/LargeImageActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/boohee/status/LargeImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/status/LargeImageActivity;->imageUrl:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/boohee/status/LargeImageActivity;->initUI()V

    .line 36
    return-void
.end method
