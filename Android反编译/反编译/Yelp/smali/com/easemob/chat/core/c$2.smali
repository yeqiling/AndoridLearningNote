.class Lcom/easemob/chat/core/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/core/c;->a(Lcom/easemob/chat/EMMessage;Lcom/easemob/chat/core/c$a;)V
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

    iput-object p1, p0, Lcom/easemob/chat/core/c$2;->a:Lcom/easemob/chat/core/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "EMAdvanceDebugManager"

    const-string v1, "retrieve_dns"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/j;->l()Lcom/easemob/chat/core/j$a;

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/j;->i()Lcom/easemob/chat/core/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/j;->k()V

    iget-object v0, p0, Lcom/easemob/chat/core/c$2;->a:Lcom/easemob/chat/core/c;

    invoke-static {v0}, Lcom/easemob/chat/core/c;->a(Lcom/easemob/chat/core/c;)Lcom/easemob/chat/core/EMConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/c$2;->a:Lcom/easemob/chat/core/c;

    invoke-static {v0}, Lcom/easemob/chat/core/c;->a(Lcom/easemob/chat/core/c;)Lcom/easemob/chat/core/EMConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager;->onDnsConfigChanged()V

    :cond_0
    return-void
.end method
