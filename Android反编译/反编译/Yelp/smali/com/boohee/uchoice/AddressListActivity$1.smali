.class Lcom/boohee/uchoice/AddressListActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "AddressListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/AddressListActivity;->getRegions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/uchoice/AddressListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/uchoice/AddressListActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/boohee/uchoice/AddressListActivity$1;->this$0:Lcom/boohee/uchoice/AddressListActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "object"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 108
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 109
    const-string v2, "timestamp"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, timestamp:Ljava/lang/String;
    sget-object v2, Lcom/boohee/uchoice/AddressListActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u670d\u52a1\u5668\u65f6\u95f4\u6233:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-array v2, v6, [Ljava/lang/CharSequence;

    aput-object v1, v2, v5

    invoke-static {v2}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/boohee/uchoice/AddressListActivity$1;->this$0:Lcom/boohee/uchoice/AddressListActivity;

    #getter for: Lcom/boohee/uchoice/AddressListActivity;->timestampString:Ljava/lang/String;
    invoke-static {v2}, Lcom/boohee/uchoice/AddressListActivity;->access$000(Lcom/boohee/uchoice/AddressListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    instance-of v2, p1, Lorg/json/JSONObject;

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .end local p1
    .local v0, data:Ljava/lang/String;
    :goto_0
    new-array v2, v6, [Ljava/lang/CharSequence;

    aput-object v0, v2, v5

    invoke-static {v2}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    sget-object v2, Lcom/boohee/uchoice/AddressListActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4fdd\u5b58\u5730\u533a\u6570\u636e\u5230\u672c\u5730:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v2, Lcom/boohee/utility/App;->FILE_PATH:Ljava/lang/String;

    const-string v3, "regions.json"

    invoke-static {v0, v2, v3}, Lcom/boohee/utils/FileUtil;->saveStrToAPP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v0           #data:Ljava/lang/String;
    :cond_0
    return-void

    .line 112
    .restart local p1
    :cond_1
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
