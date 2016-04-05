.class Lcom/boohee/record/DietAndSportActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "DietAndSportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/DietAndSportActivity;->getEatings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/DietAndSportActivity;


# direct methods
.method constructor <init>(Lcom/boohee/record/DietAndSportActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 328
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "object"

    .prologue
    .line 316
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 317
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #calls: Lcom/boohee/record/DietAndSportActivity;->initDietData(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/record/DietAndSportActivity;->access$500(Lcom/boohee/record/DietAndSportActivity;Lorg/json/JSONObject;)V

    .line 318
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->breakfastList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/record/DietAndSportActivity;->access$600(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->breakfastPhotoList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/boohee/record/DietAndSportActivity;->access$700(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    iget-object v4, v4, Lcom/boohee/record/DietAndSportActivity;->ll_card_breakfast:Landroid/widget/LinearLayout;

    #calls: Lcom/boohee/record/DietAndSportActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/boohee/record/DietAndSportActivity;->access$800(Lcom/boohee/record/DietAndSportActivity;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 319
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->lunchList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/record/DietAndSportActivity;->access$900(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->lunchPhotoList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/boohee/record/DietAndSportActivity;->access$1000(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    iget-object v4, v4, Lcom/boohee/record/DietAndSportActivity;->ll_card_lunch:Landroid/widget/LinearLayout;

    #calls: Lcom/boohee/record/DietAndSportActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/boohee/record/DietAndSportActivity;->access$800(Lcom/boohee/record/DietAndSportActivity;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 320
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->dinnerList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/record/DietAndSportActivity;->access$1100(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->dinnerPhotoList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/boohee/record/DietAndSportActivity;->access$1200(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    iget-object v4, v4, Lcom/boohee/record/DietAndSportActivity;->ll_card_dinner:Landroid/widget/LinearLayout;

    #calls: Lcom/boohee/record/DietAndSportActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/boohee/record/DietAndSportActivity;->access$800(Lcom/boohee/record/DietAndSportActivity;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 321
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/record/DietAndSportActivity;->access$1300(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/boohee/record/DietAndSportActivity;->access$1400(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    iget-object v4, v4, Lcom/boohee/record/DietAndSportActivity;->ll_card_snacks_breakfast:Landroid/widget/LinearLayout;

    #calls: Lcom/boohee/record/DietAndSportActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/boohee/record/DietAndSportActivity;->access$800(Lcom/boohee/record/DietAndSportActivity;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 322
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->snacksLunchList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/record/DietAndSportActivity;->access$1500(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/boohee/record/DietAndSportActivity;->access$1600(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    iget-object v4, v4, Lcom/boohee/record/DietAndSportActivity;->ll_card_snacks_lunch:Landroid/widget/LinearLayout;

    #calls: Lcom/boohee/record/DietAndSportActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/boohee/record/DietAndSportActivity;->access$800(Lcom/boohee/record/DietAndSportActivity;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 323
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->snacksDinnerList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/record/DietAndSportActivity;->access$1700(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/boohee/record/DietAndSportActivity;->access$1800(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    iget-object v4, v4, Lcom/boohee/record/DietAndSportActivity;->ll_card_snacks_dinner:Landroid/widget/LinearLayout;

    #calls: Lcom/boohee/record/DietAndSportActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/boohee/record/DietAndSportActivity;->access$800(Lcom/boohee/record/DietAndSportActivity;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 324
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 332
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 333
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$1;->this$0:Lcom/boohee/record/DietAndSportActivity;

    invoke-virtual {v0}, Lcom/boohee/record/DietAndSportActivity;->dismissLoading()V

    .line 334
    return-void
.end method
