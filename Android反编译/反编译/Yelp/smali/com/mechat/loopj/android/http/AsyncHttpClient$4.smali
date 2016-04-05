.class Lcom/mechat/loopj/android/http/AsyncHttpClient$4;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/loopj/android/http/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/loopj/android/http/AsyncHttpClient;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$mayInterruptIfRunning:Z


# direct methods
.method constructor <init>(Lcom/mechat/loopj/android/http/AsyncHttpClient;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$4;->this$0:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$4;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$4;->val$mayInterruptIfRunning:Z

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 648
    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$4;->this$0:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    #getter for: Lcom/mechat/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->access$1(Lcom/mechat/loopj/android/http/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$4;->val$context:Landroid/content/Context;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 649
    .local v1, requestList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/loopj/android/http/RequestHandle;>;"
    if-eqz v1, :cond_0

    .line 650
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 653
    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$4;->this$0:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    #getter for: Lcom/mechat/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->access$1(Lcom/mechat/loopj/android/http/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$4;->val$context:Landroid/content/Context;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    :cond_0
    return-void

    .line 650
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mechat/loopj/android/http/RequestHandle;

    .line 651
    .local v0, requestHandle:Lcom/mechat/loopj/android/http/RequestHandle;
    iget-boolean v3, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$4;->val$mayInterruptIfRunning:Z

    invoke-virtual {v0, v3}, Lcom/mechat/loopj/android/http/RequestHandle;->cancel(Z)Z

    goto :goto_0
.end method
