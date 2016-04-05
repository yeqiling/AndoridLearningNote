.class Lcom/easemob/chat/core/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/EMCallBack;


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

    iput-object p1, p0, Lcom/easemob/chat/core/c$3;->a:Lcom/easemob/chat/core/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    const-string v0, "EMAdvanceDebugManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload log fail, error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "EMAdvanceDebugManager"

    const-string v1, "upload log success"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
