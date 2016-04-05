.class public Lcom/boohee/status/ReportActivity;
.super Lcom/boohee/main/GestureActivity;
.source "ReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/status/ReportActivity$ReportType;
    }
.end annotation


# static fields
.field public static final EXTRA_ID:Ljava/lang/String; = "extra_id"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "extra_type"

.field static final TAG:Ljava/lang/String;


# instance fields
.field category:Ljava/lang/String;

.field id:I

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Landroid/widget/ListView;

.field type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/boohee/status/ReportActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/status/ReportActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 40
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5e7f\u544a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u8272\u60c5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u6b3a\u8bc8"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u9a9a\u6270"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u4fae\u8fb1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u4fb5\u6743"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5176\u4ed6"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/status/ReportActivity;->mData:Ljava/util/List;

    .line 43
    sget-object v0, Lcom/boohee/status/ReportActivity$ReportType;->User:Lcom/boohee/status/ReportActivity$ReportType;

    invoke-virtual {v0}, Lcom/boohee/status/ReportActivity$ReportType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/status/ReportActivity;->type:Ljava/lang/String;

    .line 44
    const-string v0, "\u5e7f\u544a"

    iput-object v0, p0, Lcom/boohee/status/ReportActivity;->category:Ljava/lang/String;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/status/ReportActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/status/ReportActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/status/ReportActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/boohee/status/ReportActivity;->sendReport()V

    return-void
.end method

.method private findViews()V
    .locals 3

    .prologue
    .line 64
    const v0, 0x7f0e01fa

    invoke-virtual {p0, v0}, Lcom/boohee/status/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/status/ReportActivity;->mList:Landroid/widget/ListView;

    .line 65
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x109000f

    iget-object v2, p0, Lcom/boohee/status/ReportActivity;->mData:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/boohee/status/ReportActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 67
    iget-object v0, p0, Lcom/boohee/status/ReportActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/status/ReportActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v0, p0, Lcom/boohee/status/ReportActivity;->mList:Landroid/widget/ListView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 69
    iget-object v0, p0, Lcom/boohee/status/ReportActivity;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/status/ReportActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/status/ReportActivity$1;-><init>(Lcom/boohee/status/ReportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    return-void
.end method

.method private getData()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "extra_id"

    invoke-virtual {p0, v0}, Lcom/boohee/status/ReportActivity;->getIntExtra(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/status/ReportActivity;->id:I

    .line 60
    const-string v0, "extra_type"

    invoke-virtual {p0, v0}, Lcom/boohee/status/ReportActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/status/ReportActivity;->type:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private sendReport()V
    .locals 6

    .prologue
    .line 99
    iget-object v0, p0, Lcom/boohee/status/ReportActivity;->category:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "\u8bf7\u9009\u62e9\u4e3e\u62a5\u7406\u7531"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 116
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/boohee/status/ReportActivity;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lcom/boohee/status/ReportActivity$ReportType;->User:Lcom/boohee/status/ReportActivity$ReportType;

    invoke-virtual {v0}, Lcom/boohee/status/ReportActivity$ReportType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/status/ReportActivity;->type:Ljava/lang/String;

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/boohee/status/ReportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget v1, p0, Lcom/boohee/status/ReportActivity;->id:I

    iget-object v2, p0, Lcom/boohee/status/ReportActivity;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/boohee/status/ReportActivity;->category:Ljava/lang/String;

    new-instance v4, Lcom/boohee/status/ReportActivity$2;

    iget-object v5, p0, Lcom/boohee/status/ReportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v4, p0, v5}, Lcom/boohee/status/ReportActivity$2;-><init>(Lcom/boohee/status/ReportActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/boohee/api/StatusApi;->postReport(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 119
    const-string v0, "\u786e\u8ba4\u4e3e\u62a5\u4e48\uff1f"

    const-string v1, "\u786e\u5b9a\u8981\u4e3e\u62a5\uff1f"

    invoke-static {p0, v0, v1}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/boohee/status/ReportActivity$3;

    invoke-direct {v2, p0}, Lcom/boohee/status/ReportActivity$3;-><init>(Lcom/boohee/status/ReportActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(Landroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->show()V

    .line 126
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f03006f

    invoke-virtual {p0, v0}, Lcom/boohee/status/ReportActivity;->setContentView(I)V

    .line 52
    const v0, 0x7f0700b4

    invoke-virtual {p0, v0}, Lcom/boohee/status/ReportActivity;->setTitle(I)V

    .line 54
    invoke-direct {p0}, Lcom/boohee/status/ReportActivity;->getData()V

    .line 55
    invoke-direct {p0}, Lcom/boohee/status/ReportActivity;->findViews()V

    .line 56
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 79
    const/4 v0, 0x0

    const v1, 0x7f070082

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 81
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 86
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 91
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 88
    :pswitch_0
    invoke-direct {p0}, Lcom/boohee/status/ReportActivity;->sendReport()V

    .line 89
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
