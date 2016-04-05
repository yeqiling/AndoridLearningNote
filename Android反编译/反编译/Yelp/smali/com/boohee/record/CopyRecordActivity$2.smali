.class Lcom/boohee/record/CopyRecordActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "CopyRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/CopyRecordActivity;->getActivities()V
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
    .line 175
    iput-object p1, p0, Lcom/boohee/record/CopyRecordActivity$2;->this$0:Lcom/boohee/record/CopyRecordActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 179
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$2;->this$0:Lcom/boohee/record/CopyRecordActivity;

    #calls: Lcom/boohee/record/CopyRecordActivity;->initSportData(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/record/CopyRecordActivity;->access$900(Lcom/boohee/record/CopyRecordActivity;Lorg/json/JSONObject;)V

    .line 180
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$2;->this$0:Lcom/boohee/record/CopyRecordActivity;

    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity$2;->this$0:Lcom/boohee/record/CopyRecordActivity;

    #getter for: Lcom/boohee/record/CopyRecordActivity;->sportList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/record/CopyRecordActivity;->access$1000(Lcom/boohee/record/CopyRecordActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/record/CopyRecordActivity$2;->this$0:Lcom/boohee/record/CopyRecordActivity;

    iget-object v2, v2, Lcom/boohee/record/CopyRecordActivity;->ll_card_sport:Landroid/widget/LinearLayout;

    #calls: Lcom/boohee/record/CopyRecordActivity;->initSportCardView(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1, v2}, Lcom/boohee/record/CopyRecordActivity;->access$1100(Lcom/boohee/record/CopyRecordActivity;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 181
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 186
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$2;->this$0:Lcom/boohee/record/CopyRecordActivity;

    #calls: Lcom/boohee/record/CopyRecordActivity;->requestFinish()V
    invoke-static {v0}, Lcom/boohee/record/CopyRecordActivity;->access$800(Lcom/boohee/record/CopyRecordActivity;)V

    .line 187
    return-void
.end method
