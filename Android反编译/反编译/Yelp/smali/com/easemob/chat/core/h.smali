.class Lcom/easemob/chat/core/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/chat/core/m;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/easemob/chat/core/j$c;
    .locals 2

    new-instance v1, Lcom/easemob/chat/core/j$c;

    invoke-direct {v1}, Lcom/easemob/chat/core/j$c;-><init>()V

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/easemob/chat/core/j$c;->a:Ljava/lang/String;

    const/16 v0, 0x50

    iput v0, v1, Lcom/easemob/chat/core/j$c;->b:I

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https"

    :goto_0
    iput-object v0, v1, Lcom/easemob/chat/core/j$c;->c:Ljava/lang/String;

    return-object v1

    :cond_0
    const-string v0, "http"

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/core/j$b;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/j;->i()Lcom/easemob/chat/core/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/easemob/chat/core/j$a;->e:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->t()Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMChatConfig$EMEnvMode;->EMProductMode:Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
