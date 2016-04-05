.class Lcom/boohee/status/NotificationActivity$2;
.super Ljava/lang/Object;
.source "NotificationActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/NotificationActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/NotificationActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/NotificationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/boohee/status/NotificationActivity$2;->this$0:Lcom/boohee/status/NotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastItemVisible()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/boohee/status/NotificationActivity$2;->this$0:Lcom/boohee/status/NotificationActivity;

    #calls: Lcom/boohee/status/NotificationActivity;->getPreviousNotifications()V
    invoke-static {v0}, Lcom/boohee/status/NotificationActivity;->access$100(Lcom/boohee/status/NotificationActivity;)V

    .line 88
    return-void
.end method
