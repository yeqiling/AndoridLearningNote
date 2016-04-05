.class public Lcom/easemob/chat/core/p$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/core/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/chat/core/p$a$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Lcom/easemob/chat/core/p$a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/core/p$a;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/easemob/chat/core/p$a;->b:I

    sget-object v0, Lcom/easemob/chat/core/p$a$a;->a:Lcom/easemob/chat/core/p$a$a;

    iput-object v0, p0, Lcom/easemob/chat/core/p$a;->c:Lcom/easemob/chat/core/p$a$a;

    return-void
.end method
