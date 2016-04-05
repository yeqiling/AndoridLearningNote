.class Lcom/boohee/record/CopyRecordActivity$8;
.super Lcom/boohee/one/http/JsonCallback;
.source "CopyRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/CopyRecordActivity;->copyActivity()V
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
    .line 649
    iput-object p1, p0, Lcom/boohee/record/CopyRecordActivity$8;->this$0:Lcom/boohee/record/CopyRecordActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 658
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->fail(Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$8;->this$0:Lcom/boohee/record/CopyRecordActivity;

    invoke-virtual {v0}, Lcom/boohee/record/CopyRecordActivity;->dismissLoading()V

    .line 660
    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8fd0\u52a8\u590d\u5236\u5931\u8d25"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 661
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 652
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 653
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$8;->this$0:Lcom/boohee/record/CopyRecordActivity;

    #calls: Lcom/boohee/record/CopyRecordActivity;->copySuccess()V
    invoke-static {v0}, Lcom/boohee/record/CopyRecordActivity;->access$1500(Lcom/boohee/record/CopyRecordActivity;)V

    .line 654
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 665
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 666
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$8;->this$0:Lcom/boohee/record/CopyRecordActivity;

    #getter for: Lcom/boohee/record/CopyRecordActivity;->copyFlag:I
    invoke-static {v0}, Lcom/boohee/record/CopyRecordActivity;->access$1600(Lcom/boohee/record/CopyRecordActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 667
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$8;->this$0:Lcom/boohee/record/CopyRecordActivity;

    invoke-virtual {v0}, Lcom/boohee/record/CopyRecordActivity;->dismissLoading()V

    .line 668
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$8;->this$0:Lcom/boohee/record/CopyRecordActivity;

    #getter for: Lcom/boohee/record/CopyRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/record/CopyRecordActivity;->access$1700(Lcom/boohee/record/CopyRecordActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    const-string v1, "tool_foodandsport_copydone"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 670
    :cond_0
    return-void
.end method
