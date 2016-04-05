.class public Lcom/boohee/status/HotTagActivity;
.super Lcom/boohee/main/GestureActivity;
.source "HotTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/status/HotTagActivity$ViewHolder;,
        Lcom/boohee/status/HotTagActivity$TagAdapter;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private hotTag:Lcom/boohee/model/HotTag;

.field private hotTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lv_hot_tag:Landroid/widget/ListView;

.field private lv_recent_tag:Landroid/widget/ListView;

.field private recentTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private txt_none_recent:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/boohee/status/HotTagActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/status/HotTagActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/status/HotTagActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/boohee/status/HotTagActivity;->recentTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/status/HotTagActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/boohee/status/HotTagActivity;->recentTags:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/status/HotTagActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/boohee/status/HotTagActivity;->hotTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/status/HotTagActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/boohee/status/HotTagActivity;->hotTags:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/boohee/status/HotTagActivity;)Lcom/boohee/model/HotTag;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/boohee/status/HotTagActivity;->hotTag:Lcom/boohee/model/HotTag;

    return-object v0
.end method

.method static synthetic access$202(Lcom/boohee/status/HotTagActivity;Lcom/boohee/model/HotTag;)Lcom/boohee/model/HotTag;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/boohee/status/HotTagActivity;->hotTag:Lcom/boohee/model/HotTag;

    return-object p1
.end method

.method static synthetic access$300(Lcom/boohee/status/HotTagActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/boohee/status/HotTagActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/status/HotTagActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/boohee/status/HotTagActivity;->lv_hot_tag:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/status/HotTagActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/boohee/status/HotTagActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/status/HotTagActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/boohee/status/HotTagActivity;->lv_recent_tag:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/status/HotTagActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/boohee/status/HotTagActivity;->txt_none_recent:Landroid/widget/TextView;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/boohee/status/HotTagActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/status/HotTagActivity$3;

    iget-object v2, p0, Lcom/boohee/status/HotTagActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/status/HotTagActivity$3;-><init>(Lcom/boohee/status/HotTagActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/StatusApi;->getTopicsRecent(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 106
    return-void
.end method


# virtual methods
.method addListener()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/boohee/status/HotTagActivity;->lv_recent_tag:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/status/HotTagActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/status/HotTagActivity$1;-><init>(Lcom/boohee/status/HotTagActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/boohee/status/HotTagActivity;->lv_hot_tag:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/status/HotTagActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/status/HotTagActivity$2;-><init>(Lcom/boohee/status/HotTagActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    return-void
.end method

.method findView()V
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f0e03b5

    invoke-virtual {p0, v0}, Lcom/boohee/status/HotTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/status/HotTagActivity;->lv_recent_tag:Landroid/widget/ListView;

    .line 53
    const v0, 0x7f0e03b6

    invoke-virtual {p0, v0}, Lcom/boohee/status/HotTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/status/HotTagActivity;->lv_hot_tag:Landroid/widget/ListView;

    .line 54
    const v0, 0x7f0e03b4

    invoke-virtual {p0, v0}, Lcom/boohee/status/HotTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/status/HotTagActivity;->txt_none_recent:Landroid/widget/TextView;

    .line 55
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f0704b0

    invoke-virtual {p0, v0}, Lcom/boohee/status/HotTagActivity;->setTitle(I)V

    .line 45
    const v0, 0x7f03011a

    invoke-virtual {p0, v0}, Lcom/boohee/status/HotTagActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/boohee/status/HotTagActivity;->findView()V

    .line 47
    invoke-virtual {p0}, Lcom/boohee/status/HotTagActivity;->addListener()V

    .line 48
    invoke-direct {p0}, Lcom/boohee/status/HotTagActivity;->init()V

    .line 49
    return-void
.end method
