.class Lcom/boohee/record/HistoryRecordActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "HistoryRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/HistoryRecordActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/HistoryRecordActivity;


# direct methods
.method constructor <init>(Lcom/boohee/record/HistoryRecordActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/boohee/record/HistoryRecordActivity$1;->this$0:Lcom/boohee/record/HistoryRecordActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 78
    iget-object v0, p0, Lcom/boohee/record/HistoryRecordActivity$1;->this$0:Lcom/boohee/record/HistoryRecordActivity;

    #calls: Lcom/boohee/record/HistoryRecordActivity;->refreshData(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/record/HistoryRecordActivity;->access$000(Lcom/boohee/record/HistoryRecordActivity;Lorg/json/JSONObject;)V

    .line 79
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 84
    iget-object v0, p0, Lcom/boohee/record/HistoryRecordActivity$1;->this$0:Lcom/boohee/record/HistoryRecordActivity;

    invoke-virtual {v0}, Lcom/boohee/record/HistoryRecordActivity;->dismissLoading()V

    .line 85
    return-void
.end method
