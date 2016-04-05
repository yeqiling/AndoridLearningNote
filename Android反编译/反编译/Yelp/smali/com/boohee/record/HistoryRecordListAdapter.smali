.class public Lcom/boohee/record/HistoryRecordListAdapter;
.super Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;
.source "HistoryRecordListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
        "<",
        "Lcom/boohee/model/HistoryRecord;",
        ">;"
    }
.end annotation


# instance fields
.field record_on:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "record_on"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/HistoryRecord;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/HistoryRecord;>;"
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 26
    iput-object p3, p0, Lcom/boohee/record/HistoryRecordListAdapter;->record_on:Ljava/lang/String;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/record/HistoryRecordListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/boohee/record/HistoryRecordListAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getItemResource()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f030139

    return v0
.end method

.method public getItemView(ILandroid/view/View;Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
            "<",
            "Lcom/boohee/model/HistoryRecord;",
            ">.ViewHolder;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p3, holder:Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;,"Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<Lcom/boohee/model/HistoryRecord;>.ViewHolder;"
    const/4 v11, 0x0

    .line 36
    invoke-virtual {p0, p1}, Lcom/boohee/record/HistoryRecordListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/HistoryRecord;

    .line 37
    .local v1, historyRecord:Lcom/boohee/model/HistoryRecord;
    if-nez v1, :cond_0

    .line 53
    :goto_0
    return-object p2

    .line 40
    :cond_0
    const v5, 0x7f0e023e

    invoke-virtual {p3, v5}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 41
    .local v2, tv_date:Landroid/widget/TextView;
    const v5, 0x7f0e034a

    invoke-virtual {p3, v5}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 42
    .local v4, tv_week:Landroid/widget/TextView;
    const v5, 0x7f0e0381

    invoke-virtual {p3, v5}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 43
    .local v3, tv_des:Landroid/widget/TextView;
    const v5, 0x7f0e03f7

    invoke-virtual {p3, v5}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 44
    .local v0, btn_copy:Landroid/widget/Button;
    iget-object v5, v1, Lcom/boohee/model/HistoryRecord;->record_on:Ljava/lang/String;

    const-string v6, "M-d"

    invoke-static {v5, v6}, Lcom/boohee/utils/DateFormatUtils;->string2String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v5, v1, Lcom/boohee/model/HistoryRecord;->record_on:Ljava/lang/String;

    invoke-static {v5}, Lcom/boohee/utils/DateFormatUtils;->getWeekOfDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const-string v5, "\u6444\u5165\uff1a%1$s\u5343\u5361 / \u6d88\u8017\uff1a%2$s\u5343\u5361"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/boohee/model/HistoryRecord;->eating_calory:Ljava/lang/String;

    iget-object v8, v1, Lcom/boohee/model/HistoryRecord;->eating_calory:Ljava/lang/String;

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    const/4 v7, 0x1

    iget-object v8, v1, Lcom/boohee/model/HistoryRecord;->activity_calory:Ljava/lang/String;

    iget-object v9, v1, Lcom/boohee/model/HistoryRecord;->activity_calory:Ljava/lang/String;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    new-instance v5, Lcom/boohee/record/HistoryRecordListAdapter$1;

    invoke-direct {v5, p0, v1}, Lcom/boohee/record/HistoryRecordListAdapter$1;-><init>(Lcom/boohee/record/HistoryRecordListAdapter;Lcom/boohee/model/HistoryRecord;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
