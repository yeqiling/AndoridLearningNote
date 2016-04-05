.class public Lcom/umeng/update/net/b;
.super Ljava/lang/Object;
.source "DownloadTaskList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/update/net/b$a;,
        Lcom/umeng/update/net/b$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = null

.field private static final b:Ljava/lang/String; = "umeng_download_task_list"

.field private static final c:Ljava/lang/String; = "UMENG_DATA"

.field private static final d:Ljava/lang/String; = "cp"

.field private static final e:Ljava/lang/String; = "url"

.field private static final f:Ljava/lang/String; = "progress"

.field private static final g:Ljava/lang/String; = "last_modified"

.field private static final h:Ljava/lang/String; = "extra"

.field private static i:Landroid/content/Context; = null

.field private static final j:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"


# instance fields
.field private k:Lcom/umeng/update/net/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/umeng/update/net/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/net/b;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/umeng/update/net/b$a;

    sget-object v1, Lcom/umeng/update/net/b;->i:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/umeng/update/net/b$a;-><init>(Lcom/umeng/update/net/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/update/net/b;->k:Lcom/umeng/update/net/b$a;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/update/net/b$1;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/umeng/update/net/b;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/update/net/b;
    .locals 1
    .parameter

    .prologue
    .line 72
    sget-object v0, Lcom/umeng/update/net/b;->i:Landroid/content/Context;

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 74
    :cond_0
    sget-object v0, Lcom/umeng/update/net/b;->i:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 75
    sput-object p0, Lcom/umeng/update/net/b;->i:Landroid/content/Context;

    .line 76
    :cond_1
    sget-object v0, Lcom/umeng/update/net/b$b;->a:Lcom/umeng/update/net/b;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/umeng/update/net/b;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 199
    const-string v3, "cp=?"

    .line 200
    new-array v4, v2, [Ljava/lang/String;

    aput-object p1, v4, v9

    .line 201
    iget-object v0, p0, Lcom/umeng/update/net/b;->k:Lcom/umeng/update/net/b$a;

    invoke-virtual {v0}, Lcom/umeng/update/net/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "umeng_download_task_list"

    new-array v2, v2, [Ljava/lang/String;

    const-string v6, "url"

    aput-object v6, v2, v9

    const-string v8, "1"

    instance-of v6, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v6, :cond_0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 204
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 206
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 207
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 201
    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v5

    move-object v7, v5

    invoke-static/range {v0 .. v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 212
    return-object v1
.end method

.method public a(I)V
    .locals 6
    .parameter

    .prologue
    .line 228
    :try_start_0
    new-instance v1, Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v4, v0

    sub-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 229
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " DELETE FROM umeng_download_task_list WHERE strftime(\'yyyy-MM-dd HH:mm:ss\', last_modified)<=strftime(\'yyyy-MM-dd HH:mm:ss\', \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    iget-object v0, p0, Lcom/umeng/update/net/b;->k:Lcom/umeng/update/net/b$a;

    invoke-virtual {v0}, Lcom/umeng/update/net/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    :goto_0
    sget-object v0, Lcom/umeng/update/net/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearOverdueTasks("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " remove all tasks before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v0, v1}, Lu/upd/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_1
    return-void

    .line 235
    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    sget-object v1, Lcom/umeng/update/net/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lu/upd/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 114
    const-string v0, "progress"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v0, "last_modified"

    invoke-static {}, Lu/upd/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v2, "cp=? and url=?"

    .line 117
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const/4 v0, 0x1

    aput-object p2, v3, v0

    .line 118
    iget-object v0, p0, Lcom/umeng/update/net/b;->k:Lcom/umeng/update/net/b$a;

    invoke-virtual {v0}, Lcom/umeng/update/net/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "umeng_download_task_list"

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 121
    :goto_0
    sget-object v0, Lcom/umeng/update/net/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProgress("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/upd/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void

    .line 118
    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v4, v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 127
    const-string v0, "extra"

    invoke-virtual {v1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "last_modified"

    invoke-static {}, Lu/upd/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "cp=? and url=?"

    .line 130
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const/4 v0, 0x1

    aput-object p2, v3, v0

    .line 131
    iget-object v0, p0, Lcom/umeng/update/net/b;->k:Lcom/umeng/update/net/b$a;

    invoke-virtual {v0}, Lcom/umeng/update/net/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "umeng_download_task_list"

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    :goto_0
    sget-object v0, Lcom/umeng/update/net/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateExtra("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/upd/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 131
    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v4, v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 80
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 81
    const-string v0, "cp"

    invoke-virtual {v10, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "url"

    invoke-virtual {v10, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "progress"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    const-string v0, "last_modified"

    invoke-static {}, Lu/upd/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v9, 0x0

    .line 87
    :try_start_0
    const-string v3, "cp=? and url=?"

    .line 88
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    .line 89
    iget-object v0, p0, Lcom/umeng/update/net/b;->k:Lcom/umeng/update/net/b$a;

    invoke-virtual {v0}, Lcom/umeng/update/net/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "umeng_download_task_list"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "progress"

    aput-object v6, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    instance-of v11, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v11, :cond_0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v4, v0

    .line 92
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 93
    sget-object v0, Lcom/umeng/update/net/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists in the db. Insert is cancelled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/upd/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    const/4 v0, 0x0

    .line 103
    :goto_1
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 109
    :goto_2
    return v0

    .line 89
    :cond_0
    :try_start_2
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static/range {v0 .. v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/umeng/update/net/b;->k:Lcom/umeng/update/net/b$a;

    invoke-virtual {v0}, Lcom/umeng/update/net/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "umeng_download_task_list"

    const/4 v2, 0x0

    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_2

    invoke-virtual {v0, v1, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v0

    move-wide v2, v0

    .line 99
    :goto_3
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    const/4 v1, 0x0

    .line 100
    :goto_4
    :try_start_3
    sget-object v0, Lcom/umeng/update/net/b;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "rowid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lu/upd/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v1

    goto :goto_1

    .line 97
    :cond_2
    :try_start_4
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, v10}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-wide v0

    move-wide v2, v0

    goto :goto_3

    .line 99
    :cond_3
    const/4 v1, 0x1

    goto :goto_4

    .line 104
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v9

    .line 105
    :goto_5
    sget-object v2, Lcom/umeng/update/net/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 106
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-static {v2, v3, v1}, Lu/upd/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_2

    .line 104
    :catch_1
    move-exception v0

    move-object v12, v0

    move v0, v1

    move-object v1, v12

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_5
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 138
    const/4 v9, -0x1

    .line 139
    const-string v3, "cp=? and url=?"

    .line 140
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v10

    aput-object p2, v4, v2

    .line 141
    iget-object v0, p0, Lcom/umeng/update/net/b;->k:Lcom/umeng/update/net/b$a;

    invoke-virtual {v0}, Lcom/umeng/update/net/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "umeng_download_task_list"

    new-array v2, v2, [Ljava/lang/String;

    const-string v6, "progress"

    aput-object v6, v2, v10

    const-string v8, "1"

    instance-of v6, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v6, :cond_0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 144
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 145
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 148
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 149
    return v1

    .line 141
    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v5

    move-object v7, v5

    invoke-static/range {v0 .. v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v1, v9

    goto :goto_1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 153
    .line 154
    const-string v3, "cp=? and url=?"

    .line 155
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v9

    aput-object p2, v4, v2

    .line 156
    iget-object v0, p0, Lcom/umeng/update/net/b;->k:Lcom/umeng/update/net/b$a;

    invoke-virtual {v0}, Lcom/umeng/update/net/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "umeng_download_task_list"

    new-array v2, v2, [Ljava/lang/String;

    const-string v6, "extra"

    aput-object v6, v2, v9

    const-string v8, "1"

    instance-of v6, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v6, :cond_1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 159
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 160
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 161
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 163
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 164
    return-object v5

    .line 156
    :cond_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v5

    move-object v7, v5

    invoke-static/range {v0 .. v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 168
    .line 169
    const-string v3, "cp=? and url=?"

    .line 170
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v9

    aput-object p2, v4, v2

    .line 171
    iget-object v0, p0, Lcom/umeng/update/net/b;->k:Lcom/umeng/update/net/b$a;

    invoke-virtual {v0}, Lcom/umeng/update/net/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "umeng_download_task_list"

    new-array v2, v2, [Ljava/lang/String;

    const-string v6, "last_modified"

    aput-object v6, v2, v9

    instance-of v6, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v6, :cond_1

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 174
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 175
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 176
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    sget-object v2, Lcom/umeng/update/net/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastModified("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lu/upd/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 186
    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 187
    return-object v5

    .line 171
    :cond_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-static/range {v0 .. v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    sget-object v2, Lcom/umeng/update/net/b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lu/upd/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 191
    const-string v1, "cp=? and url=?"

    .line 192
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const/4 v0, 0x1

    aput-object p2, v2, v0

    .line 193
    iget-object v0, p0, Lcom/umeng/update/net/b;->k:Lcom/umeng/update/net/b$a;

    invoke-virtual {v0}, Lcom/umeng/update/net/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "umeng_download_task_list"

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 194
    :goto_0
    sget-object v0, Lcom/umeng/update/net/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/upd/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void

    .line 193
    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v3, v1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/umeng/update/net/b;->k:Lcom/umeng/update/net/b$a;

    invoke-virtual {v0}, Lcom/umeng/update/net/b$a;->close()V

    .line 255
    return-void
.end method
