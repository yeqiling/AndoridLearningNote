.class Lcom/boohee/status/ContactsActivity$3;
.super Ljava/lang/Object;
.source "ContactsActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;


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
    .line 104
    iput-object p1, p0, Lcom/boohee/status/ContactsActivity$3;->this$0:Lcom/boohee/status/ContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastItemVisible()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$3;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->isLastVisible:Z
    invoke-static {v0}, Lcom/boohee/status/ContactsActivity;->access$200(Lcom/boohee/status/ContactsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$3;->this$0:Lcom/boohee/status/ContactsActivity;

    invoke-virtual {v0}, Lcom/boohee/status/ContactsActivity;->getNextFriends()V

    .line 110
    :cond_0
    return-void
.end method
