.class public final Lcom/squareup/leakcanary/internal/LeakCanaryInternals;
.super Ljava/lang/Object;
.source "LeakCanaryInternals.java"


# static fields
.field public static final LG:Ljava/lang/String; = "LGE"

.field public static final LOLLIPOP_MR1:I = 0x16

.field public static final MOTOROLA:Ljava/lang/String; = "motorola"

.field public static final NVIDIA:Ljava/lang/String; = "NVIDIA"

.field public static final SAMSUNG:Ljava/lang/String; = "samsung"

.field private static final fileIoExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->fileIoExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static classSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "className"

    .prologue
    .line 88
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 89
    .local v0, separator:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 92
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static detectedLeakDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->storageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "detected_leaks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 62
    return-object v0
.end method

.method public static executeOnFileIoThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 49
    sget-object v0, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->fileIoExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method public static findNextAvailableHprofFile(I)Ljava/io/File;
    .locals 6
    .parameter "maxFiles"

    .prologue
    .line 75
    invoke-static {}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->detectedLeakDirectory()Ljava/io/File;

    move-result-object v0

    .line 76
    .local v0, directory:Ljava/io/File;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p0, :cond_1

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "heap_dump_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".hprof"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, heapDumpName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 83
    .end local v1           #file:Ljava/io/File;
    .end local v2           #heapDumpName:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 76
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #heapDumpName:Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v1           #file:Ljava/io/File;
    .end local v2           #heapDumpName:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isExternalStorageWritable()Z
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isInServiceProcess(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 17
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, serviceClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Service;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 114
    .local v11, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v11, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 119
    .local v10, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v14, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v14, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 121
    .local v7, mainProcess:Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v3, component:Landroid/content/ComponentName;
    const/4 v14, 0x0

    :try_start_1
    invoke-virtual {v11, v3, v14}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 130
    .local v13, serviceInfo:Landroid/content/pm/ServiceInfo;
    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 131
    const-string v14, "AndroidUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Did not expect service "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to run in main process "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v14, 0x0

    .line 152
    .end local v3           #component:Landroid/content/ComponentName;
    .end local v7           #mainProcess:Ljava/lang/String;
    .end local v10           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v13           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :goto_0
    return v14

    .line 115
    :catch_0
    move-exception v4

    .line 116
    .local v4, e:Ljava/lang/Exception;
    const-string v14, "AndroidUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not get package info for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    const/4 v14, 0x0

    goto :goto_0

    .line 125
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v3       #component:Landroid/content/ComponentName;
    .restart local v7       #mainProcess:Ljava/lang/String;
    .restart local v10       #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v6

    .line 127
    .local v6, ignored:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v14, 0x0

    goto :goto_0

    .line 137
    .end local v6           #ignored:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v13       #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    .line 138
    .local v8, myPid:I
    const-string v14, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 140
    .local v2, activityManager:Landroid/app/ActivityManager;
    const/4 v9, 0x0

    .line 141
    .local v9, myProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 142
    .local v12, process:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v14, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v14, v8, :cond_1

    .line 143
    move-object v9, v12

    .line 147
    .end local v12           #process:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    if-nez v9, :cond_3

    .line 148
    const-string v14, "AndroidUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not find running process for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v14, 0x0

    goto :goto_0

    .line 152
    :cond_3
    iget-object v14, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v15, v13, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    goto :goto_0
.end method

.method public static leakResultFile(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .parameter "heapdumpFile"

    .prologue
    .line 66
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, componentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    .local v0, appContext:Landroid/content/Context;
    new-instance v1, Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;

    invoke-direct {v1, v0, p1, p2}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;-><init>(Landroid/content/Context;Ljava/lang/Class;Z)V

    invoke-static {v1}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->executeOnFileIoThread(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method public static storageDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 53
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 54
    .local v0, downloadsDirectory:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "leakcanary"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .local v1, leakCanaryDirectory:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 56
    return-object v1
.end method
