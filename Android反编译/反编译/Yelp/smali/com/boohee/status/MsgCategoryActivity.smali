.class public Lcom/boohee/status/MsgCategoryActivity;
.super Lcom/boohee/main/GestureActivity;
.source "MsgCategoryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final ICON_IDS:[I

.field static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/MsgCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/boohee/status/MsgCategoryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/status/MsgCategoryActivity;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/boohee/status/MsgCategoryActivity;->ICON_IDS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x7et 0x2t 0x2t 0x7ft
        0x80t 0x2t 0x2t 0x7ft
        0x81t 0x2t 0x2t 0x7ft
        0x82t 0x2t 0x2t 0x7ft
        0x84t 0x2t 0x2t 0x7ft
        0x7ft 0x2t 0x2t 0x7ft
        0x83t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/status/MsgCategoryActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/boohee/status/MsgCategoryActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/status/MsgCategoryActivity;)Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/boohee/status/MsgCategoryActivity;->mAdapter:Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;

    return-object v0
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 84
    const v0, 0x7f0e00ad

    invoke-virtual {p0, v0}, Lcom/boohee/status/MsgCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/status/MsgCategoryActivity;->mListView:Landroid/widget/ListView;

    .line 85
    iget-object v0, p0, Lcom/boohee/status/MsgCategoryActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    return-void
.end method

.method private getApnUnread()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/boohee/status/MsgCategoryActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/boohee/status/MsgCategoryActivity$2;-><init>(Lcom/boohee/status/MsgCategoryActivity;Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/boohee/api/ApnApi;->checkUnread(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 142
    return-void
.end method

.method private getStatusUnread()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/boohee/status/MsgCategoryActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/status/MsgCategoryActivity$1;

    iget-object v2, p0, Lcom/boohee/status/MsgCategoryActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/status/MsgCategoryActivity$1;-><init>(Lcom/boohee/status/MsgCategoryActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/OneApi;->getUnread(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 123
    return-void
.end method

.method private initData()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/boohee/status/MsgCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, mTitles:[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/boohee/status/MsgCategoryActivity;->mCategories:Ljava/util/ArrayList;

    .line 91
    iget-object v1, p0, Lcom/boohee/status/MsgCategoryActivity;->mCategories:Ljava/util/ArrayList;

    new-instance v2, Lcom/boohee/model/MsgCategory;

    sget-object v3, Lcom/boohee/status/MsgCategoryActivity;->ICON_IDS:[I

    aget v3, v3, v4

    aget-object v4, v0, v4

    const-string v5, "mention"

    invoke-direct {v2, v3, v4, v5}, Lcom/boohee/model/MsgCategory;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v1, p0, Lcom/boohee/status/MsgCategoryActivity;->mCategories:Ljava/util/ArrayList;

    new-instance v2, Lcom/boohee/model/MsgCategory;

    sget-object v3, Lcom/boohee/status/MsgCategoryActivity;->ICON_IDS:[I

    aget v3, v3, v6

    aget-object v4, v0, v6

    const-string v5, "comment"

    invoke-direct {v2, v3, v4, v5}, Lcom/boohee/model/MsgCategory;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lcom/boohee/status/MsgCategoryActivity;->mCategories:Ljava/util/ArrayList;

    new-instance v2, Lcom/boohee/model/MsgCategory;

    sget-object v3, Lcom/boohee/status/MsgCategoryActivity;->ICON_IDS:[I

    aget v3, v3, v7

    aget-object v4, v0, v7

    const-string v5, "feedback"

    invoke-direct {v2, v3, v4, v5}, Lcom/boohee/model/MsgCategory;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v1, p0, Lcom/boohee/status/MsgCategoryActivity;->mCategories:Ljava/util/ArrayList;

    new-instance v2, Lcom/boohee/model/MsgCategory;

    sget-object v3, Lcom/boohee/status/MsgCategoryActivity;->ICON_IDS:[I

    aget v3, v3, v8

    aget-object v4, v0, v8

    const-string v5, "friendship"

    invoke-direct {v2, v3, v4, v5}, Lcom/boohee/model/MsgCategory;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, p0, Lcom/boohee/status/MsgCategoryActivity;->mCategories:Ljava/util/ArrayList;

    new-instance v2, Lcom/boohee/model/MsgCategory;

    sget-object v3, Lcom/boohee/status/MsgCategoryActivity;->ICON_IDS:[I

    aget v3, v3, v9

    aget-object v4, v0, v9

    const-string v5, "repost"

    invoke-direct {v2, v3, v4, v5}, Lcom/boohee/model/MsgCategory;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v1, p0, Lcom/boohee/status/MsgCategoryActivity;->mCategories:Ljava/util/ArrayList;

    new-instance v2, Lcom/boohee/model/MsgCategory;

    sget-object v3, Lcom/boohee/status/MsgCategoryActivity;->ICON_IDS:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/4 v4, 0x5

    aget-object v4, v0, v4

    invoke-direct {v2, v3, v4}, Lcom/boohee/model/MsgCategory;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, p0, Lcom/boohee/status/MsgCategoryActivity;->mCategories:Ljava/util/ArrayList;

    new-instance v2, Lcom/boohee/model/MsgCategory;

    sget-object v3, Lcom/boohee/status/MsgCategoryActivity;->ICON_IDS:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/4 v4, 0x6

    aget-object v4, v0, v4

    invoke-direct {v2, v3, v4}, Lcom/boohee/model/MsgCategory;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;

    iget-object v2, p0, Lcom/boohee/status/MsgCategoryActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v3, p0, Lcom/boohee/status/MsgCategoryActivity;->mCategories:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v1, p0, Lcom/boohee/status/MsgCategoryActivity;->mAdapter:Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;

    .line 99
    iget-object v1, p0, Lcom/boohee/status/MsgCategoryActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/boohee/status/MsgCategoryActivity;->mAdapter:Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    return-void
.end method


# virtual methods
.method public allReaded()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/boohee/status/MsgCategoryActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/status/MsgCategoryActivity$3;

    iget-object v2, p0, Lcom/boohee/status/MsgCategoryActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/status/MsgCategoryActivity$3;-><init>(Lcom/boohee/status/MsgCategoryActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/OneApi;->clearNotification(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 181
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/boohee/status/MsgCategoryActivity;->setContentView(I)V

    .line 53
    const-string v0, "status_viewMessageCate"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    const v0, 0x7f070368

    invoke-virtual {p0, v0}, Lcom/boohee/status/MsgCategoryActivity;->setTitle(I)V

    .line 55
    invoke-direct {p0}, Lcom/boohee/status/MsgCategoryActivity;->findViews()V

    .line 56
    invoke-direct {p0}, Lcom/boohee/status/MsgCategoryActivity;->initData()V

    .line 57
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 67
    const/4 v0, 0x0

    const v1, 0x7f0700d7

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 69
    return v2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 156
    invoke-static {p0}, Lcom/boohee/utils/AccountUtils;->isVisitorAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {p0}, Lcom/boohee/widgets/CheckAccountPopwindow;->showVisitorPopWindow(Landroid/content/Context;)V

    .line 167
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/status/MsgCategoryActivity;->ctx:Landroid/content/Context;

    const-string v1, "other_clickApnPage"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/boohee/utility/BuilderIntent;

    iget-object v1, p0, Lcom/boohee/status/MsgCategoryActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lcom/boohee/more/FeedbackActivity;

    invoke-direct {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    goto :goto_0

    .line 152
    :pswitch_1
    iget-object v0, p0, Lcom/boohee/status/MsgCategoryActivity;->ctx:Landroid/content/Context;

    const-string v1, "other_viewBroadcastsList"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/boohee/utility/BuilderIntent;

    iget-object v1, p0, Lcom/boohee/status/MsgCategoryActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lcom/boohee/one/mine/BroadcastListActivity;

    invoke-direct {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    goto :goto_0

    .line 160
    :cond_0
    new-instance v1, Lcom/boohee/utility/BuilderIntent;

    iget-object v0, p0, Lcom/boohee/status/MsgCategoryActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lcom/boohee/status/NotificationActivity;

    invoke-direct {v1, v0, v2}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    iget-object v0, p0, Lcom/boohee/status/MsgCategoryActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/MsgCategory;

    iget-object v0, v0, Lcom/boohee/model/MsgCategory;->code:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/boohee/utility/BuilderIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/utility/BuilderIntent;

    move-result-object v1

    const-string v2, "EXTRA_TITLE"

    iget-object v0, p0, Lcom/boohee/status/MsgCategoryActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/MsgCategory;

    iget-object v0, v0, Lcom/boohee/model/MsgCategory;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/boohee/utility/BuilderIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/utility/BuilderIntent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 79
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 76
    :pswitch_0
    invoke-virtual {p0}, Lcom/boohee/status/MsgCategoryActivity;->allReaded()V

    .line 77
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onResume()V

    .line 61
    invoke-direct {p0}, Lcom/boohee/status/MsgCategoryActivity;->getStatusUnread()V

    .line 62
    invoke-direct {p0}, Lcom/boohee/status/MsgCategoryActivity;->getApnUnread()V

    .line 63
    return-void
.end method
