.class Lcom/easemob/chat/core/c$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/core/c;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/easemob/chat/core/c;


# direct methods
.method constructor <init>(Lcom/easemob/chat/core/c;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/c$1;->a:Lcom/easemob/chat/core/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/core/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "action"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/easemob/chat/core/c$a;->valueOf(Ljava/lang/String;)Lcom/easemob/chat/core/c$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "EMAdvanceDebugManager"

    const-string v1, "unknow cmd action"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->CMD:Lcom/easemob/chat/EMMessage$Type;

    invoke-static {v1}, Lcom/easemob/chat/EMMessage;->createReceiveMessage(Lcom/easemob/chat/EMMessage$Type;)Lcom/easemob/chat/EMMessage;

    move-result-object v1

    const-string v2, "appkey"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "appkey"

    const-string v3, "appkey"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/easemob/chat/EMMessage;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v2, "im_server"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "im_server"

    const-string v3, "im_server"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/easemob/chat/EMMessage;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v2, "rest_server"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "rest_server"

    const-string v3, "rest_server"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/easemob/chat/EMMessage;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v2, "enable_dns"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "enable_dns"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/easemob/chat/EMMessage;->setAttribute(Ljava/lang/String;Z)V

    :cond_5
    iget-object v2, p0, Lcom/easemob/chat/core/c$1;->a:Lcom/easemob/chat/core/c;

    invoke-virtual {v2, v1, v0}, Lcom/easemob/chat/core/c;->a(Lcom/easemob/chat/EMMessage;Lcom/easemob/chat/core/c$a;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
