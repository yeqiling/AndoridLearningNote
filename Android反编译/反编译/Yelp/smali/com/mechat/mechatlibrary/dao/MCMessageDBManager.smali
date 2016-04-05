.class public Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;
.super Ljava/lang/Object;
.source "MCMessageDBManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MCMessage"

.field public static final _CONTENT:Ljava/lang/String; = "_content"

.field public static final _CREATE_TIME:Ljava/lang/String; = "_createTime"

.field public static final _DIRECTION:Ljava/lang/String; = "_direction"

.field public static final _DURATION:Ljava/lang/String; = "_duration"

.field public static final _FROM_NAME:Ljava/lang/String; = "_fromName"

.field public static final _ID:Ljava/lang/String; = "_id"

.field public static final _LOCAL_RUL:Ljava/lang/String; = "_localUrl"

.field public static final _NET_URL:Ljava/lang/String; = "_netUrl"

.field public static final _STATUS:Ljava/lang/String; = "_status"

.field public static final _TYPE:Ljava/lang/String; = "_type"

.field private static volatile mInstance:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private spManager:Lcom/mechat/mechatlibrary/utils/SpManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/mechat/mechatlibrary/dao/DBHelper;

    invoke-direct {v0, p1}, Lcom/mechat/mechatlibrary/dao/DBHelper;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, dbHelper:Lcom/mechat/mechatlibrary/dao/DBHelper;
    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/dao/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 60
    new-instance v1, Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-direct {v1, p1}, Lcom/mechat/mechatlibrary/utils/SpManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    .line 61
    return-void
.end method

.method private getCount()J
    .locals 8

    .prologue
    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "select count(*) from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, sql:Ljava/lang/String;
    const/4 v0, 0x0

    .line 263
    .local v0, c:Landroid/database/Cursor;
    const-wide/16 v2, 0x0

    .line 265
    .local v2, length:J
    :try_start_0
    iget-object v5, p0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    instance-of v7, v5, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v7, :cond_1

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 266
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 267
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 271
    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_0
    :goto_1
    return-wide v2

    .line 265
    :cond_1
    :try_start_1
    check-cast v5, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5, v4, v6}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "MCMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getCount() error = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 270
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 271
    if-eqz v0, :cond_2

    .line 272
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_2
    throw v5
.end method

.method public static getInstance()Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->mInstance:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    return-object v0
.end method

.method private getTableName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MCMessage"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/utils/SpManager;->getCookie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 39
    sget-object v0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->mInstance:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->mInstance:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    invoke-direct {v0, p0}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->mInstance:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->mInstance:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public findMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)Z
    .locals 8
    .parameter "message"

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, isExist:Z
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT * FROM "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, query:Ljava/lang/String;
    const/4 v3, 0x0

    .line 185
    .local v3, rs:Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    instance-of v6, v4, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v6, :cond_1

    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 186
    :goto_0
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 187
    const/4 v1, 0x1

    .line 194
    :goto_1
    if-eqz v3, :cond_0

    .line 195
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_0
    :goto_2
    return v1

    .line 185
    :cond_1
    :try_start_1
    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v4, v2, v5}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0

    .line 189
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "MCMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "findMessage() error = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    if-eqz v3, :cond_0

    .line 195
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 193
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 194
    if-eqz v3, :cond_3

    .line 195
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_3
    throw v4
.end method

.method public getMessageList(Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .parameter "id"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/mechat/mechatlibrary/bean/MCMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v4, mcMessageList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCMessage;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "select Id from "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where _id = ?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, idSql:Ljava/lang/String;
    const/4 v3, 0x0

    .line 317
    .local v3, mCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 319
    .local v6, msg_id:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    instance-of v10, v8, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_2

    invoke-virtual {v8, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 320
    :goto_0
    const/4 v6, 0x0

    .line 321
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 322
    const/4 v8, 0x0

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 329
    if-eqz v3, :cond_0

    .line 330
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_0
    :goto_1
    if-nez v6, :cond_5

    .line 353
    :cond_1
    :goto_2
    return-object v4

    .line 319
    :cond_2
    :try_start_1
    check-cast v8, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v8, v2, v9}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0

    .line 329
    :cond_3
    if-eqz v3, :cond_1

    .line 330
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 326
    :catch_0
    move-exception v1

    .line 327
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v8, "MCMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getMessageList(String id, int length) id error = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    if-eqz v3, :cond_0

    .line 330
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 328
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 329
    if-eqz v3, :cond_4

    .line 330
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 332
    :cond_4
    throw v8

    .line 337
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "select * from "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where Id between "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sub-int/2addr v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " order by Id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 338
    .local v7, sql:Ljava/lang/String;
    const/4 v0, 0x0

    .line 340
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_3
    iget-object v8, p0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v9, 0x0

    instance-of v10, v8, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_6

    invoke-virtual {v8, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 341
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v8

    if-nez v8, :cond_7

    .line 349
    if-eqz v0, :cond_1

    .line 350
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 340
    :cond_6
    :try_start_4
    check-cast v8, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v8, v7, v9}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_3

    .line 343
    :cond_7
    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->readMCMessage(Landroid/database/Cursor;)Lcom/mechat/mechatlibrary/bean/MCMessage;

    move-result-object v5

    .line 344
    .local v5, message:Lcom/mechat/mechatlibrary/bean/MCMessage;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 346
    .end local v5           #message:Lcom/mechat/mechatlibrary/bean/MCMessage;
    :catch_1
    move-exception v1

    .line 347
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v8, "MCMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getMessageList(String id, int length) error = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 349
    if-eqz v0, :cond_1

    .line 350
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 348
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    .line 349
    if-eqz v0, :cond_8

    .line 350
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 352
    :cond_8
    throw v8
.end method

.method public getRecentMCMessages(I)Ljava/util/List;
    .locals 12
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/mechat/mechatlibrary/bean/MCMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v2, mcMessageList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCMessage;>;"
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getCount()J

    move-result-wide v6

    .line 281
    .local v6, totalCount:J
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "select * from "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getTableName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " where Id between "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v8, p1

    sub-long v8, v6, v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " and "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " order by Id"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, sql:Ljava/lang/String;
    const/4 v1, 0x0

    .line 284
    .local v1, mCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v8, 0x0

    instance-of v9, v5, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v9, :cond_2

    invoke-virtual {v5, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 285
    :goto_0
    if-eqz v1, :cond_0

    .line 286
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_3

    .line 295
    :cond_0
    if-eqz v1, :cond_1

    .line 296
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 299
    :cond_1
    :goto_2
    return-object v2

    .line 284
    :cond_2
    :try_start_1
    check-cast v5, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5, v4, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 288
    :cond_3
    invoke-virtual {p0, v1}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->readMCMessage(Landroid/database/Cursor;)Lcom/mechat/mechatlibrary/bean/MCMessage;

    move-result-object v3

    .line 289
    .local v3, message:Lcom/mechat/mechatlibrary/bean/MCMessage;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 292
    .end local v3           #message:Lcom/mechat/mechatlibrary/bean/MCMessage;
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "MCMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getRecentMCMessages(int length) error = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    if-eqz v1, :cond_1

    .line 296
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 294
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 295
    if-eqz v1, :cond_4

    .line 296
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 298
    :cond_4
    throw v5
.end method

.method public queryTheCursorForMCMessage()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 214
    iget-object v1, p0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    instance-of v4, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 215
    .local v0, c:Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 214
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public readMCMessage(Landroid/database/Cursor;)Lcom/mechat/mechatlibrary/bean/MCMessage;
    .locals 5
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 219
    const-string v4, "_type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 220
    .local v2, type:I
    if-nez v2, :cond_0

    .line 221
    new-instance v1, Lcom/mechat/mechatlibrary/bean/MCTextMessage;

    invoke-direct {v1, v0}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;-><init>(Ljava/lang/String;)V

    .line 222
    .local v1, textMessage:Lcom/mechat/mechatlibrary/bean/MCTextMessage;
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;->setId(Ljava/lang/String;)V

    .line 223
    const-string v4, "_type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;->setType(I)V

    .line 224
    const-string v4, "_content"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;->setContent(Ljava/lang/String;)V

    .line 225
    const-string v4, "_createTime"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;->setCreatedTime(Ljava/lang/String;)V

    .line 226
    const-string v4, "_fromName"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;->setFromName(Ljava/lang/String;)V

    .line 227
    const-string v4, "_status"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;->setStatus(Ljava/lang/String;)V

    .line 228
    const-string v4, "_direction"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;->setDirection(I)V

    .line 256
    .end local v1           #textMessage:Lcom/mechat/mechatlibrary/bean/MCTextMessage;
    :goto_0
    return-object v1

    .line 230
    :cond_0
    const/4 v4, 0x1

    if-ne v4, v2, :cond_1

    .line 231
    new-instance v0, Lcom/mechat/mechatlibrary/bean/MCImageMessage;

    invoke-direct {v0}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;-><init>()V

    .line 232
    .local v0, imageMessage:Lcom/mechat/mechatlibrary/bean/MCImageMessage;
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->setId(Ljava/lang/String;)V

    .line 233
    const-string v4, "_type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->setType(I)V

    .line 234
    const-string v4, "_content"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->setContent(Ljava/lang/String;)V

    .line 235
    const-string v4, "_createTime"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->setCreatedTime(Ljava/lang/String;)V

    .line 236
    const-string v4, "_fromName"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->setFromName(Ljava/lang/String;)V

    .line 237
    const-string v4, "_status"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->setStatus(Ljava/lang/String;)V

    .line 238
    const-string v4, "_direction"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->setDirection(I)V

    .line 239
    const-string v4, "_netUrl"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->setPicUrl(Ljava/lang/String;)V

    .line 240
    const-string v4, "_localUrl"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->setLocalPath(Ljava/lang/String;)V

    move-object v1, v0

    .line 241
    goto :goto_0

    .line 242
    .end local v0           #imageMessage:Lcom/mechat/mechatlibrary/bean/MCImageMessage;
    :cond_1
    const/4 v4, 0x2

    if-ne v4, v2, :cond_2

    .line 243
    new-instance v3, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    invoke-direct {v3}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;-><init>()V

    .line 244
    .local v3, voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setId(Ljava/lang/String;)V

    .line 245
    const-string v4, "_type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setType(I)V

    .line 246
    const-string v4, "_content"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setContent(Ljava/lang/String;)V

    .line 247
    const-string v4, "_createTime"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setCreatedTime(Ljava/lang/String;)V

    .line 248
    const-string v4, "_fromName"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setFromName(Ljava/lang/String;)V

    .line 249
    const-string v4, "_status"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setStatus(Ljava/lang/String;)V

    .line 250
    const-string v4, "_direction"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setDirection(I)V

    .line 251
    const-string v4, "_netUrl"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setVoiceUrl(Ljava/lang/String;)V

    .line 252
    const-string v4, "_localUrl"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setLocalPath(Ljava/lang/String;)V

    .line 253
    const-string v4, "_duration"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setDuration(I)V

    move-object v1, v3

    .line 254
    goto/16 :goto_0

    .end local v3           #voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;
    :cond_2
    move-object v1, v0

    .line 256
    goto/16 :goto_0
.end method

.method public saveMCMessageForNoExist(Lcom/mechat/mechatlibrary/bean/MCMessage;)J
    .locals 8
    .parameter "message"

    .prologue
    .line 70
    const-string v4, "MCMessage"

    const-string v5, "save id saveMCMessageForNoExist"

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->findMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)Z

    move-result v1

    .line 73
    .local v1, isSaved:Z
    if-eqz v1, :cond_0

    .line 74
    const-wide/16 v2, 0xa

    .line 95
    .end local p1
    :goto_0
    return-wide v2

    .line 77
    .restart local p1
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 78
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "_id"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v4, "_type"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v4, "_content"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v4, "_createTime"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getCreatedTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v4, "_fromName"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getFromName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v4, "_status"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v4, "_direction"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getDirection()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 86
    const-string v5, "_netUrl"

    move-object v4, p1

    check-cast v4, Lcom/mechat/mechatlibrary/bean/MCImageMessage;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->getPicUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v5, "_localUrl"

    move-object v4, p1

    check-cast v4, Lcom/mechat/mechatlibrary/bean/MCImageMessage;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 90
    const-string v5, "_netUrl"

    move-object v4, p1

    check-cast v4, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getVoiceUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v5, "_localUrl"

    move-object v4, p1

    check-cast v4, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v4, "_duration"

    check-cast p1, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    .end local p1
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getDuration()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    :cond_2
    iget-object v4, p0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getTableName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    instance-of v7, v4, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v7, :cond_3

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 95
    .local v2, id:J
    :goto_1
    goto/16 :goto_0

    .line 94
    .end local v2           #id:J
    :cond_3
    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v4, v5, v6, v0}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_1
.end method

.method public saveMCMessageList(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mechat/mechatlibrary/bean/MCMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, mcMessageList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCMessage;>;"
    iget-object v1, p0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    iget-object v1, p0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 104
    iget-object v1, p0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 105
    return-void

    .line 100
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mechat/mechatlibrary/bean/MCMessage;

    .line 101
    .local v0, mcMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->saveMCMessageForNoExist(Lcom/mechat/mechatlibrary/bean/MCMessage;)J

    goto :goto_0
.end method

.method public updateMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    .locals 8
    .parameter "message"

    .prologue
    const/4 v7, 0x1

    .line 108
    const-string v3, "_id=?"

    .line 109
    .local v3, whereClause:Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 110
    .local v2, whereArgs:[Ljava/lang/String;
    const-string v4, "updateMCMessage "

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " id = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 112
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "_id"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v4, "_type"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    const-string v4, "_content"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v4, "_createTime"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getCreatedTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v4, "_fromName"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getFromName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v4, "_status"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v4, "_direction"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getDirection()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v4

    if-ne v7, v4, :cond_0

    .line 120
    const-string v5, "_netUrl"

    move-object v4, p1

    check-cast v4, Lcom/mechat/mechatlibrary/bean/MCImageMessage;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->getPicUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v5, "_localUrl"

    move-object v4, p1

    check-cast v4, Lcom/mechat/mechatlibrary/bean/MCImageMessage;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 124
    const-string v5, "_netUrl"

    move-object v4, p1

    check-cast v4, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getVoiceUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v5, "_localUrl"

    move-object v4, p1

    check-cast v4, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v4, "_duration"

    check-cast p1, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    .end local p1
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getDuration()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getTableName()Ljava/lang/String;

    move-result-object v5

    instance-of v6, v4, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v6, :cond_2

    invoke-virtual {v4, v5, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 134
    :goto_0
    return-void

    .line 129
    :cond_2
    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v4, v5, v0, v3, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "MCMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateMCMessage() error = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/lang/String;)V
    .locals 8
    .parameter "message"
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    .line 143
    const-string v3, "_id=?"

    .line 144
    .local v3, whereClause:Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 145
    .local v2, whereArgs:[Ljava/lang/String;
    const-string v4, "updateMCMessage "

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " id = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 147
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "_id"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v4, "_type"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    const-string v4, "_content"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v4, "_createTime"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getCreatedTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v4, "_fromName"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getFromName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v4, "_status"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v4, "_direction"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getDirection()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v4

    if-ne v7, v4, :cond_0

    .line 155
    const-string v5, "_netUrl"

    move-object v4, p1

    check-cast v4, Lcom/mechat/mechatlibrary/bean/MCImageMessage;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->getPicUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v5, "_localUrl"

    move-object v4, p1

    check-cast v4, Lcom/mechat/mechatlibrary/bean/MCImageMessage;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 159
    const-string v5, "_netUrl"

    move-object v4, p1

    check-cast v4, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getVoiceUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v5, "_localUrl"

    move-object v4, p1

    check-cast v4, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v4, "_duration"

    check-cast p1, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    .end local p1
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getDuration()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    :cond_1
    iget-object v4, p0, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getTableName()Ljava/lang/String;

    move-result-object v5

    instance-of v6, v4, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v6, :cond_2

    invoke-virtual {v4, v5, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 164
    .local v1, row:I
    :goto_0
    return-void

    .line 163
    .end local v1           #row:I
    :cond_2
    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v4, v5, v0, v3, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method
