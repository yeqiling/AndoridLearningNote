.class Lcom/boohee/record/DietSportCalendarActivity$8;
.super Lcom/boohee/one/http/JsonCallback;
.source "DietSportCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/DietSportCalendarActivity;->getEatings()V
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
    .line 441
    iput-object p1, p0, Lcom/boohee/record/DietSportCalendarActivity$8;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 444
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 445
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/boohee/model/RecordFood;

    invoke-static {v2, v3}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 446
    .local v0, recordFoods:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/RecordFood;>;"
    const-string v2, "diet_photos"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/boohee/model/RecordPhoto;

    invoke-static {v2, v3}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 447
    .local v1, recordPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/RecordPhoto;>;"
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity$8;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #calls: Lcom/boohee/record/DietSportCalendarActivity;->initDietUI(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v2, v0, v1}, Lcom/boohee/record/DietSportCalendarActivity;->access$1200(Lcom/boohee/record/DietSportCalendarActivity;Ljava/util/List;Ljava/util/List;)V

    .line 448
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 452
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 453
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$8;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    invoke-virtual {v0}, Lcom/boohee/record/DietSportCalendarActivity;->dismissLoading()V

    .line 454
    return-void
.end method
