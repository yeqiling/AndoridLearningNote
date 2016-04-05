.class public Lme/nereo/multi_image_selector/MultiImageSelectorFragment;
.super Landroid/support/v4/app/Fragment;
.source "MultiImageSelectorFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/nereo/multi_image_selector/MultiImageSelectorFragment$Callback;
    }
.end annotation


# static fields
.field public static final EXTRA_DEFAULT_SELECTED_LIST:Ljava/lang/String; = "default_result"

.field public static final EXTRA_SELECT_COUNT:Ljava/lang/String; = "max_select_count"

.field public static final EXTRA_SELECT_MODE:Ljava/lang/String; = "select_count_mode"

.field public static final EXTRA_SHOW_CAMERA:Ljava/lang/String; = "show_camera"

.field private static final LOADER_ALL:I = 0x0

.field private static final LOADER_CATEGORY:I = 0x1

.field public static final MODE_MULTI:I = 0x1

.field public static final MODE_SINGLE:I = 0x0

.field private static final REQUEST_CAMERA:I = 0x64

.field public static final TAG:Ljava/lang/String; = "MultiImageSelector"

.field private static resultList:Ljava/util/ArrayList;
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
.field private folderPopWindowWidth:I

.field private folderPopWindwoHeight:I

.field private hasFolderGened:Z

.field private mCallback:Lme/nereo/multi_image_selector/MultiImageSelectorFragment$Callback;

.field private mCategoryText:Landroid/widget/TextView;

.field private mDesireImageCount:I

.field private mFolderAdapter:Lme/nereo/multi_image_selector/adapter/FolderAdapter;

.field private mFolderPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

.field private mGridView:Landroid/widget/GridView;

.field private mImageAdapter:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

.field private mImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lme/nereo/multi_image_selector/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupAnchorView:Landroid/view/View;

.field private mPreviewBtn:Landroid/widget/Button;

.field private mResultFolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lme/nereo/multi_image_selector/bean/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private mShowCamera:Z

.field private mTimeLineText:Landroid/widget/TextView;

.field private mTmpFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mResultFolder:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mImageList:Ljava/util/List;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->hasFolderGened:Z

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mShowCamera:Z

    .line 429
    new-instance v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;

    invoke-direct {v0, p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;-><init>(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)V

    iput-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mLoaderCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 542
    return-void
.end method

.method static synthetic access$000(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/support/v7/widget/ListPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Lme/nereo/multi_image_selector/adapter/FolderAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderAdapter:Lme/nereo/multi_image_selector/adapter/FolderAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mShowCamera:Z

    return v0
.end method

.method static synthetic access$1002(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mShowCamera:Z

    return p1
.end method

.method static synthetic access$1100(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Lme/nereo/multi_image_selector/MultiImageSelectorFragment$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mCallback:Lme/nereo/multi_image_selector/MultiImageSelectorFragment$Callback;

    return-object v0
.end method

.method static synthetic access$1200(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mLoaderCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$1300(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mCategoryText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->setFolderPopupWindowSize()V

    return-void
.end method

.method static synthetic access$1500(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->hasFolderGened:Z

    return v0
.end method

.method static synthetic access$1502(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->hasFolderGened:Z

    return p1
.end method

.method static synthetic access$1600(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mResultFolder:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mDesireImageCount:I

    return v0
.end method

.method static synthetic access$400(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mTimeLineText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$600(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mImageAdapter:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->createPopupFolderList(I)V

    return-void
.end method

.method static synthetic access$800(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->showCameraAction()V

    return-void
.end method

.method static synthetic access$900(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mImageList:Ljava/util/List;

    return-object v0
.end method

.method private createPopupFolderList(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 307
    new-instance v0, Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    .line 308
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderAdapter:Lme/nereo/multi_image_selector/adapter/FolderAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 309
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ListPopupWindow;->setContentWidth(I)V

    .line 310
    invoke-direct {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->setFolderPopupWindowSize()V

    .line 311
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mPopupAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 312
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setModal(Z)V

    .line 313
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    new-instance v1, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$6;

    invoke-direct {v1, p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$6;-><init>(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 339
    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;Ljava/util/ArrayList;)Lme/nereo/multi_image_selector/MultiImageSelectorFragment;
    .locals 1
    .parameter "args"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lme/nereo/multi_image_selector/MultiImageSelectorFragment;"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, selecList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sput-object p1, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    invoke-direct {v0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;-><init>()V

    .line 119
    .local v0, fragment:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;
    invoke-virtual {v0, p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 120
    return-object v0
.end method

.method private setFolderPopupWindowSize()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    iget v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->folderPopWindwoHeight:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setHeight(I)V

    .line 343
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    iget v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->folderPopWindowWidth:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setWidth(I)V

    .line 344
    return-void
.end method

.method private showCameraAction()V
    .locals 4

    .prologue
    .line 419
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, cameraIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 422
    const-string v1, "output"

    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mTmpFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 423
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lme/nereo/multi_image_selector/R$string;->msg_no_camera:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 351
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mLoaderCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 352
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 356
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 358
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 359
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 360
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mTmpFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mCallback:Lme/nereo/multi_image_selector/MultiImageSelectorFragment$Callback;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mCallback:Lme/nereo/multi_image_selector/MultiImageSelectorFragment$Callback;

    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mTmpFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$Callback;->onCameraShot(Ljava/io/File;)V

    .line 367
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 128
    :try_start_0
    check-cast p1, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$Callback;

    .end local p1
    iput-object p1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mCallback:Lme/nereo/multi_image_selector/MultiImageSelectorFragment$Callback;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "The Activity must implement MultiImageSelectorFragment.Callback interface..."

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    .line 371
    const-string v2, "MultiImageSelector"

    const-string v3, "on change"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 375
    .local v1, orientation:I
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    if-eqz v2, :cond_0

    .line 376
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 381
    :cond_0
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$7;

    invoke-direct {v3, p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$7;-><init>(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 406
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 407
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v2

    const-wide v4, 0x3fe3333333333333L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->folderPopWindwoHeight:I

    .line 408
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->folderPopWindowWidth:I

    .line 410
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 412
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    :try_start_0
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v2, "MultiImageSelectorFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 137
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->folderPopWindowWidth:I

    .line 138
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v1

    const-wide v4, 0x3fe6666666666666L

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->folderPopWindwoHeight:I

    .line 139
    sget v1, Lme/nereo/multi_image_selector/R$layout;->fragment_multi_image:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v1

    .line -1
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "MultiImageSelectorFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 299
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 300
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->refreshSelectState()V

    .line 301
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .parameter "view"
    .end parameter
    .parameter "savedInstanceState"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x1

    .line 144
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "max_select_count"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mDesireImageCount:I

    .line 150
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "select_count_mode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, mode:I
    if-ne v0, v2, :cond_0

    .line 154
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "default_result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 155
    .local v1, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 156
    sput-object v1, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    .line 161
    .end local v1           #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "show_camera"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mShowCamera:Z

    .line 162
    new-instance v3, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-boolean v5, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mShowCamera:Z

    iget v6, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mDesireImageCount:I

    invoke-direct {v3, v4, v5, v6}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;-><init>(Landroid/content/Context;ZI)V

    iput-object v3, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mImageAdapter:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    .line 164
    iget-object v3, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mImageAdapter:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    if-ne v0, v2, :cond_2

    :goto_0
    invoke-virtual {v3, v2}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->showSelectIndicator(Z)V

    .line 167
    iget-boolean v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mShowCamera:Z

    if-eqz v2, :cond_1

    .line 168
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lme/nereo/multi_image_selector/utils/FileUtils;->createTmpFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mTmpFile:Ljava/io/File;

    .line 171
    :cond_1
    sget v2, Lme/nereo/multi_image_selector/R$id;->footer:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mPopupAnchorView:Landroid/view/View;

    .line 173
    sget v2, Lme/nereo/multi_image_selector/R$id;->timeline_area:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mTimeLineText:Landroid/widget/TextView;

    .line 175
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mTimeLineText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    sget v2, Lme/nereo/multi_image_selector/R$id;->category_btn:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mCategoryText:Landroid/widget/TextView;

    .line 179
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mCategoryText:Landroid/widget/TextView;

    sget v3, Lme/nereo/multi_image_selector/R$string;->folder_all:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 180
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mCategoryText:Landroid/widget/TextView;

    new-instance v3, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$1;

    invoke-direct {v3, p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$1;-><init>(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    sget v2, Lme/nereo/multi_image_selector/R$id;->preview:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mPreviewBtn:Landroid/widget/Button;

    .line 195
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mPreviewBtn:Landroid/widget/Button;

    new-instance v3, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$2;

    invoke-direct {v3, p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$2;-><init>(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    sget v2, Lme/nereo/multi_image_selector/R$id;->grid:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;

    .line 209
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;

    new-instance v3, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$3;

    invoke-direct {v3, p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$3;-><init>(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 238
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mImageAdapter:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 239
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$4;

    invoke-direct {v3, p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$4;-><init>(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 263
    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;

    new-instance v3, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$5;

    invoke-direct {v3, p0, v0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$5;-><init>(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;I)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 294
    new-instance v2, Lme/nereo/multi_image_selector/adapter/FolderAdapter;

    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lme/nereo/multi_image_selector/adapter/FolderAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderAdapter:Lme/nereo/multi_image_selector/adapter/FolderAdapter;

    .line 295
    return-void

    .line 164
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public refreshPreviewBtn()V
    .locals 4

    .prologue
    .line 530
    sget-object v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 531
    :cond_0
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mPreviewBtn:Landroid/widget/Button;

    sget v1, Lme/nereo/multi_image_selector/R$string;->preview:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 532
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mPreviewBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 537
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mPreviewBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 535
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mPreviewBtn:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lme/nereo/multi_image_selector/R$string;->preview:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

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

.method public refreshSelectState()V
    .locals 2

    .prologue
    .line 514
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->refreshPreviewBtn()V

    .line 517
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    invoke-virtual {v0}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->refreshSubmitBtnState()V

    .line 520
    sget-object v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mImageAdapter:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    sget-object v1, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->setDefaultSelected(Ljava/util/ArrayList;)V

    .line 522
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mImageAdapter:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    invoke-virtual {v0}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->notifyDataSetChanged()V

    .line 524
    :cond_0
    return-void
.end method
