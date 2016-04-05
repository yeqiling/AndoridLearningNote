.class public Lcom/mechat/mechatlibrary/dao/MCEventDBManger;
.super Ljava/lang/Object;
.source "MCEventDBManger.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MCEvent"

.field public static final _AVATAR_URL:Ljava/lang/String; = "avatarUrl"

.field public static final _CREATED_TIME:Ljava/lang/String; = "_createdTime"

.field public static final _ID:Ljava/lang/String; = "_id"

.field public static final _REDIRECT_AVATAR_URL:Ljava/lang/String; = "redirect_avatar_url"

.field public static final _REDIRECT_USID:Ljava/lang/String; = "redirect_usid"

.field public static final _REDIRECT_USNAME:Ljava/lang/String; = "redirect_usname"

.field public static final _TYPE:Ljava/lang/String; = "_type"

.field public static final _USID:Ljava/lang/String; = "usid"

.field public static final _USNAME:Ljava/lang/String; = "usname"

.field private static volatile mInstance:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;


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
    new-instance v1, Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-direct {v1, p1}, Lcom/mechat/mechatlibrary/utils/SpManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    .line 60
    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/dao/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    return-void
.end method

.method private getCount()J
    .locals 8

    .prologue
    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "select count(*) from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, sql:Ljava/lang/String;
    const/4 v0, 0x0

    .line 182
    .local v0, c:Landroid/database/Cursor;
    const-wide/16 v2, 0x0

    .line 184
    .local v2, length:J
    :try_start_0
    iget-object v5, p0, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    instance-of v7, v5, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v7, :cond_1

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 185
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 186
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 190
    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 194
    :cond_0
    :goto_1
    return-wide v2

    .line 184
    :cond_1
    :try_start_1
    check-cast v5, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5, v4, v6}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "MCEvent"

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

    .line 190
    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 189
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 190
    if-eqz v0, :cond_2

    .line 191
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_2
    throw v5
.end method

.method public static getInstance()Lcom/mechat/mechatlibrary/dao/MCEventDBManger;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->mInstance:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    return-object v0
.end method

.method private getTableName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MCEvent"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/utils/SpManager;->getCookie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/mechat/mechatlibrary/dao/MCEventDBManger;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 39
    sget-object v0, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->mInstance:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->mInstance:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    invoke-direct {v0, p0}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->mInstance:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->mInstance:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

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
.method public findEvent(Lcom/mechat/mechatlibrary/bean/MCEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, isExist:Z
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT * FROM "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, query:Ljava/lang/String;
    const/4 v3, 0x0

    .line 162
    .local v3, rs:Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCEvent;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    instance-of v6, v4, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v6, :cond_1

    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 163
    :goto_0
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    const/4 v1, 0x1

    .line 171
    :goto_1
    if-eqz v3, :cond_0

    .line 172
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 175
    :cond_0
    :goto_2
    return v1

    .line 162
    :cond_1
    :try_start_1
    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v4, v2, v5}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0

    .line 166
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "MCEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "findEvent() error = "

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

    .line 171
    if-eqz v3, :cond_0

    .line 172
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 170
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 171
    if-eqz v3, :cond_3

    .line 172
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_3
    throw v4
.end method

.method public getMCEvents(Ljava/lang/String;I)Ljava/util/List;
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
            "Lcom/mechat/mechatlibrary/bean/MCEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v6, mcEventList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCEvent;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "select Id from "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->getTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where _id = ?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, idSql:Ljava/lang/String;
    const/4 v5, 0x0

    .line 238
    .local v5, mCursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 240
    .local v3, evnetId:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    instance-of v10, v8, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_2

    invoke-virtual {v8, v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 241
    :goto_0
    if-eqz v5, :cond_3

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 242
    const/4 v8, 0x0

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 249
    if-eqz v5, :cond_0

    .line 250
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_0
    :goto_1
    if-nez v3, :cond_5

    .line 273
    :cond_1
    :goto_2
    return-object v6

    .line 240
    :cond_2
    :try_start_1
    check-cast v8, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v8, v4, v9}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_0

    .line 249
    :cond_3
    if-eqz v5, :cond_1

    .line 250
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v8, "MCEvent"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getMCEvents() id error = "

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

    .line 249
    if-eqz v5, :cond_0

    .line 250
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 248
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 249
    if-eqz v5, :cond_4

    .line 250
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_4
    throw v8

    .line 257
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "select * from "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->getTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where Id between "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sub-int/2addr v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " order by Id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 258
    .local v7, sql:Ljava/lang/String;
    const/4 v0, 0x0

    .line 260
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_3
    iget-object v8, p0, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v9, 0x0

    instance-of v10, v8, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_6

    invoke-virtual {v8, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 261
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v8

    if-nez v8, :cond_7

    .line 269
    if-eqz v0, :cond_1

    .line 270
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 260
    :cond_6
    :try_start_4
    check-cast v8, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v8, v7, v9}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_3

    .line 263
    :cond_7
    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->readMCEvent(Landroid/database/Cursor;)Lcom/mechat/mechatlibrary/bean/MCEvent;

    move-result-object v2

    .line 264
    .local v2, event:Lcom/mechat/mechatlibrary/bean/MCEvent;
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 266
    .end local v2           #event:Lcom/mechat/mechatlibrary/bean/MCEvent;
    :catch_1
    move-exception v1

    .line 267
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v8, "MCEvent"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getMCEvents() error = "

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

    .line 269
    if-eqz v0, :cond_1

    .line 270
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 268
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    .line 269
    if-eqz v0, :cond_8

    .line 270
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_8
    throw v8
.end method

.method public getRecentMCEvents(I)Ljava/util/List;
    .locals 14
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/mechat/mechatlibrary/bean/MCEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v3, mcEventList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCEvent;>;"
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->getCount()J

    move-result-wide v8

    .line 200
    .local v8, totalCount:J
    int-to-long v10, p1

    sub-long v10, v8, v10

    const-wide/16 v12, 0x1

    add-long v6, v10, v12

    .line 202
    .local v6, startPosition:J
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "select * from "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->getTableName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " where Id between "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " and "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " order by Id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, sql:Ljava/lang/String;
    const/4 v2, 0x0

    .line 205
    .local v2, mCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v10, 0x0

    instance-of v11, v5, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v11, :cond_2

    invoke-virtual {v5, v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 206
    :goto_0
    if-eqz v2, :cond_0

    .line 207
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_3

    .line 216
    :cond_0
    if-eqz v2, :cond_1

    .line 217
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_1
    :goto_2
    return-object v3

    .line 205
    :cond_2
    :try_start_1
    check-cast v5, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5, v4, v10}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {p0, v2}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->readMCEvent(Landroid/database/Cursor;)Lcom/mechat/mechatlibrary/bean/MCEvent;

    move-result-object v1

    .line 210
    .local v1, event:Lcom/mechat/mechatlibrary/bean/MCEvent;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 213
    .end local v1           #event:Lcom/mechat/mechatlibrary/bean/MCEvent;
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "MCEvent"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getRecentMCEvents() error = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    if-eqz v2, :cond_1

    .line 217
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 215
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 216
    if-eqz v2, :cond_4

    .line 217
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_4
    throw v5
.end method

.method public queryTheCursorForMCEvent()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 117
    iget-object v1, p0, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->getTableName()Ljava/lang/String;

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

    .line 118
    .local v0, c:Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 117
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public readMCEvent(Landroid/database/Cursor;)Lcom/mechat/mechatlibrary/bean/MCEvent;
    .locals 5
    .parameter "c"

    .prologue
    .line 122
    const-string v4, "_type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, type:Ljava/lang/String;
    const-string v4, "redirect"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    new-instance v2, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;

    invoke-direct {v2}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;-><init>()V

    .line 125
    .local v2, redirectEvent:Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setId(Ljava/lang/String;)V

    .line 126
    const-string v4, "usid"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setUsid(Ljava/lang/String;)V

    .line 127
    const-string v4, "_type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setType(Ljava/lang/String;)V

    .line 128
    const-string v4, "_createdTime"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setCreatedTime(Ljava/lang/String;)V

    .line 129
    const-string v4, "usname"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setUsname(Ljava/lang/String;)V

    .line 130
    const-string v4, "avatarUrl"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setAvatarUrl(Ljava/lang/String;)V

    .line 131
    const-string v4, "redirect_avatar_url"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setRedirectAvatarUrl(Ljava/lang/String;)V

    .line 132
    const-string v4, "redirect_usname"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setRedirectUsname(Ljava/lang/String;)V

    .line 133
    const-string v4, "redirect_usid"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setRedirectUsid(Ljava/lang/String;)V

    .line 154
    .end local v2           #redirectEvent:Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;
    :goto_0
    return-object v2

    .line 135
    :cond_0
    const-string v4, "alloc_us"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    new-instance v0, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;

    invoke-direct {v0}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;-><init>()V

    .line 137
    .local v0, allocationEvent:Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->setId(Ljava/lang/String;)V

    .line 138
    const-string v4, "_type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->setType(Ljava/lang/String;)V

    .line 139
    const-string v4, "_createdTime"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->setCreatedTime(Ljava/lang/String;)V

    .line 140
    const-string v4, "usname"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->setUsname(Ljava/lang/String;)V

    .line 141
    const-string v4, "usid"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->setUsid(Ljava/lang/String;)V

    .line 142
    const-string v4, "avatarUrl"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->setAvatarUrl(Ljava/lang/String;)V

    move-object v2, v0

    .line 143
    goto :goto_0

    .line 144
    .end local v0           #allocationEvent:Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;
    :cond_1
    const-string v4, "re_alloc_us"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    new-instance v1, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;

    invoke-direct {v1}, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;-><init>()V

    .line 146
    .local v1, reAllocationEvent:Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->setId(Ljava/lang/String;)V

    .line 147
    const-string v4, "_type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->setType(Ljava/lang/String;)V

    .line 148
    const-string v4, "_createdTime"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->setCreatedTime(Ljava/lang/String;)V

    .line 149
    const-string v4, "usname"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->setUsname(Ljava/lang/String;)V

    .line 150
    const-string v4, "usid"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->setUsid(Ljava/lang/String;)V

    .line 151
    const-string v4, "avatarUrl"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->setAvatarUrl(Ljava/lang/String;)V

    move-object v2, v1

    .line 152
    goto/16 :goto_0

    .line 154
    .end local v1           #reAllocationEvent:Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public saveMCEvent(Lcom/mechat/mechatlibrary/bean/MCEvent;)J
    .locals 10
    .parameter "mcEvent"

    .prologue
    .line 65
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 66
    .local v1, cv:Landroid/content/ContentValues;
    const-string v6, "_id"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCEvent;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v6, "_type"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCEvent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v6, "_createdTime"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCEvent;->getCreatedTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v6, "redirect"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCEvent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v5, p1

    .line 71
    check-cast v5, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;

    .line 72
    .local v5, redirectEvent:Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;
    const-string v6, "usname"

    invoke-virtual {v5}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->getUsname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v6, "usid"

    invoke-virtual {v5}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->getUsid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v6, "avatarUrl"

    invoke-virtual {v5}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->getAvatarUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v6, "redirect_avatar_url"

    invoke-virtual {v5}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->getRedirectAvatarUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v6, "redirect_usname"

    invoke-virtual {v5}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->getRedirectUsname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v6, "redirect_usid"

    invoke-virtual {v5}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->getRedirectUsid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v5           #redirectEvent:Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->getTableName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    instance-of v9, v6, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v9, :cond_3

    invoke-virtual {v6, v7, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 92
    .local v2, id:J
    :goto_1
    return-wide v2

    .line 78
    .end local v2           #id:J
    :cond_1
    const-string v6, "alloc_us"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCEvent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v0, p1

    .line 79
    check-cast v0, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;

    .line 80
    .local v0, allocationEvent:Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;
    const-string v6, "usname"

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->getUsname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v6, "avatarUrl"

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->getAvatarUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v6, "usid"

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->getUsid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v0           #allocationEvent:Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;
    :cond_2
    const-string v6, "re_alloc_us"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCEvent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v4, p1

    .line 84
    check-cast v4, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;

    .line 85
    .local v4, reAllocationEvent:Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;
    const-string v6, "usname"

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->getUsname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v6, "MCEvent"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "save usname = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->getUsname()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v6, "avatarUrl"

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->getAvatarUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v6, "usid"

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->getUsid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v4           #reAllocationEvent:Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;
    :cond_3
    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v6, v7, v8, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_1
.end method

.method public saveMCEventList(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mechat/mechatlibrary/bean/MCEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, mcEventList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCEvent;>;"
    iget-object v1, p0, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    iget-object v1, p0, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 101
    iget-object v1, p0, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 102
    return-void

    .line 97
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mechat/mechatlibrary/bean/MCEvent;

    .line 98
    .local v0, mcEvent:Lcom/mechat/mechatlibrary/bean/MCEvent;
    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->saveMCEvent(Lcom/mechat/mechatlibrary/bean/MCEvent;)J

    goto :goto_0
.end method
