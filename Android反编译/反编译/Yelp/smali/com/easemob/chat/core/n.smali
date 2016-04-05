.class Lcom/easemob/chat/core/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/chat/core/g;


# static fields
.field private static final a:Ljava/lang/String; = "EMHostResolverStrategy"


# instance fields
.field private b:Lcom/easemob/chat/core/l;

.field private c:Lcom/easemob/chat/core/l;

.field private d:Lcom/easemob/chat/core/l;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/core/n;->b:Lcom/easemob/chat/core/l;

    iput-object v0, p0, Lcom/easemob/chat/core/n;->c:Lcom/easemob/chat/core/l;

    iput-object v0, p0, Lcom/easemob/chat/core/n;->d:Lcom/easemob/chat/core/l;

    new-instance v0, Lcom/easemob/chat/core/l;

    invoke-direct {v0}, Lcom/easemob/chat/core/l;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/core/n;->b:Lcom/easemob/chat/core/l;

    iget-object v0, p0, Lcom/easemob/chat/core/n;->b:Lcom/easemob/chat/core/l;

    new-instance v1, Lcom/easemob/chat/core/o;

    invoke-direct {v1}, Lcom/easemob/chat/core/o;-><init>()V

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/l;->a(Lcom/easemob/chat/core/m;)V

    iget-object v0, p0, Lcom/easemob/chat/core/n;->b:Lcom/easemob/chat/core/l;

    invoke-virtual {v0, p0}, Lcom/easemob/chat/core/l;->a(Lcom/easemob/chat/core/g;)V

    new-instance v0, Lcom/easemob/chat/core/l;

    invoke-direct {v0}, Lcom/easemob/chat/core/l;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/core/n;->c:Lcom/easemob/chat/core/l;

    iget-object v0, p0, Lcom/easemob/chat/core/n;->c:Lcom/easemob/chat/core/l;

    new-instance v1, Lcom/easemob/chat/core/w;

    invoke-direct {v1}, Lcom/easemob/chat/core/w;-><init>()V

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/l;->a(Lcom/easemob/chat/core/m;)V

    iget-object v0, p0, Lcom/easemob/chat/core/n;->c:Lcom/easemob/chat/core/l;

    invoke-virtual {v0, p0}, Lcom/easemob/chat/core/l;->a(Lcom/easemob/chat/core/g;)V

    new-instance v0, Lcom/easemob/chat/core/l;

    invoke-direct {v0}, Lcom/easemob/chat/core/l;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/core/n;->d:Lcom/easemob/chat/core/l;

    iget-object v0, p0, Lcom/easemob/chat/core/n;->d:Lcom/easemob/chat/core/l;

    new-instance v1, Lcom/easemob/chat/core/h;

    invoke-direct {v1}, Lcom/easemob/chat/core/h;-><init>()V

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/l;->a(Lcom/easemob/chat/core/m;)V

    iget-object v0, p0, Lcom/easemob/chat/core/n;->d:Lcom/easemob/chat/core/l;

    invoke-virtual {v0, p0}, Lcom/easemob/chat/core/l;->a(Lcom/easemob/chat/core/g;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/n;->b:Lcom/easemob/chat/core/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/n;->b:Lcom/easemob/chat/core/l;

    invoke-virtual {v0}, Lcom/easemob/chat/core/l;->a()V

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/core/n;->c:Lcom/easemob/chat/core/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/core/n;->c:Lcom/easemob/chat/core/l;

    invoke-virtual {v0}, Lcom/easemob/chat/core/l;->a()V

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/core/n;->d:Lcom/easemob/chat/core/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/core/n;->d:Lcom/easemob/chat/core/l;

    invoke-virtual {v0}, Lcom/easemob/chat/core/l;->a()V

    :cond_2
    return-void
.end method

.method public b()Lcom/easemob/chat/core/j$c;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/n;->b:Lcom/easemob/chat/core/l;

    invoke-virtual {v0}, Lcom/easemob/chat/core/l;->b()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/easemob/chat/core/j$c;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/n;->c:Lcom/easemob/chat/core/l;

    invoke-virtual {v0}, Lcom/easemob/chat/core/l;->b()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/easemob/chat/core/j$c;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/n;->d:Lcom/easemob/chat/core/l;

    invoke-virtual {v0}, Lcom/easemob/chat/core/l;->b()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/n;->b:Lcom/easemob/chat/core/l;

    invoke-virtual {v0}, Lcom/easemob/chat/core/l;->d()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/n;->c:Lcom/easemob/chat/core/l;

    invoke-virtual {v0}, Lcom/easemob/chat/core/l;->d()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/n;->d:Lcom/easemob/chat/core/l;

    invoke-virtual {v0}, Lcom/easemob/chat/core/l;->d()I

    move-result v0

    return v0
.end method

.method public h()Lcom/easemob/chat/core/j$c;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/n;->d:Lcom/easemob/chat/core/l;

    invoke-virtual {v0}, Lcom/easemob/chat/core/l;->c()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/easemob/chat/core/j$c;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/n;->b:Lcom/easemob/chat/core/l;

    invoke-virtual {v0}, Lcom/easemob/chat/core/l;->c()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/easemob/chat/core/j$c;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/n;->c:Lcom/easemob/chat/core/l;

    invoke-virtual {v0}, Lcom/easemob/chat/core/l;->c()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    return-object v0
.end method

.method k()V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/n;->b:Lcom/easemob/chat/core/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/n;->b:Lcom/easemob/chat/core/l;

    invoke-virtual {v0}, Lcom/easemob/chat/core/l;->e()V

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/core/n;->c:Lcom/easemob/chat/core/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/core/n;->c:Lcom/easemob/chat/core/l;

    invoke-virtual {v0}, Lcom/easemob/chat/core/l;->e()V

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/core/n;->d:Lcom/easemob/chat/core/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/core/n;->d:Lcom/easemob/chat/core/l;

    invoke-virtual {v0}, Lcom/easemob/chat/core/l;->e()V

    :cond_2
    return-void
.end method
