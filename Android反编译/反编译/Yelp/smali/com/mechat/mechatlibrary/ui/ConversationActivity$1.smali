.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$1;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity;
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
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$1;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    .line 1430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1459
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1454
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1436
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1437
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$1;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->preClearInputting()V
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$0(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    .line 1438
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$1;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    const/4 v2, 0x0

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeInputState(I)V
    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$1(Lcom/mechat/mechatlibrary/ui/ConversationActivity;I)V

    .line 1449
    :goto_0
    return-void

    .line 1440
    :cond_0
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$1;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputting()V
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$2(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    .line 1441
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$1;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    const/4 v2, 0x2

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeInputState(I)V
    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$1(Lcom/mechat/mechatlibrary/ui/ConversationActivity;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1443
    :catch_0
    move-exception v0

    .line 1444
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 1445
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 1446
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
