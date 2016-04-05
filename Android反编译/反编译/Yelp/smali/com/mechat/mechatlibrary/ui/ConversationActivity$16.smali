.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$16;
.super Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$16;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    .line 1479
    invoke-direct {p0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 2
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"
    .parameter "error"

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$16;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    const/4 v1, 0x1

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isInputtingFinish:Z
    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$80(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    .line 1494
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 3
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$16;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    const/4 v1, 0x1

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isInputtingFinish:Z
    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$80(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    .line 1484
    const-string v0, "ConversationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " inputting finish preCleanInputting = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$16;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->preCleanInputting:Z
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$81(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$16;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->preCleanInputting:Z
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$81(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1486
    const-string v0, "ConversationActivity"

    const-string v1, " cleanInputting"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$16;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->cleanInputting()V
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$82(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    .line 1489
    :cond_0
    return-void
.end method
