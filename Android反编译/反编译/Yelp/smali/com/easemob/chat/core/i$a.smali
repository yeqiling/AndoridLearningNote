.class Lcom/easemob/chat/core/i$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/core/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static instance:Lcom/easemob/chat/core/i$a;


# instance fields
.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/chat/core/i$a;->instance:Lcom/easemob/chat/core/i$a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_emmsg.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p2, p0, Lcom/easemob/chat/core/i$a;->username:Ljava/lang/String;

    invoke-static {}, Lcom/easemob/chat/core/i;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "created chatdb for :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addConversation(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/easemob/chat/core/i;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add converstion with:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-string v0, "username"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insert into conversation_list ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " select ? where not exists (select null from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "conversation_list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    instance-of v2, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "groupname"

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private clearContactTable_v10(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/easemob/chat/core/i;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add converstion with:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/core/i$a;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "delete from contact"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    instance-of v2, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized closeDB()V
    .locals 2

    const-class v1, Lcom/easemob/chat/core/i$a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/easemob/chat/core/i$a;->instance:Lcom/easemob/chat/core/i$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/easemob/chat/core/i$a;->instance:Lcom/easemob/chat/core/i$a;

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/easemob/chat/core/i$a;->instance:Lcom/easemob/chat/core/i$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;
    .locals 2

    const-class v1, Lcom/easemob/chat/core/i$a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/easemob/chat/core/i$a;->instance:Lcom/easemob/chat/core/i$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/chat/core/i$a;

    invoke-direct {v0, p0, p1}, Lcom/easemob/chat/core/i$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/easemob/chat/core/i$a;->instance:Lcom/easemob/chat/core/i$a;

    :cond_0
    sget-object v0, Lcom/easemob/chat/core/i$a;->instance:Lcom/easemob/chat/core/i$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initializeConversation(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/easemob/chat/core/i;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "initializeConversation"

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v4, "select distinct participant from chat where groupname is null"

    const/4 v5, 0x0

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_4

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v4, "select distinct groupname from chat where groupname is not null"

    const/4 v5, 0x0

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_5

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-static {}, Lcom/easemob/chat/core/i;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "load participants size:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_4
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v4, v5}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v4, v5}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v1, v6}, Lcom/easemob/chat/core/i$a;->addConversation(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v3}, Lcom/easemob/chat/core/i$a;->addConversation(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V

    goto :goto_4
.end method

.method private isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " LIMIT 0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    instance-of v4, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_2

    invoke-virtual {p1, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return v0

    :cond_2
    :try_start_1
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v1, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcom/easemob/chat/core/i;->l()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkColumnExists..."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private migrateFrom10To12(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "select * from conversation_list"

    const/4 v4, 0x0

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "groupname"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    sget-object v4, Lcom/easemob/chat/EMConversation$EMConversationType;->Chat:Lcom/easemob/chat/EMConversation$EMConversationType;

    invoke-virtual {v4}, Lcom/easemob/chat/EMConversation$EMConversationType;->ordinal()I

    move-result v5

    const-string v4, "username"

    if-eqz v0, :cond_4

    sget-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->GroupChat:Lcom/easemob/chat/EMConversation$EMConversationType;

    invoke-virtual {v0}, Lcom/easemob/chat/EMConversation$EMConversationType;->ordinal()I

    move-result v4

    const-string v0, "groupname"

    :goto_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "conversation_type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "conversation_list"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " = ?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_3

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v4, v5, v6, v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    move-object v0, v4

    move v4, v5

    goto :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v1, "create table chat (_id integer primary key autoincrement, msgid text, msgtime integer, msgdir integer, isacked integer, isdelivered integer, status integer,participant text not null, islistened integer, msgbody text not null,msgtype integer, groupname text);"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_0
    const-string v1, "create table emgroup (name text primary key, jid text not null, nick text not null, owner text not null, modifiedtime integer, ispublic integer, desc text, members_size integer, isblocked integer, members text, max_users integer);"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_1
    const-string v1, "create table unreadcount (username text primary key, count integer);"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_2
    const-string v1, "create table token (username text primary key, value text, saved_time integer);"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_3
    const-string v1, "create table contact (jid text primary key, username text, nick );"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_4
    const-string v1, "create table black_list (username text primary key);"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_5
    const-string v1, "create table if not exists conversation_list (username text primary key, groupname text, ext text, conversation_type integer);"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_6

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_6
    const-string v0, "create table chatroom (name text primary key, nick text, owner text, desc text, members_size integer, isblocked integer, members text, max_users integer);"

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_7

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_7
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/easemob/chat/core/i;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Upgrading from version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-ge p2, v1, :cond_0

    const-string v2, "create table unreadcount (username text primary key, count integer);"

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_b

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v1, 0x3

    if-ge p2, v1, :cond_1

    const-string v2, "create table token (username text primary key, value text, saved_time integer);"

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_c

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_1
    const-string v2, "create table contact (jid text primary key, username text, nick );"

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_d

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    :goto_2
    const/4 v1, 0x4

    if-ge p2, v1, :cond_2

    :try_start_0
    const-string v2, "token"

    const-string v3, "username = ?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/easemob/chat/core/i$a;->username:Ljava/lang/String;

    aput-object v5, v4, v1

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_e

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_3
    const/4 v1, 0x5

    if-ge p2, v1, :cond_3

    :try_start_1
    const-string v2, "ALTER TABLE chat ADD COLUMN isdelivered integer ;"

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_f

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_4
    invoke-static {}, Lcom/easemob/chat/core/i;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "db upgrade to vervison 5"

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_5
    const/4 v1, 0x6

    if-ge p2, v1, :cond_4

    const-string v2, "create table black_list (username text primary key);"

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_10

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_6
    const-string v2, "ALTER TABLE chat ADD COLUMN islistened integer ;"

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_11

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    :goto_7
    const/4 v1, 0x7

    if-ge p2, v1, :cond_5

    const-string v2, "ALTER TABLE emgroup ADD COLUMN members_size INTEGER ;"

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_12

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    :goto_8
    const/16 v1, 0x8

    if-ge p2, v1, :cond_6

    const-string v2, "ALTER TABLE emgroup ADD COLUMN isblocked INTEGER ;"

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_13

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_6
    :goto_9
    const/16 v1, 0x9

    if-ge p2, v1, :cond_7

    const-string v2, "ALTER TABLE emgroup ADD COLUMN max_users INTEGER ;"

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_14

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_7
    :goto_a
    const/16 v1, 0xa

    if-ge p2, v1, :cond_8

    const-string v2, "create table if not exists conversation_list (username text primary key, groupname text, ext text, conversation_type integer);"

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_15

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_b
    invoke-direct {p0, p1}, Lcom/easemob/chat/core/i$a;->initializeConversation(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/easemob/chat/core/i$a;->clearContactTable_v10(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/easemob/chat/core/i;->a(Lcom/easemob/chat/core/i;Z)V

    :cond_8
    const/16 v1, 0xc

    if-ge p2, v1, :cond_a

    const-string v2, "create table chatroom (name text primary key, nick text, owner text, desc text, members_size integer, isblocked integer, members text, max_users integer);"

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_16

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_c
    const-string v1, "conversation_list"

    const-string v2, "conversation_type"

    invoke-direct {p0, p1, v1, v2}, Lcom/easemob/chat/core/i$a;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v2, "ALTER TABLE conversation_list ADD COLUMN conversation_type INTEGER ;"

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_17

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_9
    :goto_d
    const-string v2, "ALTER TABLE chat ADD COLUMN msgtype INTEGER ;"

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_18

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_e
    invoke-direct {p0, p1}, Lcom/easemob/chat/core/i$a;->migrateFrom10To12(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_a
    return-void

    :cond_b
    move-object v1, p1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    move-object v1, p1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    :try_start_2
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v2, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_f
    :try_start_3
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :cond_10
    move-object v1, p1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_11
    move-object v1, p1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_12
    move-object v1, p1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_13
    move-object v1, p1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_14
    move-object v1, p1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_15
    move-object v1, p1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_16
    move-object v1, p1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_17
    move-object v1, p1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_18
    move-object v1, p1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_e
.end method
