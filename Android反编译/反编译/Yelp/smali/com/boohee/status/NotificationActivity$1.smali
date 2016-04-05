.class Lcom/boohee/status/NotificationActivity$1;
.super Ljava/lang/Object;
.source "NotificationActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/NotificationActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/NotificationActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/NotificationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/boohee/status/NotificationActivity$1;->this$0:Lcom/boohee/status/NotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, refreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;,"Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/boohee/status/NotificationActivity$1;->this$0:Lcom/boohee/status/NotificationActivity;

    #calls: Lcom/boohee/status/NotificationActivity;->getNotifications()V
    invoke-static {v0}, Lcom/boohee/status/NotificationActivity;->access$000(Lcom/boohee/status/NotificationActivity;)V

    .line 81
    return-void
.end method
