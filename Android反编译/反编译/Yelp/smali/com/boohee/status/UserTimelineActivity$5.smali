.class Lcom/boohee/status/UserTimelineActivity$5;
.super Lcom/boohee/one/http/JsonCallback;
.source "UserTimelineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/UserTimelineActivity;->getPreviousStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/UserTimelineActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/UserTimelineActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/boohee/status/UserTimelineActivity$5;->this$0:Lcom/boohee/status/UserTimelineActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 182
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity$5;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #calls: Lcom/boohee/status/UserTimelineActivity;->refreshPreviousData(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/status/UserTimelineActivity;->access$500(Lcom/boohee/status/UserTimelineActivity;Lorg/json/JSONObject;)V

    .line 183
    return-void
.end method
