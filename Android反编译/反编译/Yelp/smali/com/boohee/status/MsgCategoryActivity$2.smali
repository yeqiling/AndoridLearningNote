.class Lcom/boohee/status/MsgCategoryActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "MsgCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/MsgCategoryActivity;->getApnUnread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/MsgCategoryActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/MsgCategoryActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/boohee/status/MsgCategoryActivity$2;->this$0:Lcom/boohee/status/MsgCategoryActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 140
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 133
    const-string v1, "count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 134
    .local v0, count:I
    iget-object v1, p0, Lcom/boohee/status/MsgCategoryActivity$2;->this$0:Lcom/boohee/status/MsgCategoryActivity;

    #getter for: Lcom/boohee/status/MsgCategoryActivity;->mCategories:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/status/MsgCategoryActivity;->access$000(Lcom/boohee/status/MsgCategoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/MsgCategory;

    invoke-virtual {v1, v0}, Lcom/boohee/model/MsgCategory;->setCount(I)V

    .line 135
    iget-object v1, p0, Lcom/boohee/status/MsgCategoryActivity$2;->this$0:Lcom/boohee/status/MsgCategoryActivity;

    #getter for: Lcom/boohee/status/MsgCategoryActivity;->mAdapter:Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;
    invoke-static {v1}, Lcom/boohee/status/MsgCategoryActivity;->access$100(Lcom/boohee/status/MsgCategoryActivity;)Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;->notifyDataSetChanged()V

    .line 136
    return-void
.end method
