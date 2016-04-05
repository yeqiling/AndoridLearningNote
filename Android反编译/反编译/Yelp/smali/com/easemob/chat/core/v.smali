.class final Lcom/easemob/chat/core/v;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "easemob.sdk.pref"

.field private static b:Landroid/content/SharedPreferences;

.field private static c:Landroid/content/SharedPreferences$Editor;

.field private static d:Lcom/easemob/chat/core/v;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# instance fields
.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "shared_key_ddversion"

    sput-object v0, Lcom/easemob/chat/core/v;->e:Ljava/lang/String;

    const-string v0, "shared_key_ddxml"

    sput-object v0, Lcom/easemob/chat/core/v;->f:Ljava/lang/String;

    const-string v0, "shared_key_ddtime"

    sput-object v0, Lcom/easemob/chat/core/v;->g:Ljava/lang/String;

    const-string v0, "valid_before"

    sput-object v0, Lcom/easemob/chat/core/v;->h:Ljava/lang/String;

    const-string v0, "scheduled_logout_time"

    sput-object v0, Lcom/easemob/chat/core/v;->i:Ljava/lang/String;

    const-string v0, "shared_key_gcm_id"

    sput-object v0, Lcom/easemob/chat/core/v;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/easemob/chat/core/v;->k:J

    const-string v0, "easemob.sdk.pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/easemob/chat/core/v;->b:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/easemob/chat/core/v;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method static declared-synchronized a()Lcom/easemob/chat/core/v;
    .locals 3

    const-class v1, Lcom/easemob/chat/core/v;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/easemob/chat/core/v;->d:Lcom/easemob/chat/core/v;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/chat/core/v;

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/easemob/chat/core/v;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/easemob/chat/core/v;->d:Lcom/easemob/chat/core/v;

    :cond_0
    sget-object v0, Lcom/easemob/chat/core/v;->d:Lcom/easemob/chat/core/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/easemob/chat/core/v;->g:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/easemob/chat/core/v;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "debugIM"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "debugRest"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "debugIM"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "debugRest"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3

    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "debugMode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b()J
    .locals 4

    sget-object v0, Lcom/easemob/chat/core/v;->b:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/easemob/chat/core/v;->h:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)V
    .locals 3

    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/easemob/chat/core/v;->h:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/easemob/chat/core/v;->f:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/easemob/chat/core/v;->b:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/easemob/chat/core/v;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(J)V
    .locals 3

    iput-wide p1, p0, Lcom/easemob/chat/core/v;->k:J

    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/easemob/chat/core/v;->i:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "debugAppkey"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/easemob/chat/core/v;->b:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/easemob/chat/core/v;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/easemob/chat/core/v;->j:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public e()J
    .locals 4

    sget-object v0, Lcom/easemob/chat/core/v;->b:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/easemob/chat/core/v;->g:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Z
    .locals 4

    iget-wide v0, p0, Lcom/easemob/chat/core/v;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/easemob/chat/core/v;->b:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/easemob/chat/core/v;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public g()J
    .locals 4

    iget-wide v0, p0, Lcom/easemob/chat/core/v;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/easemob/chat/core/v;->k:J

    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/easemob/chat/core/v;->b:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/easemob/chat/core/v;->i:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/easemob/chat/core/v;->k:J

    iget-wide v0, p0, Lcom/easemob/chat/core/v;->k:J

    goto :goto_0
.end method

.method public h()V
    .locals 2

    invoke-virtual {p0}, Lcom/easemob/chat/core/v;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/easemob/chat/core/v;->k:J

    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/easemob/chat/core/v;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/easemob/chat/core/v;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/easemob/chat/core/v;->b:Landroid/content/SharedPreferences;

    const-string v1, "debugIM"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/easemob/chat/core/v;->b:Landroid/content/SharedPreferences;

    const-string v1, "debugRest"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/easemob/chat/core/v;->b:Landroid/content/SharedPreferences;

    const-string v1, "debugAppkey"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/easemob/chat/core/v;->b:Landroid/content/SharedPreferences;

    const-string v1, "debugMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/easemob/chat/core/v;->b:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/easemob/chat/core/v;->j:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
