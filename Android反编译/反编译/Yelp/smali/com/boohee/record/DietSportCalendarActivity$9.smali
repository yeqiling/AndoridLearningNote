.class Lcom/boohee/record/DietSportCalendarActivity$9;
.super Lcom/boohee/one/http/JsonCallback;
.source "DietSportCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/DietSportCalendarActivity;->getActivities()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/DietSportCalendarActivity;


# direct methods
.method constructor <init>(Lcom/boohee/record/DietSportCalendarActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 480
    iput-object p1, p0, Lcom/boohee/record/DietSportCalendarActivity$9;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "object"

    .prologue
    .line 483
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 484
    const-string v2, "data"

    invoke-static {p1, v2}, Lcom/boohee/model/RecordSport;->parseList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 485
    .local v0, records:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/RecordSport;>;"
    const-string v2, "boohee_sport_items"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/boohee/model/VideoSportRecord;

    invoke-static {v2, v3}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 486
    .local v1, videoRecords:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/VideoSportRecord;>;"
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity$9;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #calls: Lcom/boohee/record/DietSportCalendarActivity;->initSportData(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v2, v0, v1}, Lcom/boohee/record/DietSportCalendarActivity;->access$1300(Lcom/boohee/record/DietSportCalendarActivity;Ljava/util/List;Ljava/util/List;)V

    .line 487
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity$9;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity$9;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #getter for: Lcom/boohee/record/DietSportCalendarActivity;->sportList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/boohee/record/DietSportCalendarActivity;->access$1400(Lcom/boohee/record/DietSportCalendarActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/record/DietSportCalendarActivity$9;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iget-object v4, v4, Lcom/boohee/record/DietSportCalendarActivity;->ll_card_sport:Landroid/widget/LinearLayout;

    #calls: Lcom/boohee/record/DietSportCalendarActivity;->initSportCardView(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    invoke-static {v2, v3, v4}, Lcom/boohee/record/DietSportCalendarActivity;->access$1500(Lcom/boohee/record/DietSportCalendarActivity;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 488
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 492
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 493
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$9;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    invoke-virtual {v0}, Lcom/boohee/record/DietSportCalendarActivity;->dismissLoading()V

    .line 494
    return-void
.end method
