.class Lcom/boohee/one/easemob/ChatActivity$ListScrollListener;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/easemob/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/easemob/ChatActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/one/easemob/ChatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1576
    iput-object p1, p0, Lcom/boohee/one/easemob/ChatActivity$ListScrollListener;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/easemob/ChatActivity;Lcom/boohee/one/easemob/ChatActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1576
    invoke-direct {p0, p1}, Lcom/boohee/one/easemob/ChatActivity$ListScrollListener;-><init>(Lcom/boohee/one/easemob/ChatActivity;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1625
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1580
    .line 1620
    return-void
.end method
