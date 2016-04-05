.class public Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;
.super Ljava/lang/Object;
.source "SQLiteInstrumentation.java"


# static fields
.field private static final categoryParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "category"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "DATABASE"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->categoryParams:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "database"
    .parameter "table"
    .parameter "whereClause"
    .parameter "whereArgs"
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 159
    const-string v1, "SQLiteDatabase#delete"

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 160
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 161
    .local v0, result:I
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 163
    return v0
.end method

.method public static execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .parameter "database"
    .parameter "sql"
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 186
    const-string v0, "SQLiteDatabase#execSQL"

    sget-object v1, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 187
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 189
    return-void
.end method

.method public static execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "database"
    .parameter "sql"
    .parameter "bindArgs"
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 193
    const-string v0, "SQLiteDatabase#execSQL"

    sget-object v1, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 194
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 196
    return-void
.end method

.method public static insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .parameter "database"
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 114
    const-string v2, "SQLiteDatabase#insert"

    sget-object v3, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 115
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 116
    .local v0, result:J
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 118
    return-wide v0
.end method

.method public static insertOrThrow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .parameter "database"
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 123
    const-string v2, "SQLiteDatabase#insertOrThrow"

    sget-object v3, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 125
    .local v0, result:J
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 127
    return-wide v0
.end method

.method public static insertWithOnConflict(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 4
    .parameter "database"
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "initialValues"
    .parameter "conflictAlgorithm"
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 132
    const-string v2, "SQLiteDatabase#insertWithOnConflict"

    sget-object v3, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 133
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 134
    .local v0, result:J
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 136
    return-wide v0
.end method

.method public static query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "database"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 42
    const-string v1, "SQLiteDatabase#query"

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 43
    invoke-virtual/range {p0 .. p7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 44
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 46
    return-object v0
.end method

.method public static query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "database"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 51
    const-string v1, "SQLiteDatabase#query"

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 52
    invoke-virtual/range {p0 .. p8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 53
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 55
    return-object v0
.end method

.method public static query(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "database"
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 24
    const-string v1, "SQLiteDatabase#query"

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 25
    invoke-virtual/range {p0 .. p9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 26
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 28
    return-object v0
.end method

.method public static query(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 3
    .parameter "database"
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"
    .parameter "cancellationSignal"
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 33
    const-string v1, "SQLiteDatabase#query"

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 34
    invoke-virtual/range {p0 .. p10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 35
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 37
    return-object v0
.end method

.method public static queryWithFactory(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "database"
    .parameter "cursorFactory"
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 60
    const-string v1, "SQLiteDatabase#queryWithFactory"

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 61
    invoke-virtual/range {p0 .. p10}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 62
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 64
    return-object v0
.end method

.method public static queryWithFactory(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 3
    .parameter "database"
    .parameter "cursorFactory"
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"
    .parameter "cancellationSignal"
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 69
    const-string v1, "SQLiteDatabase#queryWithFactory"

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 70
    invoke-virtual/range {p0 .. p11}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 71
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 73
    return-object v0
.end method

.method public static rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "database"
    .parameter "sql"
    .parameter "selectionArgs"
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 78
    const-string v1, "SQLiteDatabase#rawQuery"

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 79
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 80
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 82
    return-object v0
.end method

.method public static rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 3
    .parameter "database"
    .parameter "sql"
    .parameter "selectionArgs"
    .parameter "cancellationSignal"
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 87
    const-string v1, "SQLiteDatabase#rawQuery"

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 89
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 91
    return-object v0
.end method

.method public static rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "database"
    .parameter "cursorFactory"
    .parameter "sql"
    .parameter "selectionArgs"
    .parameter "editTable"
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 96
    const-string v1, "SQLiteDatabase#rawQueryWithFactory"

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 97
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 98
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 100
    return-object v0
.end method

.method public static rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 3
    .parameter "database"
    .parameter "cursorFactory"
    .parameter "sql"
    .parameter "selectionArgs"
    .parameter "editTable"
    .parameter "cancellationSignal"
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 105
    const-string v1, "SQLiteDatabase#rawQueryWithFactory"

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 106
    invoke-virtual/range {p0 .. p5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 107
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 109
    return-object v0
.end method

.method public static replace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .parameter "database"
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "initialValues"
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 141
    const-string v2, "SQLiteDatabase#replace"

    sget-object v3, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 142
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 143
    .local v0, result:J
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 145
    return-wide v0
.end method

.method public static replaceOrThrow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .parameter "database"
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "initialValues"
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 150
    const-string v2, "SQLiteDatabase#replaceOrThrow"

    sget-object v3, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 151
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 152
    .local v0, result:J
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 154
    return-wide v0
.end method

.method public static update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "database"
    .parameter "table"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 168
    const-string v1, "SQLiteDatabase#update"

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 169
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 170
    .local v0, result:I
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 172
    return v0
.end method

.method public static updateWithOnConflict(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 3
    .parameter "database"
    .parameter "table"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"
    .parameter "conflictAlgorithm"
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 177
    const-string v1, "SQLiteDatabase#updateWithOnConflict"

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 178
    invoke-virtual/range {p0 .. p5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    .line 179
    .local v0, result:I
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 181
    return v0
.end method
