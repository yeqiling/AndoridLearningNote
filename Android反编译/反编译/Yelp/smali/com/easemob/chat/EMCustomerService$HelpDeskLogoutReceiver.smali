.class public Lcom/easemob/chat/EMCustomerService$HelpDeskLogoutReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMCustomerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HelpDeskLogoutReceiver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpDeskLogoutReceiver"


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMCustomerService;


# direct methods
.method public constructor <init>(Lcom/easemob/chat/EMCustomerService;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMCustomerService$HelpDeskLogoutReceiver;->this$0:Lcom/easemob/chat/EMCustomerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "HelpDeskLogoutReceiver"

    const-string v1, "HelpDesk logout receiver received message"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMCustomerService$HelpDeskLogoutReceiver;->this$0:Lcom/easemob/chat/EMCustomerService;

    #calls: Lcom/easemob/chat/EMCustomerService;->forceLogout()V
    invoke-static {v0}, Lcom/easemob/chat/EMCustomerService;->access$0(Lcom/easemob/chat/EMCustomerService;)V

    return-void
.end method
