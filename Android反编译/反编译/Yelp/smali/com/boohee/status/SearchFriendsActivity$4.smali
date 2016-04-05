.class Lcom/boohee/status/SearchFriendsActivity$4;
.super Ljava/lang/Object;
.source "SearchFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/SearchFriendsActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/SearchFriendsActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/SearchFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/boohee/status/SearchFriendsActivity$4;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity$4;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->isSearchListVisible:Z
    invoke-static {v0}, Lcom/boohee/status/SearchFriendsActivity;->access$400(Lcom/boohee/status/SearchFriendsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity$4;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/boohee/status/SearchFriendsActivity;->access$500(Lcom/boohee/status/SearchFriendsActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity$4;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->mainLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/boohee/status/SearchFriendsActivity;->access$600(Lcom/boohee/status/SearchFriendsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity$4;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->txt_search:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/status/SearchFriendsActivity;->access$700(Lcom/boohee/status/SearchFriendsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070493

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 170
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity$4;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #setter for: Lcom/boohee/status/SearchFriendsActivity;->isSearchListVisible:Z
    invoke-static {v0, v2}, Lcom/boohee/status/SearchFriendsActivity;->access$402(Lcom/boohee/status/SearchFriendsActivity;Z)Z

    .line 171
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity$4;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->searchText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/boohee/status/SearchFriendsActivity;->access$000(Lcom/boohee/status/SearchFriendsActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity$4;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/status/SearchFriendsActivity;->access$800(Lcom/boohee/status/SearchFriendsActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/SearchFriendsActivity$4;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->searchText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/boohee/status/SearchFriendsActivity;->access$000(Lcom/boohee/status/SearchFriendsActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/Keyboard;->close(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 174
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity$4;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #calls: Lcom/boohee/status/SearchFriendsActivity;->searchRemote()V
    invoke-static {v0}, Lcom/boohee/status/SearchFriendsActivity;->access$200(Lcom/boohee/status/SearchFriendsActivity;)V

    goto :goto_0
.end method
