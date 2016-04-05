.class public Lcom/squareup/leakcanary/DisplayLeakService;
.super Lcom/squareup/leakcanary/AbstractAnalysisResultService;
.source "DisplayLeakService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/squareup/leakcanary/AbstractAnalysisResultService;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterDefaultHandling(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Ljava/lang/String;)V
    .locals 0
    .parameter "heapDump"
    .parameter "result"
    .parameter "leakInfo"

    .prologue
    .line 143
    return-void
.end method

.method protected final onHeapAnalyzed(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;)V
    .locals 27
    .parameter "heapDump"
    .parameter "result"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 49
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/leakcanary/LeakCanary;->leakInfo(Landroid/content/Context;Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Z)Ljava/lang/String;

    move-result-object v12

    .line 50
    .local v12, leakInfo:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0xfa0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    .line 51
    const-string v23, "LeakCanary"

    move-object/from16 v0, v23

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Exception;

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/squareup/leakcanary/AnalysisResult;->leakFound:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/squareup/leakcanary/AnalysisResult;->excludedLeak:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 60
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v12}, Lcom/squareup/leakcanary/DisplayLeakService;->afterDefaultHandling(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Ljava/lang/String;)V

    .line 135
    :cond_2
    :goto_0
    return-void

    .line 53
    :cond_3
    const-string v23, "\n"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 54
    .local v15, lines:[Ljava/lang/String;
    move-object v4, v15

    .local v4, arr$:[Ljava/lang/String;
    array-length v13, v4

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    if-ge v11, v13, :cond_0

    aget-object v14, v4, v11

    .line 55
    .local v14, line:Ljava/lang/String;
    const-string v23, "LeakCanary"

    move-object/from16 v0, v23

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 64
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v13           #len$:I
    .end local v14           #line:Ljava/lang/String;
    .end local v15           #lines:[Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/leakcanary/DisplayLeakService;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/squareup/leakcanary/R$integer;->__leak_canary_max_stored_leaks:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    .line 65
    .local v16, maxStoredLeaks:I
    invoke-static/range {v16 .. v16}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->findNextAvailableHprofFile(I)Ljava/io/File;

    move-result-object v21

    .line 67
    .local v21, renamedFile:Ljava/io/File;
    if-nez v21, :cond_5

    .line 69
    const-string v23, "LeakCanary"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Leak result dropped because we already store "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " leak traces."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v12}, Lcom/squareup/leakcanary/DisplayLeakService;->afterDefaultHandling(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/squareup/leakcanary/HeapDump;->renameFile(Ljava/io/File;)Lcom/squareup/leakcanary/HeapDump;

    move-result-object p1

    .line 77
    invoke-static/range {v21 .. v21}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->leakResultFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v22

    .line 78
    .local v22, resultFile:Ljava/io/File;
    const/4 v9, 0x0

    .line 80
    .local v9, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .local v10, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v19, Ljava/io/ObjectOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 82
    .local v19, oos:Ljava/io/ObjectOutputStream;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 83
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 89
    if-eqz v10, :cond_6

    .line 91
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 97
    :cond_6
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v20

    .line 101
    .local v20, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Exception;

    move-object/from16 v23, v0

    if-nez v23, :cond_8

    .line 102
    sget v23, Lcom/squareup/leakcanary/R$string;->__leak_canary_class_has_leaked:I

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->classSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/squareup/leakcanary/DisplayLeakService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, contentTitle:Ljava/lang/String;
    :goto_3
    sget v23, Lcom/squareup/leakcanary/R$string;->__leak_canary_notification_message:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/squareup/leakcanary/DisplayLeakService;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, contentText:Ljava/lang/String;
    const-string v23, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/squareup/leakcanary/DisplayLeakService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/NotificationManager;

    .line 113
    .local v18, notificationManager:Landroid/app/NotificationManager;
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    .line 114
    new-instance v17, Landroid/app/Notification;

    invoke-direct/range {v17 .. v17}, Landroid/app/Notification;-><init>()V

    .line 115
    .local v17, notification:Landroid/app/Notification;
    sget v23, Lcom/squareup/leakcanary/R$drawable;->__leak_canary_notification:I

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v17

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 117
    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x10

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 118
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v7, v6, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 133
    :goto_4
    const v23, -0x21504111

    move-object/from16 v0, v18

    move/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 134
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v12}, Lcom/squareup/leakcanary/DisplayLeakService;->afterDefaultHandling(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    .end local v6           #contentText:Ljava/lang/String;
    .end local v7           #contentTitle:Ljava/lang/String;
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v17           #notification:Landroid/app/Notification;
    .end local v18           #notificationManager:Landroid/app/NotificationManager;
    .end local v19           #oos:Ljava/io/ObjectOutputStream;
    .end local v20           #pendingIntent:Landroid/app/PendingIntent;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v8

    .line 85
    .local v8, e:Ljava/io/IOException;
    :goto_5
    :try_start_3
    const-string v23, "LeakCanary"

    const-string v24, "Could not save leak analysis result to disk"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v12}, Lcom/squareup/leakcanary/DisplayLeakService;->afterDefaultHandling(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    if-eqz v9, :cond_2

    .line 91
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 92
    :catch_1
    move-exception v23

    goto/16 :goto_0

    .line 89
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v23

    :goto_6
    if-eqz v9, :cond_7

    .line 91
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 93
    :cond_7
    :goto_7
    throw v23

    .line 105
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v19       #oos:Ljava/io/ObjectOutputStream;
    .restart local v20       #pendingIntent:Landroid/app/PendingIntent;
    :cond_8
    sget v23, Lcom/squareup/leakcanary/R$string;->__leak_canary_analysis_failed:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/squareup/leakcanary/DisplayLeakService;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #contentTitle:Ljava/lang/String;
    goto/16 :goto_3

    .line 120
    .restart local v6       #contentText:Ljava/lang/String;
    .restart local v18       #notificationManager:Landroid/app/NotificationManager;
    :cond_9
    new-instance v23, Landroid/app/Notification$Builder;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v24, Lcom/squareup/leakcanary/R$drawable;->__leak_canary_notification:I

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 127
    .local v5, builder:Landroid/app/Notification$Builder;
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    .line 128
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v17

    .restart local v17       #notification:Landroid/app/Notification;
    goto/16 :goto_4

    .line 130
    .end local v17           #notification:Landroid/app/Notification;
    :cond_a
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v17

    .restart local v17       #notification:Landroid/app/Notification;
    goto/16 :goto_4

    .line 92
    .end local v5           #builder:Landroid/app/Notification$Builder;
    .end local v6           #contentText:Ljava/lang/String;
    .end local v7           #contentTitle:Ljava/lang/String;
    .end local v17           #notification:Landroid/app/Notification;
    .end local v18           #notificationManager:Landroid/app/NotificationManager;
    .end local v20           #pendingIntent:Landroid/app/PendingIntent;
    :catch_2
    move-exception v23

    goto/16 :goto_2

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v19           #oos:Ljava/io/ObjectOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v24

    goto :goto_7

    .line 89
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v23

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 84
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v8

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_5
.end method
