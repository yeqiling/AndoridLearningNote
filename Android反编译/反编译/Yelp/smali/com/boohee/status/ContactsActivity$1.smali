.class Lcom/boohee/status/ContactsActivity$1;
.super Ljava/lang/Object;
.source "ContactsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/ContactsActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/ContactsActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/ContactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/boohee/status/ContactsActivity$1;->this$0:Lcom/boohee/status/ContactsActivity;

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
    .line 92
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$1;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mAdapter:Lcom/boohee/status/ContactsActivity$ContactsAdapter;
    invoke-static {v0}, Lcom/boohee/status/ContactsActivity;->access$000(Lcom/boohee/status/ContactsActivity;)Lcom/boohee/status/ContactsActivity$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->getSelectedList()Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$1;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mAdapter:Lcom/boohee/status/ContactsActivity$ContactsAdapter;
    invoke-static {v0}, Lcom/boohee/status/ContactsActivity;->access$000(Lcom/boohee/status/ContactsActivity;)Lcom/boohee/status/ContactsActivity$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->getSelectedList()Landroid/util/SparseArray;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$1;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mAdapter:Lcom/boohee/status/ContactsActivity$ContactsAdapter;
    invoke-static {v0}, Lcom/boohee/status/ContactsActivity;->access$000(Lcom/boohee/status/ContactsActivity;)Lcom/boohee/status/ContactsActivity$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->getSelectedList()Landroid/util/SparseArray;

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$1;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mAdapter:Lcom/boohee/status/ContactsActivity$ContactsAdapter;
    invoke-static {v0}, Lcom/boohee/status/ContactsActivity;->access$000(Lcom/boohee/status/ContactsActivity;)Lcom/boohee/status/ContactsActivity$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->getSelectedList()Landroid/util/SparseArray;

    move-result-object v0

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$1;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mAdapter:Lcom/boohee/status/ContactsActivity$ContactsAdapter;
    invoke-static {v0}, Lcom/boohee/status/ContactsActivity;->access$000(Lcom/boohee/status/ContactsActivity;)Lcom/boohee/status/ContactsActivity$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->notifyDataSetChanged()V

    .line 96
    :cond_0
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
