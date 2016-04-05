.class Lcom/boohee/status/MsgCategoryActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "MsgCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/MsgCategoryActivity;->allReaded()V
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
    .line 170
    iput-object p1, p0, Lcom/boohee/status/MsgCategoryActivity$3;->this$0:Lcom/boohee/status/MsgCategoryActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 174
    iget-object v2, p0, Lcom/boohee/status/MsgCategoryActivity$3;->this$0:Lcom/boohee/status/MsgCategoryActivity;

    #getter for: Lcom/boohee/status/MsgCategoryActivity;->mCategories:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/status/MsgCategoryActivity;->access$000(Lcom/boohee/status/MsgCategoryActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/MsgCategory;

    .line 175
    .local v0, category:Lcom/boohee/model/MsgCategory;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/boohee/model/MsgCategory;->setCount(I)V

    goto :goto_0

    .line 177
    .end local v0           #category:Lcom/boohee/model/MsgCategory;
    :cond_0
    iget-object v2, p0, Lcom/boohee/status/MsgCategoryActivity$3;->this$0:Lcom/boohee/status/MsgCategoryActivity;

    #getter for: Lcom/boohee/status/MsgCategoryActivity;->mAdapter:Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;
    invoke-static {v2}, Lcom/boohee/status/MsgCategoryActivity;->access$100(Lcom/boohee/status/MsgCategoryActivity;)Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;->notifyDataSetChanged()V

    .line 178
    const-string v2, "\u7f6e\u4e3a\u5168\u90e8\u5df2\u8bfb\u6210\u529f"

    invoke-static {v2}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method
