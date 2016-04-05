.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$7;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$7;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 599
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$7;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$4(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mechat/mechatlibrary/bean/MCMessage;

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, content:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 601
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$7;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 602
    .local v1, mClipboard:Landroid/text/ClipboardManager;
    invoke-virtual {v1, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$7;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$7;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    invoke-static {v3}, Lcom/mechat/mechatlibrary/utils/MResource;->getCopySucString(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 605
    .end local v1           #mClipboard:Landroid/text/ClipboardManager;
    :cond_0
    return v4
.end method
