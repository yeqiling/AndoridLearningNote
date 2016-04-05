.class Lcom/boohee/status/ReportActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "ReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/ReportActivity;->sendReport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/ReportActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/ReportActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/boohee/status/ReportActivity$2;->this$0:Lcom/boohee/status/ReportActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 110
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "\u4e3e\u62a5\u6210\u529f"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/boohee/status/ReportActivity$2;->this$0:Lcom/boohee/status/ReportActivity;

    invoke-virtual {v0}, Lcom/boohee/status/ReportActivity;->finish()V

    .line 114
    :cond_0
    return-void
.end method
