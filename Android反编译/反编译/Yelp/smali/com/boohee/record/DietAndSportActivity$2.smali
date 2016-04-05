.class Lcom/boohee/record/DietAndSportActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "DietAndSportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/DietAndSportActivity;->getActivities()V
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
    .line 344
    iput-object p1, p0, Lcom/boohee/record/DietAndSportActivity$2;->this$0:Lcom/boohee/record/DietAndSportActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 354
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 347
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 348
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$2;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #calls: Lcom/boohee/record/DietAndSportActivity;->initSportData(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/record/DietAndSportActivity;->access$1900(Lcom/boohee/record/DietAndSportActivity;Lorg/json/JSONObject;)V

    .line 349
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$2;->this$0:Lcom/boohee/record/DietAndSportActivity;

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity$2;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->sportList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/record/DietAndSportActivity;->access$2000(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity$2;->this$0:Lcom/boohee/record/DietAndSportActivity;

    iget-object v2, v2, Lcom/boohee/record/DietAndSportActivity;->ll_card_sport:Landroid/widget/LinearLayout;

    #calls: Lcom/boohee/record/DietAndSportActivity;->initSportCardView(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1, v2}, Lcom/boohee/record/DietAndSportActivity;->access$2100(Lcom/boohee/record/DietAndSportActivity;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 350
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 358
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 359
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$2;->this$0:Lcom/boohee/record/DietAndSportActivity;

    invoke-virtual {v0}, Lcom/boohee/record/DietAndSportActivity;->dismissLoading()V

    .line 360
    return-void
.end method
