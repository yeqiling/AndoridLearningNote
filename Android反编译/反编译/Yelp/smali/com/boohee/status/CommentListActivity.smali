.class public Lcom/boohee/status/CommentListActivity;
.super Lcom/boohee/main/GestureActivity;
.source "CommentListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/status/CommentListActivity$ViewHolder;,
        Lcom/boohee/status/CommentListActivity$CommentListAdapter;
    }
.end annotation


# static fields
.field public static final POST_ID:Ljava/lang/String; = "post_id"

.field static final TAG:Ljava/lang/String; = null

.field public static final USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field private attachmentLayout:Landroid/widget/LinearLayout;

.field private bottomText:Landroid/widget/TextView;

.field private cb_praise:Landroid/widget/CheckBox;

.field private commentBtn:Landroid/widget/Button;

.field private commentEdit:Landroid/widget/EditText;

.field private headerView:Landroid/view/View;

.field private ivAttachment:Landroid/widget/ImageView;

.field private ll_comment:Landroid/widget/LinearLayout;

.field private ll_menu:Landroid/widget/LinearLayout;

.field private mAdapter:Lcom/boohee/status/CommentListActivity$CommentListAdapter;

.field private mAvatarImage:Landroid/widget/ImageView;

.field private mComments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mNameText:Landroid/widget/TextView;

.field private mPost:Lcom/boohee/model/status/Post;

.field private mPostBody:Landroid/widget/TextView;

.field private mPostImage:Lcom/boohee/myview/NineGridLayout;

.field private mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mTimeText:Landroid/widget/TextView;

.field private page:I

.field private postId:I

.field private rl_praise:Landroid/widget/RelativeLayout;

.field private topLayout:Landroid/widget/LinearLayout;

.field private tvAttachment:Landroid/widget/TextView;

.field private tv_comment:Landroid/widget/TextView;

.field private tv_praise_plus:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/boohee/status/CommentListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/status/CommentListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/status/CommentListActivity;->page:I

    .line 362
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/status/CommentListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/status/CommentListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boohee/status/CommentListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/boohee/status/CommentListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->bottomText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1208(Lcom/boohee/status/CommentListActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/boohee/status/CommentListActivity;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/boohee/status/CommentListActivity;->page:I

    return v0
.end method

.method static synthetic access$1300(Lcom/boohee/status/CommentListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/boohee/status/CommentListActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/boohee/status/CommentListActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/boohee/status/CommentListActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/boohee/status/CommentListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/boohee/status/CommentListActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/boohee/status/CommentListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/status/CommentListActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->commentEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/boohee/status/CommentListActivity;)Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/boohee/status/CommentListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/boohee/status/CommentListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/boohee/status/CommentListActivity;->setSelection()V

    return-void
.end method

.method static synthetic access$2300(Lcom/boohee/status/CommentListActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/boohee/status/CommentListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/boohee/status/CommentListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/boohee/status/CommentListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/boohee/status/CommentListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/status/CommentListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/boohee/status/CommentListActivity;->getComments()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/status/CommentListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/boohee/status/CommentListActivity;->getNextComments()V

    return-void
.end method

.method static synthetic access$500(Lcom/boohee/status/CommentListActivity;)Lcom/boohee/model/status/Post;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;

    return-object v0
.end method

.method static synthetic access$502(Lcom/boohee/status/CommentListActivity;Lcom/boohee/model/status/Post;)Lcom/boohee/model/status/Post;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;

    return-object p1
.end method

.method static synthetic access$600(Lcom/boohee/status/CommentListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/boohee/status/CommentListActivity;->initHeader()V

    return-void
.end method

.method static synthetic access$700(Lcom/boohee/status/CommentListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mComments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/boohee/status/CommentListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/boohee/status/CommentListActivity;->mComments:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/boohee/status/CommentListActivity;)Lcom/boohee/status/CommentListActivity$CommentListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mAdapter:Lcom/boohee/status/CommentListActivity$CommentListAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/boohee/status/CommentListActivity;Lcom/boohee/status/CommentListActivity$CommentListAdapter;)Lcom/boohee/status/CommentListActivity$CommentListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/boohee/status/CommentListActivity;->mAdapter:Lcom/boohee/status/CommentListActivity$CommentListAdapter;

    return-object p1
.end method

.method private getComments()V
    .locals 5

    .prologue
    .line 175
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/status/CommentListActivity;->page:I

    .line 176
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget v1, p0, Lcom/boohee/status/CommentListActivity;->postId:I

    iget v2, p0, Lcom/boohee/status/CommentListActivity;->page:I

    new-instance v3, Lcom/boohee/status/CommentListActivity$5;

    iget-object v4, p0, Lcom/boohee/status/CommentListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v3, p0, v4}, Lcom/boohee/status/CommentListActivity$5;-><init>(Lcom/boohee/status/CommentListActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/api/OneApi;->getComments(Landroid/content/Context;IILcom/boohee/one/http/JsonCallback;)V

    .line 201
    return-void
.end method

.method private getNextComments()V
    .locals 5

    .prologue
    .line 276
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget v1, p0, Lcom/boohee/status/CommentListActivity;->postId:I

    iget v2, p0, Lcom/boohee/status/CommentListActivity;->page:I

    new-instance v3, Lcom/boohee/status/CommentListActivity$11;

    iget-object v4, p0, Lcom/boohee/status/CommentListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v3, p0, v4}, Lcom/boohee/status/CommentListActivity$11;-><init>(Lcom/boohee/status/CommentListActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/api/OneApi;->getComments(Landroid/content/Context;IILcom/boohee/one/http/JsonCallback;)V

    .line 288
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 116
    const v0, 0x7f0e00f8

    invoke-virtual {p0, v0}, Lcom/boohee/status/CommentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/boohee/status/CommentListActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 117
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/status/CommentListActivity;->mListView:Landroid/widget/ListView;

    .line 118
    const v0, 0x7f0300a9

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/status/CommentListActivity;->headerView:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/status/CommentListActivity;->headerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 120
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e01d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/boohee/status/CommentListActivity;->topLayout:Landroid/widget/LinearLayout;

    .line 121
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e01d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/boohee/status/CommentListActivity;->mAvatarImage:Landroid/widget/ImageView;

    .line 122
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e02b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/status/CommentListActivity;->mNameText:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e02b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/status/CommentListActivity;->mTimeText:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e02b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/status/CommentListActivity;->mPostBody:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e02b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/myview/NineGridLayout;

    iput-object v0, p0, Lcom/boohee/status/CommentListActivity;->mPostImage:Lcom/boohee/myview/NineGridLayout;

    .line 126
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e023c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/status/CommentListActivity;->bottomText:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e0231

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/boohee/status/CommentListActivity;->attachmentLayout:Landroid/widget/LinearLayout;

    .line 129
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e0232

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/boohee/status/CommentListActivity;->ivAttachment:Landroid/widget/ImageView;

    .line 130
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e0233

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/status/CommentListActivity;->tvAttachment:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e02bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/status/CommentListActivity;->tv_comment:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e02b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/boohee/status/CommentListActivity;->cb_praise:Landroid/widget/CheckBox;

    .line 134
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e02b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/status/CommentListActivity;->tv_praise_plus:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e02b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/boohee/status/CommentListActivity;->rl_praise:Landroid/widget/RelativeLayout;

    .line 136
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e02ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/boohee/status/CommentListActivity;->ll_comment:Landroid/widget/LinearLayout;

    .line 137
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e02bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/boohee/status/CommentListActivity;->ll_menu:Landroid/widget/LinearLayout;

    .line 139
    const v0, 0x7f0e00fa

    invoke-virtual {p0, v0}, Lcom/boohee/status/CommentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/boohee/status/CommentListActivity;->commentBtn:Landroid/widget/Button;

    .line 140
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->commentBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v0, 0x7f0e00f9

    invoke-virtual {p0, v0}, Lcom/boohee/status/CommentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/status/CommentListActivity;->commentEdit:Landroid/widget/EditText;

    .line 142
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->commentEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/boohee/status/CommentListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "comment_prefix"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-direct {p0}, Lcom/boohee/status/CommentListActivity;->setSelection()V

    .line 145
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/status/CommentListActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/status/CommentListActivity$2;-><init>(Lcom/boohee/status/CommentListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 153
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/status/CommentListActivity$3;

    invoke-direct {v1, p0}, Lcom/boohee/status/CommentListActivity$3;-><init>(Lcom/boohee/status/CommentListActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 160
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/status/CommentListActivity$4;

    invoke-direct {v1, p0}, Lcom/boohee/status/CommentListActivity$4;-><init>(Lcom/boohee/status/CommentListActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 166
    return-void
.end method

.method private initHeader()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 204
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;

    iget-object v0, v0, Lcom/boohee/model/status/Post;->user:Lcom/boohee/model/status/StatusUser;

    if-nez v0, :cond_0

    .line 205
    const-string v0, "\u6570\u636e\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u4e0b\u62c9\u5237\u65b0~~"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 257
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;

    iget-object v1, v1, Lcom/boohee/model/status/Post;->user:Lcom/boohee/model/status/StatusUser;

    iget-object v1, v1, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/status/CommentListActivity;->mAvatarImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->avatar()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 209
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mNameText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;

    iget-object v1, v1, Lcom/boohee/model/status/Post;->user:Lcom/boohee/model/status/StatusUser;

    iget-object v1, v1, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;

    iget-object v0, v0, Lcom/boohee/model/status/Post;->created_at:Ljava/lang/String;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v0, v1}, Lcom/boohee/utils/DateHelper;->parseFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 211
    .local v6, createdAt:Ljava/util/Date;
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mTimeText:Landroid/widget/TextView;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v6}, Lcom/boohee/utils/DateKnife;->display(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->topLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/boohee/status/CommentListActivity$6;

    invoke-direct {v1, p0}, Lcom/boohee/status/CommentListActivity$6;-><init>(Lcom/boohee/status/CommentListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mPostBody:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;

    iget-object v1, v1, Lcom/boohee/model/status/Post;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mPostBody:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/status/CommentListActivity$7;

    invoke-direct {v1, p0}, Lcom/boohee/status/CommentListActivity$7;-><init>(Lcom/boohee/status/CommentListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mPostBody:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/boohee/utility/TimeLineUtility;->addLinks(Landroid/widget/TextView;)V

    .line 231
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;

    iget-object v0, v0, Lcom/boohee/model/status/Post;->photos:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;

    iget-object v0, v0, Lcom/boohee/model/status/Post;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mPostImage:Lcom/boohee/myview/NineGridLayout;

    invoke-virtual {v0, v7}, Lcom/boohee/myview/NineGridLayout;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mPostImage:Lcom/boohee/myview/NineGridLayout;

    iget-object v1, p0, Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;

    iget-object v1, v1, Lcom/boohee/model/status/Post;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/boohee/myview/NineGridLayout;->setImagesData(Ljava/util/List;)V

    .line 234
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mPostImage:Lcom/boohee/myview/NineGridLayout;

    new-instance v1, Lcom/boohee/status/CommentListActivity$8;

    invoke-direct {v1, p0}, Lcom/boohee/status/CommentListActivity$8;-><init>(Lcom/boohee/status/CommentListActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/myview/NineGridLayout;->setOnItemClickListerner(Lcom/boohee/myview/NineGridLayout$OnItemClickListerner;)V

    .line 244
    :goto_1
    iget-object v8, p0, Lcom/boohee/status/CommentListActivity;->rl_praise:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/boohee/utility/TimeLineUtility$PraiseClickListener;

    iget-object v1, p0, Lcom/boohee/status/CommentListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v2, p0, Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;

    iget-object v3, p0, Lcom/boohee/status/CommentListActivity;->rl_praise:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/boohee/status/CommentListActivity;->cb_praise:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/boohee/status/CommentListActivity;->tv_praise_plus:Landroid/widget/TextView;

    invoke-direct/range {v0 .. v5}, Lcom/boohee/utility/TimeLineUtility$PraiseClickListener;-><init>(Landroid/app/Activity;Lcom/boohee/model/status/Post;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/TextView;)V

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->cb_praise:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;

    iget v1, v1, Lcom/boohee/model/status/Post;->envious_count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v1, p0, Lcom/boohee/status/CommentListActivity;->cb_praise:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;

    iget-object v0, v0, Lcom/boohee/model/status/Post;->feedback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 247
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->tv_comment:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;

    iget v2, v2, Lcom/boohee/model/status/Post;->comment_count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->ll_comment:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/boohee/status/CommentListActivity$9;

    invoke-direct {v1, p0}, Lcom/boohee/status/CommentListActivity$9;-><init>(Lcom/boohee/status/CommentListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->ll_menu:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;

    invoke-direct {p0, v0, v1}, Lcom/boohee/status/CommentListActivity;->initMenu(Landroid/view/View;Lcom/boohee/model/status/Post;)V

    .line 256
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/status/CommentListActivity;->attachmentLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/boohee/status/CommentListActivity;->tvAttachment:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/boohee/status/CommentListActivity;->ivAttachment:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;

    iget-object v4, v4, Lcom/boohee/model/status/Post;->attachments:Lcom/boohee/model/status/AttachMent;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/boohee/utility/TimeLineUtility;->initAttachment(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/boohee/model/status/AttachMent;)V

    goto/16 :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->mPostImage:Lcom/boohee/myview/NineGridLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/boohee/myview/NineGridLayout;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v0, v7

    .line 246
    goto :goto_2
.end method

.method private initMenu(Landroid/view/View;Lcom/boohee/model/status/Post;)V
    .locals 1
    .parameter "menuBtn"
    .parameter "post"

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 261
    new-instance v0, Lcom/boohee/status/CommentListActivity$10;

    invoke-direct {v0, p0, p2}, Lcom/boohee/status/CommentListActivity$10;-><init>(Lcom/boohee/status/CommentListActivity;Lcom/boohee/model/status/Post;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    return-void
.end method

.method private sendComment(Ljava/lang/String;)V
    .locals 4
    .parameter "content"

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/boohee/status/CommentListActivity;->showLoading()V

    .line 383
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget v1, p0, Lcom/boohee/status/CommentListActivity;->postId:I

    new-instance v2, Lcom/boohee/status/CommentListActivity$12;

    iget-object v3, p0, Lcom/boohee/status/CommentListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3, p1}, Lcom/boohee/status/CommentListActivity$12;-><init>(Lcom/boohee/status/CommentListActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1, p1, v2}, Lcom/boohee/api/OneApi;->sendComments(Landroid/content/Context;ILjava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    .line 408
    return-void
.end method

.method private setSelection()V
    .locals 3

    .prologue
    .line 169
    iget-object v2, p0, Lcom/boohee/status/CommentListActivity;->commentEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 170
    .local v1, position:I
    iget-object v2, p0, Lcom/boohee/status/CommentListActivity;->commentEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 171
    .local v0, etext:Landroid/text/Editable;
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 172
    return-void
.end method


# virtual methods
.method public firstLoad()V
    .locals 4

    .prologue
    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/status/CommentListActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/status/CommentListActivity$1;-><init>(Lcom/boohee/status/CommentListActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 379
    :goto_0
    return-void

    .line 371
    :pswitch_0
    iget-object v1, p0, Lcom/boohee/status/CommentListActivity;->commentEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, content:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const v1, 0x7f070138

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0

    .line 376
    :cond_0
    invoke-direct {p0, v0}, Lcom/boohee/status/CommentListActivity;->sendComment(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00fa
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/boohee/status/CommentListActivity;->setContentView(I)V

    .line 95
    const v0, 0x7f070178

    invoke-virtual {p0, v0}, Lcom/boohee/status/CommentListActivity;->setTitle(I)V

    .line 96
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity;->ctx:Landroid/content/Context;

    const-string v1, "status_viewCommentPage"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    const-string v0, "post_id"

    invoke-virtual {p0, v0}, Lcom/boohee/status/CommentListActivity;->getIntExtra(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/status/CommentListActivity;->postId:I

    .line 98
    invoke-direct {p0}, Lcom/boohee/status/CommentListActivity;->init()V

    .line 100
    invoke-virtual {p0}, Lcom/boohee/status/CommentListActivity;->firstLoad()V

    .line 101
    return-void
.end method
