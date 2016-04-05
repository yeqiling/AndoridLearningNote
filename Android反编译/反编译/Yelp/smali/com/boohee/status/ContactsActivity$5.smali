.class Lcom/boohee/status/ContactsActivity$5;
.super Ljava/lang/Object;
.source "ContactsActivity.java"

# interfaces
.implements Lcom/boohee/widgets/SearchBarView$OnFinishSearchListener;


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
    .line 121
    iput-object p1, p0, Lcom/boohee/status/ContactsActivity$5;->this$0:Lcom/boohee/status/ContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishSearch()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$5;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mUsers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/status/ContactsActivity;->access$400(Lcom/boohee/status/ContactsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$5;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mUsers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/status/ContactsActivity;->access$400(Lcom/boohee/status/ContactsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 127
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$5;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mUsers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/status/ContactsActivity;->access$400(Lcom/boohee/status/ContactsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/ContactsActivity$5;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->temps:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/status/ContactsActivity;->access$500(Lcom/boohee/status/ContactsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$5;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mAdapter:Lcom/boohee/status/ContactsActivity$ContactsAdapter;
    invoke-static {v0}, Lcom/boohee/status/ContactsActivity;->access$000(Lcom/boohee/status/ContactsActivity;)Lcom/boohee/status/ContactsActivity$ContactsAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$5;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mAdapter:Lcom/boohee/status/ContactsActivity$ContactsAdapter;
    invoke-static {v0}, Lcom/boohee/status/ContactsActivity;->access$000(Lcom/boohee/status/ContactsActivity;)Lcom/boohee/status/ContactsActivity$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->notifyDataSetChanged()V

    .line 131
    :cond_1
    return-void
.end method
