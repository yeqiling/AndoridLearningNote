.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$4;
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
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$4;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "arg0"
    .parameter "event"

    .prologue
    const/16 v2, 0xb2

    const/16 v1, 0x59

    .line 510
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 518
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 512
    :pswitch_0
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$4;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$58(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 515
    :pswitch_1
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$4;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$58(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
