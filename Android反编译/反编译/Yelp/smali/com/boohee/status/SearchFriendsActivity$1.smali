.class Lcom/boohee/status/SearchFriendsActivity$1;
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
    .line 125
    iput-object p1, p0, Lcom/boohee/status/SearchFriendsActivity$1;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity$1;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->searchText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/boohee/status/SearchFriendsActivity;->access$000(Lcom/boohee/status/SearchFriendsActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method
