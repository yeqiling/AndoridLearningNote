.class Lcom/boohee/status/SearchFriendsActivity$7;
.super Ljava/lang/Object;
.source "SearchFriendsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 194
    iput-object p1, p0, Lcom/boohee/status/SearchFriendsActivity$7;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v1, Lcom/boohee/utility/BuilderIntent;

    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity$7;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/status/SearchFriendsActivity;->access$1200(Lcom/boohee/status/SearchFriendsActivity;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/boohee/status/UserTimelineActivity;

    invoke-direct {v1, v0, v2}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "nickname"

    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity$7;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->mSearchUsers:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/status/SearchFriendsActivity;->access$1100(Lcom/boohee/status/SearchFriendsActivity;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v3, p3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/status/StatusUser;

    iget-object v0, v0, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/boohee/utility/BuilderIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/utility/BuilderIntent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    .line 199
    return-void
.end method
