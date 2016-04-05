.class Lcom/easemob/chat/core/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/chat/core/g;


# static fields
.field private static final a:Ljava/lang/String; = "EMHostResolver"

.field private static final h:I = 0x1


# instance fields
.field private b:Lcom/easemob/chat/core/j$a;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Lcom/easemob/chat/core/j$c;

.field private g:Lcom/easemob/chat/core/m;

.field private i:I

.field private j:Lcom/easemob/chat/core/g;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/core/l;->b:Lcom/easemob/chat/core/j$a;

    iput v1, p0, Lcom/easemob/chat/core/l;->c:I

    iput v1, p0, Lcom/easemob/chat/core/l;->d:I

    iput-boolean v2, p0, Lcom/easemob/chat/core/l;->e:Z

    iput-object v0, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;

    iput-object v0, p0, Lcom/easemob/chat/core/l;->g:Lcom/easemob/chat/core/m;

    iput v2, p0, Lcom/easemob/chat/core/l;->i:I

    iput-object v0, p0, Lcom/easemob/chat/core/l;->j:Lcom/easemob/chat/core/g;

    return-void
.end method

.method private a(I)Lcom/easemob/chat/core/j$b;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/easemob/chat/core/l;->b:Lcom/easemob/chat/core/j$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easemob/chat/core/l;->g:Lcom/easemob/chat/core/m;

    invoke-interface {v1}, Lcom/easemob/chat/core/m;->b()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    if-ge p1, v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/core/j$b;

    goto :goto_0
.end method

.method private a(Lcom/easemob/chat/core/j$a;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/l;->b:Lcom/easemob/chat/core/j$a;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/easemob/chat/core/l;->b:Lcom/easemob/chat/core/j$a;

    :cond_0
    return-void
.end method

.method private f()Lcom/easemob/chat/core/j$b;
    .locals 4

    iget-object v0, p0, Lcom/easemob/chat/core/l;->b:Lcom/easemob/chat/core/j$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/l;->g:Lcom/easemob/chat/core/m;

    invoke-interface {v0}, Lcom/easemob/chat/core/m;->b()Ljava/util/List;

    move-result-object v1

    iget v0, p0, Lcom/easemob/chat/core/l;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/easemob/chat/core/l;->c:I

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/easemob/chat/core/l;->c:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    :goto_0
    iget v0, p0, Lcom/easemob/chat/core/l;->c:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/easemob/chat/core/l;->c:I

    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    iget v0, p0, Lcom/easemob/chat/core/l;->c:I

    invoke-direct {p0, v0}, Lcom/easemob/chat/core/l;->a(I)Lcom/easemob/chat/core/j$b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/easemob/chat/core/j$b;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/easemob/chat/core/j$b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    iget v0, p0, Lcom/easemob/chat/core/l;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/easemob/chat/core/l;->c:I

    goto :goto_0
.end method

.method private g()Lcom/easemob/chat/core/j$b;
    .locals 4

    iget-object v0, p0, Lcom/easemob/chat/core/l;->b:Lcom/easemob/chat/core/j$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/l;->g:Lcom/easemob/chat/core/m;

    invoke-interface {v0}, Lcom/easemob/chat/core/m;->b()Ljava/util/List;

    move-result-object v1

    iget v0, p0, Lcom/easemob/chat/core/l;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/easemob/chat/core/l;->d:I

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/easemob/chat/core/l;->d:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    :goto_0
    iget v0, p0, Lcom/easemob/chat/core/l;->d:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/easemob/chat/core/l;->d:I

    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    iget v0, p0, Lcom/easemob/chat/core/l;->d:I

    invoke-direct {p0, v0}, Lcom/easemob/chat/core/l;->a(I)Lcom/easemob/chat/core/j$b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/easemob/chat/core/j$b;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/easemob/chat/core/j$b;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    iget v0, p0, Lcom/easemob/chat/core/l;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/easemob/chat/core/l;->d:I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/core/l;->b:Lcom/easemob/chat/core/j$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/l;->b:Lcom/easemob/chat/core/j$a;

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/j;->i()Lcom/easemob/chat/core/j$a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/easemob/chat/core/l;->e()V

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/j;->i()Lcom/easemob/chat/core/j$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/easemob/chat/core/l;->a(Lcom/easemob/chat/core/j$a;)V

    :cond_0
    return-void
.end method

.method a(Lcom/easemob/chat/core/g;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/l;->j:Lcom/easemob/chat/core/g;

    return-void
.end method

.method a(Lcom/easemob/chat/core/m;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/l;->g:Lcom/easemob/chat/core/m;

    return-void
.end method

.method declared-synchronized b()Lcom/easemob/chat/core/j$c;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/easemob/chat/core/l;->c()Lcom/easemob/chat/core/j$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()Lcom/easemob/chat/core/j$c;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/l;->g:Lcom/easemob/chat/core/m;

    invoke-interface {v0}, Lcom/easemob/chat/core/m;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/l;->g:Lcom/easemob/chat/core/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/l;->g:Lcom/easemob/chat/core/m;

    invoke-interface {v0}, Lcom/easemob/chat/core/m;->a()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/easemob/chat/core/l;->b:Lcom/easemob/chat/core/j$a;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/j;->i()Lcom/easemob/chat/core/j$a;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/core/l;->b:Lcom/easemob/chat/core/j$a;

    :cond_2
    iget-object v0, p0, Lcom/easemob/chat/core/l;->b:Lcom/easemob/chat/core/j$a;

    if-nez v0, :cond_4

    const-string v0, "EMHostResolver"

    const-string v1, "failed to get dns config"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;

    if-nez v0, :cond_3

    new-instance v0, Lcom/easemob/chat/core/j$c;

    invoke-direct {v0}, Lcom/easemob/chat/core/j$c;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;

    iget-object v0, p0, Lcom/easemob/chat/core/l;->g:Lcom/easemob/chat/core/m;

    invoke-interface {v0}, Lcom/easemob/chat/core/m;->a()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;

    :cond_3
    iget-object v0, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/easemob/chat/core/l;->f()Lcom/easemob/chat/core/j$b;

    move-result-object v0

    new-instance v1, Lcom/easemob/chat/core/j$c;

    invoke-direct {v1}, Lcom/easemob/chat/core/j$c;-><init>()V

    iput-object v1, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;

    if-nez v0, :cond_e

    const-string v0, "EMHostResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dns config did not return the ip list : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/core/l;->b:Lcom/easemob/chat/core/j$a;

    invoke-virtual {v2}, Lcom/easemob/chat/core/j$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/chat/core/l;->e:Z

    invoke-direct {p0}, Lcom/easemob/chat/core/l;->g()Lcom/easemob/chat/core/j$b;

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;

    if-nez v0, :cond_5

    new-instance v0, Lcom/easemob/chat/core/j$c;

    invoke-direct {v0}, Lcom/easemob/chat/core/j$c;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;

    :cond_5
    iget-object v2, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;

    iget-boolean v0, p0, Lcom/easemob/chat/core/l;->e:Z

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/easemob/chat/core/j$b;->b:Ljava/lang/String;

    :goto_2
    iput-object v0, v2, Lcom/easemob/chat/core/j$c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;

    iget v2, v1, Lcom/easemob/chat/core/j$b;->c:I

    iput v2, v0, Lcom/easemob/chat/core/j$c;->b:I

    iget-object v0, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;

    iget-object v2, v1, Lcom/easemob/chat/core/j$b;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/easemob/chat/core/j$c;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;

    iput-object v1, v0, Lcom/easemob/chat/core/j$c;->d:Lcom/easemob/chat/core/j$b;

    :goto_3
    iget-object v0, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;

    if-eqz v0, :cond_d

    const-string v0, "EMHostResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the next availabe host : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;

    goto/16 :goto_0

    :cond_6
    iget-boolean v1, p0, Lcom/easemob/chat/core/l;->e:Z

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/easemob/chat/core/l;->f()Lcom/easemob/chat/core/j$b;

    move-result-object v0

    :cond_7
    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/chat/core/l;->e:Z

    invoke-direct {p0}, Lcom/easemob/chat/core/l;->g()Lcom/easemob/chat/core/j$b;

    move-result-object v0

    :cond_8
    if-nez v0, :cond_e

    iget v1, p0, Lcom/easemob/chat/core/l;->i:I

    if-gtz v1, :cond_9

    iget-object v1, p0, Lcom/easemob/chat/core/l;->g:Lcom/easemob/chat/core/m;

    invoke-interface {v1}, Lcom/easemob/chat/core/m;->a()Lcom/easemob/chat/core/j$c;

    move-result-object v1

    iput-object v1, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;

    const/4 v1, 0x1

    iput v1, p0, Lcom/easemob/chat/core/l;->i:I

    move-object v1, v0

    goto :goto_1

    :cond_9
    iget v1, p0, Lcom/easemob/chat/core/l;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/easemob/chat/core/l;->i:I

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/j;->l()Lcom/easemob/chat/core/j$a;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/easemob/chat/core/l;->b:Lcom/easemob/chat/core/j$a;

    if-eq v0, v1, :cond_a

    iput-object v1, p0, Lcom/easemob/chat/core/l;->b:Lcom/easemob/chat/core/j$a;

    iget-object v0, p0, Lcom/easemob/chat/core/l;->j:Lcom/easemob/chat/core/g;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/easemob/chat/core/l;->j:Lcom/easemob/chat/core/g;

    invoke-interface {v0}, Lcom/easemob/chat/core/g;->a()V

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/core/l;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/easemob/chat/core/l;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/easemob/chat/core/l;->d:I

    invoke-direct {p0}, Lcom/easemob/chat/core/l;->f()Lcom/easemob/chat/core/j$b;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/easemob/chat/core/l;->g()Lcom/easemob/chat/core/j$b;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    :cond_b
    iget-object v0, v1, Lcom/easemob/chat/core/j$b;->a:Ljava/lang/String;

    goto/16 :goto_2

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/core/l;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/easemob/chat/core/l;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/easemob/chat/core/l;->d:I

    iget-object v0, p0, Lcom/easemob/chat/core/l;->g:Lcom/easemob/chat/core/m;

    invoke-interface {v0}, Lcom/easemob/chat/core/m;->a()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_d
    :try_start_2
    const-string v0, "EMHostResolver"

    const-string v1, "no availabe host is selected, we should not reach here!!"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_e
    move-object v1, v0

    goto/16 :goto_1
.end method

.method d()I
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/core/l;->g:Lcom/easemob/chat/core/m;

    invoke-interface {v0}, Lcom/easemob/chat/core/m;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/easemob/chat/core/l;->c:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/easemob/chat/core/l;->d:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput-object v1, p0, Lcom/easemob/chat/core/l;->b:Lcom/easemob/chat/core/j$a;

    iput-object v1, p0, Lcom/easemob/chat/core/l;->f:Lcom/easemob/chat/core/j$c;

    iput v0, p0, Lcom/easemob/chat/core/l;->c:I

    iput v0, p0, Lcom/easemob/chat/core/l;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/core/l;->e:Z

    return-void
.end method
