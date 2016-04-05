.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$3;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity;->setListeners()V
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
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$3;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$3;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionPanel:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$56(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/GridView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$3;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$57(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$3;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$57(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$3;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$57(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 501
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
