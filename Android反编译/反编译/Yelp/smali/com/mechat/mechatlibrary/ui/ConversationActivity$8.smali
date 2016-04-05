.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$8;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$8;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "arg0"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$8;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$4(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$8;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 619
    if-nez p2, :cond_0

    .line 620
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$8;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->loadMoreData()V
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$68(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    .line 623
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 614
    return-void
.end method
