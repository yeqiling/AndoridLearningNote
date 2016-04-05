.class Lcom/boohee/record/CopyRecordActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "CopyRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/CopyRecordActivity;->getEatings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/CopyRecordActivity;


# direct methods
.method constructor <init>(Lcom/boohee/record/CopyRecordActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/boohee/record/CopyRecordActivity$1;->this$0:Lcom/boohee/record/CopyRecordActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 152
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$1;->this$0:Lcom/boohee/record/CopyRecordActivity;

    #calls: Lcom/boohee/record/CopyRecordActivity;->initDietData(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/record/CopyRecordActivity;->access$000(Lcom/boohee/record/CopyRecordActivity;Lorg/json/JSONObject;)V

    .line 153
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$1;->this$0:Lcom/boohee/record/CopyRecordActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/boohee/record/CopyRecordActivity$1;->this$0:Lcom/boohee/record/CopyRecordActivity;

    #getter for: Lcom/boohee/record/CopyRecordActivity;->breakfastList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/record/CopyRecordActivity;->access$100(Lcom/boohee/record/CopyRecordActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity$1;->this$0:Lcom/boohee/record/CopyRecordActivity;

    iget-object v3, v3, Lcom/boohee/record/CopyRecordActivity;->ll_card_breakfast:Landroid/widget/LinearLayout;

    #calls: Lcom/boohee/record/CopyRecordActivity;->initDietCardView(ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1, v2, v3}, Lcom/boohee/record/CopyRecordActivity;->access$200(Lcom/boohee/record/CopyRecordActivity;ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 154
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$1;->this$0:Lcom/boohee/record/CopyRecordActivity;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/boohee/record/CopyRecordActivity$1;->this$0:Lcom/boohee/record/CopyRecordActivity;

    #getter for: Lcom/boohee/record/CopyRecordActivity;->lunchList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/record/CopyRecordActivity;->access$300(Lcom/boohee/record/CopyRecordActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity$1;->this$0:Lcom/boohee/record/CopyRecordActivity;

    iget-object v3, v3, Lcom/boohee/record/CopyRecordActivity;->ll_card_lunch:Landroid/widget/LinearLayout;

    #calls: Lcom/boohee/record/CopyRecordActivity;->initDietCardView(ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1, v2, v3}, Lcom/boohee/record/CopyRecordActivity;->access$200(Lcom/boohee/record/CopyRecordActivity;ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 155
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$1;->this$0:Lcom/boohee/record/CopyRecordActivity;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/boohee/record/CopyRecordActivity$1;->this$0:Lcom/boohee/record/CopyRecordActivity;

    #getter for: Lcom/boohee/record/CopyRecordActivity;->dinnerList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/record/CopyRecordActivity;->access$400(Lcom/boohee/record/CopyRecordActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity$1;->this$0:Lcom/boohee/record/CopyRecordActivity;

    iget-object v3, v3, Lcom/boohee/record/CopyRecordActivity;->ll_card_dinner:Landroid/widget/LinearLayout;

    #calls: Lcom/boohee/record/CopyRecordActivity;->initDietCardView(ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1, v2, v3}, Lcom/boohee/record/CopyRecordActivity;->access$200(Lcom/boohee/record/CopyRecordActivity;ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 156
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$1;->this$0:Lcom/boohee/record/CopyRecordActivity;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/boohee/record/CopyRecordActivity$1;->this$0:Lcom/boohee/record/CopyRecordActivity;

    #getter for: Lcom/boohee/record/CopyRecordActivity;->snacksBreakfastList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/record/CopyRecordActivity;->access$500(Lcom/boohee/record/CopyRecordActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity$1;->this$0:Lcom/boohee/record/CopyRecordActivity;

    iget-object v3, v3, Lcom/boohee/record/CopyRecordActivity;->ll_card_snacks_breakfast:Landroid/widget/LinearLayout;

    #calls: Lcom/boohee/record/CopyRecordActivity;->initDietCardView(ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1, v2, v3}, Lcom/boohee/record/CopyRecordActivity;->access$200(Lcom/boohee/record/CopyRecordActivity;ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 157
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$1;->this$0:Lcom/boohee/record/CopyRecordActivity;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/boohee/record/CopyRecordActivity$1;->this$0:Lcom/boohee/record/CopyRecordActivity;

    #getter for: Lcom/boohee/record/CopyRecordActivity;->snacksLunchList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/record/CopyRecordActivity;->access$600(Lcom/boohee/record/CopyRecordActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity$1;->this$0:Lcom/boohee/record/CopyRecordActivity;

    iget-object v3, v3, Lcom/boohee/record/CopyRecordActivity;->ll_card_snacks_lunch:Landroid/widget/LinearLayout;

    #calls: Lcom/boohee/record/CopyRecordActivity;->initDietCardView(ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1, v2, v3}, Lcom/boohee/record/CopyRecordActivity;->access$200(Lcom/boohee/record/CopyRecordActivity;ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 158
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$1;->this$0:Lcom/boohee/record/CopyRecordActivity;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/boohee/record/CopyRecordActivity$1;->this$0:Lcom/boohee/record/CopyRecordActivity;

    #getter for: Lcom/boohee/record/CopyRecordActivity;->snacksDinnerList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/record/CopyRecordActivity;->access$700(Lcom/boohee/record/CopyRecordActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity$1;->this$0:Lcom/boohee/record/CopyRecordActivity;

    iget-object v3, v3, Lcom/boohee/record/CopyRecordActivity;->ll_card_snacks_dinner:Landroid/widget/LinearLayout;

    #calls: Lcom/boohee/record/CopyRecordActivity;->initDietCardView(ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1, v2, v3}, Lcom/boohee/record/CopyRecordActivity;->access$200(Lcom/boohee/record/CopyRecordActivity;ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 159
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 164
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$1;->this$0:Lcom/boohee/record/CopyRecordActivity;

    #calls: Lcom/boohee/record/CopyRecordActivity;->requestFinish()V
    invoke-static {v0}, Lcom/boohee/record/CopyRecordActivity;->access$800(Lcom/boohee/record/CopyRecordActivity;)V

    .line 165
    return-void
.end method
