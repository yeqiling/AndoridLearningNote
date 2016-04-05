.class public Lcom/boohee/record/HistoryRecordActivity;
.super Lcom/boohee/main/GestureActivity;
.source "HistoryRecordActivity.java"


# static fields
.field private static final KEY_DATE:Ljava/lang/String; = "key_date"


# instance fields
.field listView:Landroid/widget/ListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f8
    .end annotation
.end field

.field private mHistoryRecordListAdapter:Lcom/boohee/record/HistoryRecordListAdapter;

.field private mHistoryRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/HistoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private record_on:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/HistoryRecordActivity;->mHistoryRecords:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/record/HistoryRecordActivity;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/boohee/record/HistoryRecordActivity;->refreshData(Lorg/json/JSONObject;)V

    return-void
.end method

.method private handleIntent()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "key_date"

    invoke-virtual {p0, v0}, Lcom/boohee/record/HistoryRecordActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/HistoryRecordActivity;->record_on:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private initListView()V
    .locals 4

    .prologue
    .line 64
    new-instance v0, Lcom/boohee/record/HistoryRecordListAdapter;

    iget-object v1, p0, Lcom/boohee/record/HistoryRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v2, p0, Lcom/boohee/record/HistoryRecordActivity;->mHistoryRecords:Ljava/util/List;

    iget-object v3, p0, Lcom/boohee/record/HistoryRecordActivity;->record_on:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/boohee/record/HistoryRecordListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/boohee/record/HistoryRecordActivity;->mHistoryRecordListAdapter:Lcom/boohee/record/HistoryRecordListAdapter;

    .line 65
    iget-object v0, p0, Lcom/boohee/record/HistoryRecordActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/record/HistoryRecordActivity;->mHistoryRecordListAdapter:Lcom/boohee/record/HistoryRecordListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    return-void
.end method

.method private loadData()V
    .locals 4

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/boohee/record/HistoryRecordActivity;->showLoading()V

    .line 74
    iget-object v0, p0, Lcom/boohee/record/HistoryRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/record/HistoryRecordActivity;->record_on:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->getDay(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/boohee/record/HistoryRecordActivity$1;

    iget-object v3, p0, Lcom/boohee/record/HistoryRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/record/HistoryRecordActivity$1;-><init>(Lcom/boohee/record/HistoryRecordActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/RecordApi;->getCanRecordsDates(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    .line 87
    return-void
.end method

.method private refreshData(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "object"

    .prologue
    const/4 v5, 0x0

    .line 95
    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/boohee/model/HistoryRecord;

    invoke-static {v3, v4}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 96
    .local v1, historyRecords:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/HistoryRecord;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 97
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 98
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/HistoryRecord;

    .line 99
    .local v0, historyRecord:Lcom/boohee/model/HistoryRecord;
    iget-object v3, v0, Lcom/boohee/model/HistoryRecord;->eating_calory:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/boohee/model/HistoryRecord;->eating_calory:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpl-float v3, v3, v5

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, v0, Lcom/boohee/model/HistoryRecord;->activity_calory:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/boohee/model/HistoryRecord;->activity_calory:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, v0, Lcom/boohee/model/HistoryRecord;->record_on:Ljava/lang/String;

    invoke-static {v3}, Lcom/boohee/utils/DateFormatUtils;->isToday(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 100
    iget-object v3, p0, Lcom/boohee/record/HistoryRecordActivity;->mHistoryRecords:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v0           #historyRecord:Lcom/boohee/model/HistoryRecord;
    .end local v2           #i:I
    :cond_3
    iget-object v3, p0, Lcom/boohee/record/HistoryRecordActivity;->mHistoryRecordListAdapter:Lcom/boohee/record/HistoryRecordListAdapter;

    invoke-virtual {v3}, Lcom/boohee/record/HistoryRecordListAdapter;->notifyDataSetChanged()V

    .line 105
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "record_on"

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/record/HistoryRecordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, starter:Landroid/content/Intent;
    const-string v1, "key_date"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/boohee/record/HistoryRecordActivity;->setContentView(I)V

    .line 53
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 54
    invoke-direct {p0}, Lcom/boohee/record/HistoryRecordActivity;->handleIntent()V

    .line 55
    invoke-direct {p0}, Lcom/boohee/record/HistoryRecordActivity;->initListView()V

    .line 56
    invoke-direct {p0}, Lcom/boohee/record/HistoryRecordActivity;->loadData()V

    .line 57
    return-void
.end method
