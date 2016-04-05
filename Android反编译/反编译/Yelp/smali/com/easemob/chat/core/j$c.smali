.class public Lcom/easemob/chat/core/j$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/core/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Lcom/easemob/chat/core/j$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/easemob/chat/core/j$c;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/easemob/chat/core/j$c;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/easemob/chat/core/j$c;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/easemob/chat/core/j$c;->d:Lcom/easemob/chat/core/j$b;

    return-void
.end method
