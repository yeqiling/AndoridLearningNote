.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
.super Ljava/lang/Object;
.source "DisplayLeakActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/internal/DisplayLeakActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadLeaks"
.end annotation


# static fields
.field static final backgroundExecutor:Ljava/util/concurrent/Executor;

.field static final inFlight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

.field private final leakDirectory:Ljava/io/File;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    .line 365
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->backgroundExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    .line 386
    invoke-static {}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->detectedLeakDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->leakDirectory:Ljava/io/File;

    .line 387
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->mainHandler:Landroid/os/Handler;

    .line 388
    return-void
.end method

.method static synthetic access$700(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;)Lcom/squareup/leakcanary/internal/DisplayLeakActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    return-object v0
.end method

.method static forgetActivity()V
    .locals 3

    .prologue
    .line 374
    sget-object v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;

    .line 375
    .local v1, loadLeaks:Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    goto :goto_0

    .line 377
    .end local v1           #loadLeaks:Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    :cond_0
    sget-object v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 378
    return-void
.end method

.method static load(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 368
    new-instance v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;

    invoke-direct {v0, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 369
    .local v0, loadLeaks:Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 371
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 391
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v9, leaks:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->leakDirectory:Ljava/io/File;

    new-instance v15, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$1;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;)V

    invoke-virtual {v14, v15}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 397
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_3

    .line 398
    move-object v1, v3

    .local v1, arr$:[Ljava/io/File;
    array-length v10, v1

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v7, v1, v8

    .line 399
    .local v7, heapDumpFile:Ljava/io/File;
    invoke-static {v7}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->leakResultFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v13

    .line 400
    .local v13, resultFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 402
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 403
    .end local v4           #fis:Ljava/io/FileInputStream;
    .local v5, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v11, Ljava/io/ObjectInputStream;

    invoke-direct {v11, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 404
    .local v11, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/leakcanary/HeapDump;

    .line 405
    .local v6, heapDump:Lcom/squareup/leakcanary/HeapDump;
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/squareup/leakcanary/AnalysisResult;

    .line 406
    .local v12, result:Lcom/squareup/leakcanary/AnalysisResult;
    new-instance v14, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    invoke-direct {v14, v6, v12}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;-><init>(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    .line 415
    if-eqz v5, :cond_4

    .line 417
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 398
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v6           #heapDump:Lcom/squareup/leakcanary/HeapDump;
    .end local v11           #ois:Ljava/io/ObjectInputStream;
    .end local v12           #result:Lcom/squareup/leakcanary/AnalysisResult;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 418
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v6       #heapDump:Lcom/squareup/leakcanary/HeapDump;
    .restart local v11       #ois:Ljava/io/ObjectInputStream;
    .restart local v12       #result:Lcom/squareup/leakcanary/AnalysisResult;
    :catch_0
    move-exception v14

    move-object v4, v5

    .line 419
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .line 407
    .end local v6           #heapDump:Lcom/squareup/leakcanary/HeapDump;
    .end local v11           #ois:Ljava/io/ObjectInputStream;
    .end local v12           #result:Lcom/squareup/leakcanary/AnalysisResult;
    :catch_1
    move-exception v14

    :goto_2
    move-object v2, v14

    .line 410
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 411
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 412
    const-string v14, "DisplayLeakActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not read result file, deleted result and heap dump:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 415
    if-eqz v4, :cond_0

    .line 417
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 418
    :catch_2
    move-exception v14

    goto :goto_1

    .line 415
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    :goto_4
    if-eqz v4, :cond_1

    .line 417
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 419
    :cond_1
    :goto_5
    throw v14

    .line 423
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #heapDumpFile:Ljava/io/File;
    .end local v13           #resultFile:Ljava/io/File;
    :cond_2
    new-instance v14, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$2;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;)V

    invoke-static {v9, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 430
    .end local v1           #arr$:[Ljava/io/File;
    .end local v8           #i$:I
    .end local v10           #len$:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->mainHandler:Landroid/os/Handler;

    new-instance v15, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v9}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$3;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;Ljava/util/List;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 439
    return-void

    .line 407
    .restart local v1       #arr$:[Ljava/io/File;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v7       #heapDumpFile:Ljava/io/File;
    .restart local v8       #i$:I
    .restart local v10       #len$:I
    .restart local v13       #resultFile:Ljava/io/File;
    :catch_3
    move-exception v14

    :goto_6
    move-object v2, v14

    goto :goto_3

    .line 418
    :catch_4
    move-exception v15

    goto :goto_5

    .line 415
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v14

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 407
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v14

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v14

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v6       #heapDump:Lcom/squareup/leakcanary/HeapDump;
    .restart local v11       #ois:Ljava/io/ObjectInputStream;
    .restart local v12       #result:Lcom/squareup/leakcanary/AnalysisResult;
    :cond_4
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method
