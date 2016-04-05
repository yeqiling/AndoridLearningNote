.class Lcom/boohee/status/SearchFriendsActivity$2;
.super Ljava/lang/Object;
.source "SearchFriendsActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 132
    iput-object p1, p0, Lcom/boohee/status/SearchFriendsActivity$2;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity$2;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/status/SearchFriendsActivity;->access$100(Lcom/boohee/status/SearchFriendsActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/SearchFriendsActivity$2;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->searchText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/boohee/status/SearchFriendsActivity;->access$000(Lcom/boohee/status/SearchFriendsActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/Keyboard;->close(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 137
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity$2;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #calls: Lcom/boohee/status/SearchFriendsActivity;->searchRemote()V
    invoke-static {v0}, Lcom/boohee/status/SearchFriendsActivity;->access$200(Lcom/boohee/status/SearchFriendsActivity;)V

    .line 138
    const/4 v0, 0x0

    return v0
.end method
