.class public Lcom/easemob/chat/core/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/chat/core/s$a;,
        Lcom/easemob/chat/core/s$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "EMMonitorDB"

.field private static final b:I = 0x1

.field private static final c:Ljava/lang/String; = "monitor.db"

.field private static final e:Ljava/lang/String; = "apps"

.field private static final f:Ljava/lang/String; = "appname"

.field private static final h:Ljava/lang/String; = "create table apps (appname text primary key);"


# instance fields
.field private d:Lcom/easemob/chat/core/s$b;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/core/s;->d:Lcom/easemob/chat/core/s$b;

    iput-object v0, p0, Lcom/easemob/chat/core/s;->g:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/emlibs/libs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/core/s;->g:Ljava/lang/String;

    new-instance v0, Lcom/easemob/chat/core/s$b;

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "monitor.db"

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/easemob/chat/core/s;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/easemob/chat/core/s$b;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/easemob/chat/core/s;->d:Lcom/easemob/chat/core/s$b;
    :try_end_0
    .catch Lcom/easemob/exceptions/EaseMobException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "EMMonitorDB"

    invoke-virtual {v0}, Lcom/easemob/exceptions/EaseMobException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/s;->d:Lcom/easemob/chat/core/s$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/s;->d:Lcom/easemob/chat/core/s$b;

    invoke-virtual {v0}, Lcom/easemob/chat/core/s$b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "select * from apps"

    const/4 v3, 0x0

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_1

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    return-object v1

    :cond_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "appname"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "EMMonitorDB"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/s;->d:Lcom/easemob/chat/core/s$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/s;->d:Lcom/easemob/chat/core/s$b;

    invoke-virtual {v0}, Lcom/easemob/chat/core/s$b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "appname"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "apps"

    const/4 v3, 0x0

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_1

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->replace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EMMonitorDB"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/s;->d:Lcom/easemob/chat/core/s$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/s;->d:Lcom/easemob/chat/core/s$b;

    invoke-virtual {v0}, Lcom/easemob/chat/core/s$b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "apps"

    const-string v2, "appname = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EMMonitorDB"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
