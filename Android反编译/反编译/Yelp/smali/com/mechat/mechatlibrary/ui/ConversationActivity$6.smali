.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$6;
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
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$6;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 587
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$6;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->hindSoftKeyboard()V
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$67(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    .line 589
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$6;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionPanel:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$56(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/GridView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 591
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
