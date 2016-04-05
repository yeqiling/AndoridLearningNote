.class Lcom/boohee/record/WeightRecordActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "WeightRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/WeightRecordActivity;->requestRecords()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/WeightRecordActivity;


# direct methods
.method constructor <init>(Lcom/boohee/record/WeightRecordActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/boohee/record/WeightRecordActivity$1;->this$0:Lcom/boohee/record/WeightRecordActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 206
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "object"

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 192
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity$1;->this$0:Lcom/boohee/record/WeightRecordActivity;

    #getter for: Lcom/boohee/record/WeightRecordActivity;->mRecords:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/record/WeightRecordActivity;->access$000(Lcom/boohee/record/WeightRecordActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 193
    const-string v1, "records"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/boohee/model/mine/WeightRecord;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 194
    .local v0, records:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/mine/WeightRecord;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity$1;->this$0:Lcom/boohee/record/WeightRecordActivity;

    #getter for: Lcom/boohee/record/WeightRecordActivity;->mRecords:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/record/WeightRecordActivity;->access$000(Lcom/boohee/record/WeightRecordActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 196
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity$1;->this$0:Lcom/boohee/record/WeightRecordActivity;

    #getter for: Lcom/boohee/record/WeightRecordActivity;->mRecords:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/record/WeightRecordActivity;->access$000(Lcom/boohee/record/WeightRecordActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity$1;->this$0:Lcom/boohee/record/WeightRecordActivity;

    #getter for: Lcom/boohee/record/WeightRecordActivity;->record_on:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/record/WeightRecordActivity;->access$100(Lcom/boohee/record/WeightRecordActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity$1;->this$0:Lcom/boohee/record/WeightRecordActivity;

    new-instance v2, Lcom/boohee/calendar/WeightCalendarAdapter;

    iget-object v3, p0, Lcom/boohee/record/WeightRecordActivity$1;->this$0:Lcom/boohee/record/WeightRecordActivity;

    #getter for: Lcom/boohee/record/WeightRecordActivity;->ctx:Landroid/content/Context;
    invoke-static {v3}, Lcom/boohee/record/WeightRecordActivity;->access$300(Lcom/boohee/record/WeightRecordActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/record/WeightRecordActivity$1;->this$0:Lcom/boohee/record/WeightRecordActivity;

    #getter for: Lcom/boohee/record/WeightRecordActivity;->record_on:Ljava/lang/String;
    invoke-static {v4}, Lcom/boohee/record/WeightRecordActivity;->access$100(Lcom/boohee/record/WeightRecordActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "yyyyMM"

    invoke-static {v4, v5}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/record/WeightRecordActivity$1;->this$0:Lcom/boohee/record/WeightRecordActivity;

    #getter for: Lcom/boohee/record/WeightRecordActivity;->mRecords:Ljava/util/List;
    invoke-static {v5}, Lcom/boohee/record/WeightRecordActivity;->access$000(Lcom/boohee/record/WeightRecordActivity;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/boohee/calendar/WeightCalendarAdapter;-><init>(Landroid/content/Context;Ljava/util/Date;Ljava/util/List;)V

    #setter for: Lcom/boohee/record/WeightRecordActivity;->adapter:Lcom/boohee/calendar/WeightCalendarAdapter;
    invoke-static {v1, v2}, Lcom/boohee/record/WeightRecordActivity;->access$202(Lcom/boohee/record/WeightRecordActivity;Lcom/boohee/calendar/WeightCalendarAdapter;)Lcom/boohee/calendar/WeightCalendarAdapter;

    .line 200
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity$1;->this$0:Lcom/boohee/record/WeightRecordActivity;

    iget-object v1, v1, Lcom/boohee/record/WeightRecordActivity;->calendarGrid:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/boohee/record/WeightRecordActivity$1;->this$0:Lcom/boohee/record/WeightRecordActivity;

    #getter for: Lcom/boohee/record/WeightRecordActivity;->adapter:Lcom/boohee/calendar/WeightCalendarAdapter;
    invoke-static {v2}, Lcom/boohee/record/WeightRecordActivity;->access$200(Lcom/boohee/record/WeightRecordActivity;)Lcom/boohee/calendar/WeightCalendarAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    :cond_1
    return-void
.end method
