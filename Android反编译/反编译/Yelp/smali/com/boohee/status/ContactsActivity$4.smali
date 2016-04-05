.class Lcom/boohee/status/ContactsActivity$4;
.super Ljava/lang/Object;
.source "ContactsActivity.java"

# interfaces
.implements Lcom/boohee/widgets/SearchBarView$OnSearchListener;


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
    .line 114
    iput-object p1, p0, Lcom/boohee/status/ContactsActivity$4;->this$0:Lcom/boohee/status/ContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startSearch(Ljava/lang/String;)V
    .locals 1
    .parameter "q"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$4;->this$0:Lcom/boohee/status/ContactsActivity;

    #calls: Lcom/boohee/status/ContactsActivity;->searchFollowings(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/boohee/status/ContactsActivity;->access$300(Lcom/boohee/status/ContactsActivity;Ljava/lang/String;)V

    .line 119
    return-void
.end method
