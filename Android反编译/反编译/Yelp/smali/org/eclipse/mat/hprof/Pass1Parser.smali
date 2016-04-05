.class public Lorg/eclipse/mat/hprof/Pass1Parser;
.super Lorg/eclipse/mat/hprof/AbstractParser;
.source "Pass1Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;,
        Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;,
        Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;
    }
.end annotation


# static fields
.field private static final PATTERN_OBJ_ARRAY:Ljava/util/regex/Pattern;

.field private static final PATTERN_PRIMITIVE_ARRAY:Ljava/util/regex/Pattern;


# instance fields
.field private class2name:Lorg/eclipse/mat/collect/HashMapLongObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapLongObject",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private classSerNum2id:Lorg/eclipse/mat/collect/HashMapLongObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapLongObject",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

.field private id2frame:Lorg/eclipse/mat/collect/HashMapLongObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapLongObject",
            "<",
            "Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;",
            ">;"
        }
    .end annotation
.end field

.field private monitor:Lorg/eclipse/mat/util/SimpleMonitor$Listener;

.field private serNum2stackTrace:Lorg/eclipse/mat/collect/HashMapLongObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapLongObject",
            "<",
            "Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;",
            ">;"
        }
    .end annotation
.end field

.field private thread2id:Lorg/eclipse/mat/collect/HashMapLongObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapLongObject",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private thread2locals:Lorg/eclipse/mat/collect/HashMapLongObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapLongObject",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "^(\\[+)L(.*);$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/eclipse/mat/hprof/Pass1Parser;->PATTERN_OBJ_ARRAY:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "^(\\[+)(.)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/eclipse/mat/hprof/Pass1Parser;->PATTERN_PRIMITIVE_ARRAY:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/mat/hprof/IHprofParserHandler;Lorg/eclipse/mat/util/SimpleMonitor$Listener;)V
    .locals 1
    .parameter "handler"
    .parameter "monitor"

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/eclipse/mat/hprof/AbstractParser;-><init>()V

    .line 45
    new-instance v0, Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-direct {v0}, Lorg/eclipse/mat/collect/HashMapLongObject;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->class2name:Lorg/eclipse/mat/collect/HashMapLongObject;

    .line 46
    new-instance v0, Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-direct {v0}, Lorg/eclipse/mat/collect/HashMapLongObject;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->thread2id:Lorg/eclipse/mat/collect/HashMapLongObject;

    .line 47
    new-instance v0, Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-direct {v0}, Lorg/eclipse/mat/collect/HashMapLongObject;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->id2frame:Lorg/eclipse/mat/collect/HashMapLongObject;

    .line 48
    new-instance v0, Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-direct {v0}, Lorg/eclipse/mat/collect/HashMapLongObject;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->serNum2stackTrace:Lorg/eclipse/mat/collect/HashMapLongObject;

    .line 49
    new-instance v0, Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-direct {v0}, Lorg/eclipse/mat/collect/HashMapLongObject;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->classSerNum2id:Lorg/eclipse/mat/collect/HashMapLongObject;

    .line 50
    new-instance v0, Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-direct {v0}, Lorg/eclipse/mat/collect/HashMapLongObject;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->thread2locals:Lorg/eclipse/mat/collect/HashMapLongObject;

    .line 56
    iput-object p1, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    .line 57
    iput-object p2, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->monitor:Lorg/eclipse/mat/util/SimpleMonitor$Listener;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/mat/hprof/Pass1Parser;)Lorg/eclipse/mat/collect/HashMapLongObject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->classSerNum2id:Lorg/eclipse/mat/collect/HashMapLongObject;

    return-object v0
.end method

.method static synthetic access$100(Lorg/eclipse/mat/hprof/Pass1Parser;)Lorg/eclipse/mat/collect/HashMapLongObject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->class2name:Lorg/eclipse/mat/collect/HashMapLongObject;

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/mat/hprof/Pass1Parser;)Lorg/eclipse/mat/collect/HashMapLongObject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->id2frame:Lorg/eclipse/mat/collect/HashMapLongObject;

    return-object v0
.end method

.method private dumpThreads()V
    .locals 18

    .prologue
    .line 495
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->serNum2stackTrace:Lorg/eclipse/mat/collect/HashMapLongObject;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->serNum2stackTrace:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {v13}, Lorg/eclipse/mat/collect/HashMapLongObject;->size()I

    move-result v13

    const/4 v14, 0x1

    if-gt v13, v14, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    const/4 v7, 0x0

    .line 498
    .local v7, out:Ljava/io/PrintWriter;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-interface {v14}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v14

    invoke-virtual {v14}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getPrefix()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "threads"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 500
    .local v9, outputName:Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/io/PrintWriter;

    new-instance v13, Ljava/io/FileWriter;

    invoke-direct {v13, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v13}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 502
    .end local v7           #out:Ljava/io/PrintWriter;
    .local v8, out:Ljava/io/PrintWriter;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->serNum2stackTrace:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {v13}, Lorg/eclipse/mat/collect/HashMapLongObject;->values()Ljava/util/Iterator;

    move-result-object v4

    .line 503
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;>;"
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 504
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;

    .line 505
    .local v10, stack:Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->thread2id:Lorg/eclipse/mat/collect/HashMapLongObject;

    iget-wide v14, v10, Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;->threadSerialNr:J

    invoke-virtual {v13, v14, v15}, Lorg/eclipse/mat/collect/HashMapLongObject;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 506
    .local v12, tid:Ljava/lang/Long;
    if-eqz v12, :cond_2

    .line 507
    if-nez v12, :cond_3

    const-string v11, "<unknown>"

    .line 509
    .local v11, threadId:Ljava/lang/String;
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Thread "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 511
    const-string v13, "  locals:"

    invoke-virtual {v8, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->thread2locals:Lorg/eclipse/mat/collect/HashMapLongObject;

    iget-wide v14, v10, Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;->threadSerialNr:J

    invoke-virtual {v13, v14, v15}, Lorg/eclipse/mat/collect/HashMapLongObject;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 513
    .local v6, locals:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;>;"
    if-eqz v6, :cond_4

    .line 514
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;

    .line 515
    .local v5, javaLocal:Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    objecId=0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v5, Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;->objectId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", line="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v5, Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;->lineNumber:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 526
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;>;"
    .end local v5           #javaLocal:Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;
    .end local v6           #locals:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;>;"
    .end local v10           #stack:Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;
    .end local v11           #threadId:Ljava/lang/String;
    .end local v12           #tid:Ljava/lang/Long;
    :catch_0
    move-exception v2

    move-object v7, v8

    .line 527
    .end local v8           #out:Ljava/io/PrintWriter;
    .local v2, e:Ljava/io/IOException;
    .restart local v7       #out:Ljava/io/PrintWriter;
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->monitor:Lorg/eclipse/mat/util/SimpleMonitor$Listener;

    sget-object v14, Lorg/eclipse/mat/util/IProgressListener$Severity;->WARNING:Lorg/eclipse/mat/util/IProgressListener$Severity;

    sget-object v15, Lorg/eclipse/mat/hprof/Messages;->Pass1Parser_Error_WritingThreadsInformation:Lorg/eclipse/mat/hprof/Messages;

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15, v2}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->sendUserMessage(Lorg/eclipse/mat/util/IProgressListener$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 530
    if-eqz v7, :cond_0

    .line 532
    :try_start_3
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 533
    :catch_1
    move-exception v13

    goto/16 :goto_0

    .line 507
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #out:Ljava/io/PrintWriter;
    .restart local v4       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;>;"
    .restart local v8       #out:Ljava/io/PrintWriter;
    .restart local v10       #stack:Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;
    .restart local v12       #tid:Ljava/lang/Long;
    :cond_3
    :try_start_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 521
    .restart local v6       #locals:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;>;"
    .restart local v11       #threadId:Ljava/lang/String;
    :cond_4
    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 530
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;>;"
    .end local v6           #locals:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;>;"
    .end local v10           #stack:Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;
    .end local v11           #threadId:Ljava/lang/String;
    .end local v12           #tid:Ljava/lang/Long;
    :catchall_0
    move-exception v13

    move-object v7, v8

    .end local v8           #out:Ljava/io/PrintWriter;
    .restart local v7       #out:Ljava/io/PrintWriter;
    :goto_5
    if-eqz v7, :cond_5

    .line 532
    :try_start_5
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 535
    :cond_5
    :goto_6
    throw v13

    .line 523
    .end local v7           #out:Ljava/io/PrintWriter;
    .restart local v4       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;>;"
    .restart local v8       #out:Ljava/io/PrintWriter;
    :cond_6
    :try_start_6
    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    .line 524
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->monitor:Lorg/eclipse/mat/util/SimpleMonitor$Listener;

    sget-object v14, Lorg/eclipse/mat/util/IProgressListener$Severity;->INFO:Lorg/eclipse/mat/util/IProgressListener$Severity;

    sget-object v15, Lorg/eclipse/mat/hprof/Messages;->Pass1Parser_Info_WroteThreadsTo:Lorg/eclipse/mat/hprof/Messages;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v9, v16, v17

    invoke-static/range {v15 .. v16}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->sendUserMessage(Lorg/eclipse/mat/util/IProgressListener$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 530
    if-eqz v8, :cond_7

    .line 532
    :try_start_7
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-object v7, v8

    .line 535
    .end local v8           #out:Ljava/io/PrintWriter;
    .restart local v7       #out:Ljava/io/PrintWriter;
    goto/16 :goto_0

    .line 533
    .end local v7           #out:Ljava/io/PrintWriter;
    .restart local v8       #out:Ljava/io/PrintWriter;
    :catch_2
    move-exception v13

    move-object v7, v8

    .line 535
    .end local v8           #out:Ljava/io/PrintWriter;
    .restart local v7       #out:Ljava/io/PrintWriter;
    goto/16 :goto_0

    .line 533
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;>;"
    :catch_3
    move-exception v14

    goto :goto_6

    .line 530
    :catchall_1
    move-exception v13

    goto :goto_5

    .line 526
    :catch_4
    move-exception v2

    goto :goto_4

    .end local v7           #out:Ljava/io/PrintWriter;
    .restart local v4       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;>;"
    .restart local v8       #out:Ljava/io/PrintWriter;
    :cond_7
    move-object v7, v8

    .end local v8           #out:Ljava/io/PrintWriter;
    .restart local v7       #out:Ljava/io/PrintWriter;
    goto/16 :goto_0
.end method

.method private getStringConstant(J)Ljava/lang/String;
    .locals 5
    .parameter "address"

    .prologue
    .line 485
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    const-string v0, ""

    .line 488
    :cond_0
    :goto_0
    return-object v0

    .line 487
    :cond_1
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-interface {v1}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->getConstantPool()Lorg/eclipse/mat/collect/HashMapLongObject;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/mat/collect/HashMapLongObject;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 488
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->Pass1Parser_Error_UnresolvedName:Lorg/eclipse/mat/hprof/Messages;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private readClassDump(J)V
    .locals 29
    .parameter "segmentStartPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readID()J

    move-result-wide v5

    .line 338
    .local v5, address:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 339
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readID()J

    move-result-wide v8

    .line 340
    .local v8, superClassObjectId:J
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readID()J

    move-result-wide v10

    .line 343
    .local v10, classLoaderObjectId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->idSize:I

    move/from16 v28, v0

    mul-int/lit8 v28, v28, 0x4

    add-int/lit8 v28, v28, 0x4

    invoke-virtual/range {v27 .. v28}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readUnsignedShort()I

    move-result v14

    .line 347
    .local v14, constantPoolSize:I
    const/16 v16, 0x0

    .local v16, ii:I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v14, :cond_0

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 349
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->skipValue()V

    .line 347
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 353
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readUnsignedShort()I

    move-result v23

    .line 354
    .local v23, numStaticFields:I
    move/from16 v0, v23

    new-array v12, v0, [Lorg/eclipse/mat/snapshot/model/Field;

    .line 356
    .local v12, statics:[Lorg/eclipse/mat/snapshot/model/Field;
    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 357
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readID()J

    move-result-wide v20

    .line 358
    .local v20, nameId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lorg/eclipse/mat/hprof/Pass1Parser;->getStringConstant(J)Ljava/lang/String;

    move-result-object v19

    .line 360
    .local v19, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readByte()B

    move-result v25

    .line 362
    .local v25, type:B
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/mat/hprof/Pass1Parser;->readValue(Lorg/eclipse/mat/snapshot/ISnapshot;I)Ljava/lang/Object;

    move-result-object v26

    .line 363
    .local v26, value:Ljava/lang/Object;
    new-instance v27, Lorg/eclipse/mat/snapshot/model/Field;

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/mat/snapshot/model/Field;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    aput-object v27, v12, v16

    .line 356
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 367
    .end local v19           #name:Ljava/lang/String;
    .end local v20           #nameId:J
    .end local v25           #type:B
    .end local v26           #value:Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readUnsignedShort()I

    move-result v22

    .line 368
    .local v22, numInstanceFields:I
    move/from16 v0, v22

    new-array v13, v0, [Lorg/eclipse/mat/snapshot/model/FieldDescriptor;

    .line 370
    .local v13, fields:[Lorg/eclipse/mat/snapshot/model/FieldDescriptor;
    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 371
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readID()J

    move-result-wide v20

    .line 372
    .restart local v20       #nameId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lorg/eclipse/mat/hprof/Pass1Parser;->getStringConstant(J)Ljava/lang/String;

    move-result-object v19

    .line 374
    .restart local v19       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readByte()B

    move-result v25

    .line 375
    .restart local v25       #type:B
    new-instance v27, Lorg/eclipse/mat/snapshot/model/FieldDescriptor;

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/eclipse/mat/snapshot/model/FieldDescriptor;-><init>(Ljava/lang/String;I)V

    aput-object v27, v13, v16

    .line 370
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 379
    .end local v19           #name:Ljava/lang/String;
    .end local v20           #nameId:J
    .end local v25           #type:B
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->class2name:Lorg/eclipse/mat/collect/HashMapLongObject;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Lorg/eclipse/mat/collect/HashMapLongObject;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 380
    .local v7, className:Ljava/lang/String;
    if-nez v7, :cond_3

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "unknown-name@0x"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 382
    :cond_3
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v27

    const/16 v28, 0x5b

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 385
    sget-object v27, Lorg/eclipse/mat/hprof/Pass1Parser;->PATTERN_OBJ_ARRAY:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 386
    .local v18, matcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->matches()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 387
    const/16 v27, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v17

    .line 388
    .local v17, l:I
    const/16 v27, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 389
    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 390
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "[]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 389
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 394
    .end local v17           #l:I
    :cond_4
    sget-object v27, Lorg/eclipse/mat/hprof/Pass1Parser;->PATTERN_PRIMITIVE_ARRAY:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 395
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->matches()Z

    move-result v27

    if-eqz v27, :cond_7

    .line 396
    const/16 v27, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v15, v27, -0x1

    .line 397
    .local v15, count:I
    const-string v7, "unknown[]"

    .line 399
    const/16 v27, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->charAt(I)C

    move-result v24

    .line 400
    .local v24, signature:C
    const/16 v16, 0x0

    :goto_4
    sget-object v27, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->SIGNATURES:[B

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 401
    sget-object v27, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->SIGNATURES:[B

    aget-byte v27, v27, v16

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 402
    sget-object v27, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->TYPE:[Ljava/lang/String;

    aget-object v7, v27, v16

    .line 407
    :cond_5
    const/16 v16, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v0, v15, :cond_7

    .line 408
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "[]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 407
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 400
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 412
    .end local v15           #count:I
    .end local v18           #matcher:Ljava/util/regex/Matcher;
    .end local v24           #signature:C
    :cond_7
    new-instance v4, Lorg/eclipse/mat/parser/model/ClassImpl;

    invoke-direct/range {v4 .. v13}, Lorg/eclipse/mat/parser/model/ClassImpl;-><init>(JLjava/lang/String;JJ[Lorg/eclipse/mat/snapshot/model/Field;[Lorg/eclipse/mat/snapshot/model/FieldDescriptor;)V

    .line 414
    .local v4, clazz:Lorg/eclipse/mat/parser/model/ClassImpl;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-wide/from16 v1, p1

    invoke-interface {v0, v4, v1, v2}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->addClass(Lorg/eclipse/mat/parser/model/ClassImpl;J)V

    .line 415
    return-void
.end method

.method private readDumpSegments(J)V
    .locals 13
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/io/PositionInputStream;->position()J

    move-result-wide v0

    .line 205
    .local v0, segmentStartPos:J
    add-long v4, v0, p1

    .line 207
    .local v4, segmentsEndPos:J
    :goto_0
    cmp-long v3, v0, v4

    if-gez v3, :cond_2

    .line 208
    const-wide/16 v8, 0x3e8

    div-long v6, v0, v8

    .line 209
    .local v6, workDone:J
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->monitor:Lorg/eclipse/mat/util/SimpleMonitor$Listener;

    invoke-virtual {v3}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->getWorkDone()J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-gez v3, :cond_1

    .line 210
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->monitor:Lorg/eclipse/mat/util/SimpleMonitor$Listener;

    invoke-virtual {v3}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->isProbablyCanceled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    new-instance v3, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct {v3}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v3

    .line 213
    :cond_0
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->monitor:Lorg/eclipse/mat/util/SimpleMonitor$Listener;

    invoke-virtual {v3, v6, v7}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->totalWorkDone(J)V

    .line 216
    :cond_1
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readUnsignedByte()I

    move-result v2

    .line 217
    .local v2, segmentType:I
    sparse-switch v2, :sswitch_data_0

    .line 290
    new-instance v3, Lorg/eclipse/mat/SnapshotException;

    sget-object v8, Lorg/eclipse/mat/hprof/Messages;->Pass1Parser_Error_InvalidHeapDumpFile:Lorg/eclipse/mat/hprof/Messages;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Lorg/eclipse/mat/SnapshotException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 219
    :sswitch_0
    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v3, v8}, Lorg/eclipse/mat/hprof/Pass1Parser;->readGC(II)V

    .line 295
    :goto_1
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/io/PositionInputStream;->position()J

    move-result-wide v0

    .line 296
    goto :goto_0

    .line 222
    :sswitch_1
    const/16 v3, 0x100

    invoke-direct {p0, v3}, Lorg/eclipse/mat/hprof/Pass1Parser;->readGCThreadObject(I)V

    goto :goto_1

    .line 225
    :sswitch_2
    const/16 v3, 0x80

    iget v8, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->idSize:I

    invoke-direct {p0, v3, v8}, Lorg/eclipse/mat/hprof/Pass1Parser;->readGC(II)V

    goto :goto_1

    .line 228
    :sswitch_3
    const/4 v3, 0x4

    const/4 v8, 0x1

    invoke-direct {p0, v3, v8}, Lorg/eclipse/mat/hprof/Pass1Parser;->readGCWithThreadContext(IZ)V

    goto :goto_1

    .line 231
    :sswitch_4
    const/16 v3, 0x40

    const/4 v8, 0x1

    invoke-direct {p0, v3, v8}, Lorg/eclipse/mat/hprof/Pass1Parser;->readGCWithThreadContext(IZ)V

    goto :goto_1

    .line 234
    :sswitch_5
    const/16 v3, 0x80

    const/4 v8, 0x0

    invoke-direct {p0, v3, v8}, Lorg/eclipse/mat/hprof/Pass1Parser;->readGCWithThreadContext(IZ)V

    goto :goto_1

    .line 237
    :sswitch_6
    const/4 v3, 0x2

    const/4 v8, 0x0

    invoke-direct {p0, v3, v8}, Lorg/eclipse/mat/hprof/Pass1Parser;->readGC(II)V

    goto :goto_1

    .line 240
    :sswitch_7
    const/16 v3, 0x10

    const/4 v8, 0x4

    invoke-direct {p0, v3, v8}, Lorg/eclipse/mat/hprof/Pass1Parser;->readGC(II)V

    goto :goto_1

    .line 243
    :sswitch_8
    const/16 v3, 0x20

    const/4 v8, 0x0

    invoke-direct {p0, v3, v8}, Lorg/eclipse/mat/hprof/Pass1Parser;->readGC(II)V

    goto :goto_1

    .line 246
    :sswitch_9
    invoke-direct {p0, v0, v1}, Lorg/eclipse/mat/hprof/Pass1Parser;->readClassDump(J)V

    goto :goto_1

    .line 249
    :sswitch_a
    invoke-direct {p0, v0, v1}, Lorg/eclipse/mat/hprof/Pass1Parser;->readInstanceDump(J)V

    goto :goto_1

    .line 252
    :sswitch_b
    invoke-direct {p0, v0, v1}, Lorg/eclipse/mat/hprof/Pass1Parser;->readObjectArrayDump(J)V

    goto :goto_1

    .line 255
    :sswitch_c
    invoke-direct {p0, v0, v1}, Lorg/eclipse/mat/hprof/Pass1Parser;->readPrimitiveArrayDump(J)V

    goto :goto_1

    .line 261
    :sswitch_d
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    iget v8, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->idSize:I

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v3, v8}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    goto :goto_1

    .line 264
    :sswitch_e
    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v3, v8}, Lorg/eclipse/mat/hprof/Pass1Parser;->readGC(II)V

    goto :goto_1

    .line 267
    :sswitch_f
    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v3, v8}, Lorg/eclipse/mat/hprof/Pass1Parser;->readGC(II)V

    goto :goto_1

    .line 270
    :sswitch_10
    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v3, v8}, Lorg/eclipse/mat/hprof/Pass1Parser;->readGC(II)V

    goto :goto_1

    .line 273
    :sswitch_11
    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v3, v8}, Lorg/eclipse/mat/hprof/Pass1Parser;->readGC(II)V

    goto :goto_1

    .line 276
    :sswitch_12
    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v3, v8}, Lorg/eclipse/mat/hprof/Pass1Parser;->readGC(II)V

    goto :goto_1

    .line 280
    :sswitch_13
    const/4 v3, 0x1

    const/16 v8, 0x8

    invoke-direct {p0, v3, v8}, Lorg/eclipse/mat/hprof/Pass1Parser;->readGC(II)V

    goto :goto_1

    .line 283
    :sswitch_14
    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v3, v8}, Lorg/eclipse/mat/hprof/Pass1Parser;->readGC(II)V

    goto/16 :goto_1

    .line 286
    :sswitch_15
    invoke-direct {p0, v0, v1}, Lorg/eclipse/mat/hprof/Pass1Parser;->readPrimitiveArrayNoDataDump(J)V

    goto/16 :goto_1

    .line 297
    .end local v2           #segmentType:I
    .end local v6           #workDone:J
    :cond_2
    return-void

    .line 217
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_1
        0x20 -> :sswitch_9
        0x21 -> :sswitch_a
        0x22 -> :sswitch_b
        0x23 -> :sswitch_c
        0x89 -> :sswitch_e
        0x8a -> :sswitch_f
        0x8b -> :sswitch_10
        0x8c -> :sswitch_11
        0x8d -> :sswitch_12
        0x8e -> :sswitch_13
        0x90 -> :sswitch_14
        0xc3 -> :sswitch_15
        0xfe -> :sswitch_d
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method private readGC(II)V
    .locals 7
    .parameter "gcType"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readID()J

    move-result-wide v2

    .line 310
    .local v2, id:J
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    const-wide/16 v4, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->addGCRoot(JJI)V

    .line 312
    if-lez p2, :cond_0

    iget-object v0, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v0, p2}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 313
    :cond_0
    return-void
.end method

.method private readGCThreadObject(I)V
    .locals 7
    .parameter "gcType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readID()J

    move-result-wide v2

    .line 301
    .local v2, id:J
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt()I

    move-result v0

    .line 302
    .local v0, threadSerialNo:I
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->thread2id:Lorg/eclipse/mat/collect/HashMapLongObject;

    int-to-long v4, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lorg/eclipse/mat/collect/HashMapLongObject;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    const-wide/16 v4, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->addGCRoot(JJI)V

    .line 305
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 306
    return-void
.end method

.method private readGCWithThreadContext(IZ)V
    .locals 10
    .parameter "gcType"
    .parameter "hasLineInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readID()J

    move-result-wide v2

    .line 317
    .local v2, id:J
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt()I

    move-result v8

    .line 318
    .local v8, threadSerialNo:I
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->thread2id:Lorg/eclipse/mat/collect/HashMapLongObject;

    int-to-long v4, v8

    invoke-virtual {v1, v4, v5}, Lorg/eclipse/mat/collect/HashMapLongObject;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 319
    .local v9, tid:Ljava/lang/Long;
    if-eqz v9, :cond_2

    .line 320
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move v6, p1

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->addGCRoot(JJI)V

    .line 325
    :goto_0
    if-eqz p2, :cond_1

    .line 326
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt()I

    move-result v0

    .line 327
    .local v0, lineNumber:I
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->thread2locals:Lorg/eclipse/mat/collect/HashMapLongObject;

    int-to-long v4, v8

    invoke-virtual {v1, v4, v5}, Lorg/eclipse/mat/collect/HashMapLongObject;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 328
    .local v7, locals:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;>;"
    if-nez v7, :cond_0

    .line 329
    new-instance v7, Ljava/util/ArrayList;

    .end local v7           #locals:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .restart local v7       #locals:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;>;"
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->thread2locals:Lorg/eclipse/mat/collect/HashMapLongObject;

    int-to-long v4, v8

    invoke-virtual {v1, v4, v5, v7}, Lorg/eclipse/mat/collect/HashMapLongObject;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_0
    new-instance v1, Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;

    invoke-direct {v1, v2, v3, v0, p1}, Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;-><init>(JII)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v0           #lineNumber:I
    .end local v7           #locals:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;>;"
    :cond_1
    return-void

    .line 322
    :cond_2
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    const-wide/16 v4, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->addGCRoot(JJI)V

    goto :goto_0
.end method

.method private readInstanceDump(J)V
    .locals 5
    .parameter "segmentStartPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readID()J

    move-result-wide v0

    .line 419
    .local v0, address:J
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-interface {v3, v0, v1, p1, p2}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->reportInstance(JJ)V

    .line 420
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    iget v4, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->idSize:I

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 421
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt()I

    move-result v2

    .line 422
    .local v2, payload:I
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v3, v2}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 423
    return-void
.end method

.method private readLoadClass()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readUnsignedInt()J

    move-result-wide v4

    .line 169
    .local v4, classSerNum:J
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readID()J

    move-result-wide v0

    .line 170
    .local v0, classID:J
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 171
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readID()J

    move-result-wide v6

    .line 173
    .local v6, nameID:J
    invoke-direct {p0, v6, v7}, Lorg/eclipse/mat/hprof/Pass1Parser;->getStringConstant(J)Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0x2f

    const/16 v9, 0x2e

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, className:Ljava/lang/String;
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->class2name:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {v3, v0, v1, v2}, Lorg/eclipse/mat/collect/HashMapLongObject;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->classSerNum2id:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v4, v5, v8}, Lorg/eclipse/mat/collect/HashMapLongObject;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method private readObjectArrayDump(J)V
    .locals 9
    .parameter "segmentStartPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readID()J

    move-result-wide v0

    .line 427
    .local v0, address:J
    iget-object v6, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-interface {v6, v0, v1, p1, p2}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->reportInstance(JJ)V

    .line 429
    iget-object v6, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 430
    iget-object v6, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v6}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt()I

    move-result v5

    .line 431
    .local v5, size:I
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readID()J

    move-result-wide v2

    .line 434
    .local v2, arrayClassObjectID:J
    iget-object v6, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-interface {v6, v2, v3}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->lookupClass(J)Lorg/eclipse/mat/snapshot/model/IClass;

    move-result-object v4

    .line 435
    .local v4, arrayType:Lorg/eclipse/mat/snapshot/model/IClass;
    if-nez v4, :cond_0

    iget-object v6, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-interface {v6, v2, v3}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->reportRequiredObjectArray(J)V

    .line 437
    :cond_0
    iget-object v6, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    iget v7, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->idSize:I

    mul-int/2addr v7, v5

    invoke-virtual {v6, v7}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 438
    return-void
.end method

.method private readPrimitiveArrayDump(J)V
    .locals 9
    .parameter "segmentStartPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    .line 441
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readID()J

    move-result-wide v0

    .line 442
    .local v0, address:J
    iget-object v7, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-interface {v7, v0, v1, p1, p2}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->reportInstance(JJ)V

    .line 444
    iget-object v7, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v7, v8}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 445
    iget-object v7, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v7}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt()I

    move-result v6

    .line 446
    .local v6, size:I
    iget-object v7, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v7}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readByte()B

    move-result v4

    .line 448
    .local v4, elementType:B
    if-lt v4, v8, :cond_0

    const/16 v7, 0xb

    if-le v4, v7, :cond_1

    .line 449
    :cond_0
    new-instance v7, Lorg/eclipse/mat/SnapshotException;

    sget-object v8, Lorg/eclipse/mat/hprof/Messages;->Pass1Parser_Error_IllegalType:Lorg/eclipse/mat/hprof/Messages;

    invoke-direct {v7, v8}, Lorg/eclipse/mat/SnapshotException;-><init>(Lorg/eclipse/mat/hprof/Messages;)V

    throw v7

    .line 453
    :cond_1
    sget-object v7, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->TYPE:[Ljava/lang/String;

    aget-object v5, v7, v4

    .line 454
    .local v5, name:Ljava/lang/String;
    iget-object v7, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    const/4 v8, 0x1

    invoke-interface {v7, v5, v8}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->lookupClassByName(Ljava/lang/String;Z)Lorg/eclipse/mat/snapshot/model/IClass;

    move-result-object v2

    .line 455
    .local v2, clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    if-nez v2, :cond_2

    iget-object v7, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-interface {v7, v4}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->reportRequiredPrimitiveArray(I)V

    .line 457
    :cond_2
    sget-object v7, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->ELEMENT_SIZE:[I

    aget v3, v7, v4

    .line 458
    .local v3, elementSize:I
    iget-object v7, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    mul-int v8, v3, v6

    invoke-virtual {v7, v8}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 459
    return-void
.end method

.method private readPrimitiveArrayNoDataDump(J)V
    .locals 9
    .parameter "segmentStartPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    .line 465
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readID()J

    move-result-wide v0

    .line 466
    .local v0, address:J
    iget-object v6, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-interface {v6, v0, v1, p1, p2}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->reportInstance(JJ)V

    .line 468
    iget-object v6, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v6, v7}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 469
    iget-object v6, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v6}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt()I

    move-result v5

    .line 470
    .local v5, size:I
    iget-object v6, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v6}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readByte()B

    move-result v3

    .line 472
    .local v3, elementType:B
    if-lt v3, v7, :cond_0

    const/16 v6, 0xb

    if-le v3, v6, :cond_1

    .line 473
    :cond_0
    new-instance v6, Lorg/eclipse/mat/SnapshotException;

    sget-object v7, Lorg/eclipse/mat/hprof/Messages;->Pass1Parser_Error_IllegalType:Lorg/eclipse/mat/hprof/Messages;

    invoke-direct {v6, v7}, Lorg/eclipse/mat/SnapshotException;-><init>(Lorg/eclipse/mat/hprof/Messages;)V

    throw v6

    .line 477
    :cond_1
    sget-object v6, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->TYPE:[Ljava/lang/String;

    aget-object v4, v6, v3

    .line 478
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    const/4 v7, 0x1

    invoke-interface {v6, v4, v7}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->lookupClassByName(Ljava/lang/String;Z)Lorg/eclipse/mat/snapshot/model/IClass;

    move-result-object v2

    .line 479
    .local v2, clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    if-nez v2, :cond_2

    .line 480
    iget-object v6, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-interface {v6, v3}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->reportRequiredPrimitiveArray(I)V

    .line 482
    :cond_2
    return-void
.end method

.method private readStackFrame(J)V
    .locals 20
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readID()J

    move-result-wide v6

    .line 180
    .local v6, frameId:J
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readID()J

    move-result-wide v14

    .line 181
    .local v14, methodName:J
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readID()J

    move-result-wide v16

    .line 182
    .local v16, methodSig:J
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readID()J

    move-result-wide v18

    .line 183
    .local v18, srcFile:J
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readUnsignedInt()J

    move-result-wide v12

    .line 184
    .local v12, classSerNum:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v5}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt()I

    move-result v8

    .line 185
    .local v8, lineNr:I
    new-instance v4, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/eclipse/mat/hprof/Pass1Parser;->getStringConstant(J)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lorg/eclipse/mat/hprof/Pass1Parser;->getStringConstant(J)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lorg/eclipse/mat/hprof/Pass1Parser;->getStringConstant(J)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v13}, Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;-><init>(Lorg/eclipse/mat/hprof/Pass1Parser;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 188
    .local v4, frame:Lorg/eclipse/mat/hprof/Pass1Parser$StackFrame;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->id2frame:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {v5, v6, v7, v4}, Lorg/eclipse/mat/collect/HashMapLongObject;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void
.end method

.method private readStackTrace(J)V
    .locals 12
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readUnsignedInt()J

    move-result-wide v2

    .line 193
    .local v2, stackTraceNr:J
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readUnsignedInt()J

    move-result-wide v4

    .line 194
    .local v4, threadNr:J
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readUnsignedInt()J

    move-result-wide v8

    .line 195
    .local v8, frameCount:J
    long-to-int v1, v8

    new-array v6, v1, [J

    .line 196
    .local v6, frameIds:[J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    int-to-long v10, v7

    cmp-long v1, v10, v8

    if-gez v1, :cond_0

    .line 197
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readID()J

    move-result-wide v10

    aput-wide v10, v6, v7

    .line 196
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 199
    :cond_0
    new-instance v0, Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;-><init>(Lorg/eclipse/mat/hprof/Pass1Parser;JJ[J)V

    .line 200
    .local v0, stackTrace:Lorg/eclipse/mat/hprof/Pass1Parser$StackTrace;
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->serNum2stackTrace:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {v1, v2, v3, v0}, Lorg/eclipse/mat/collect/HashMapLongObject;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method private readString(J)V
    .locals 7
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readID()J

    move-result-wide v2

    .line 162
    .local v2, id:J
    iget v1, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->idSize:I

    int-to-long v4, v1

    sub-long v4, p1, v4

    long-to-int v1, v4

    new-array v0, v1, [B

    .line 163
    .local v0, chars:[B
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v1, v0}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readFully([B)V

    .line 164
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-interface {v1}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->getConstantPool()Lorg/eclipse/mat/collect/HashMapLongObject;

    move-result-object v1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/eclipse/mat/collect/HashMapLongObject;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-void
.end method


# virtual methods
.method public read(Ljava/io/File;)V
    .locals 22
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v13, Lorg/eclipse/mat/parser/io/PositionInputStream;

    new-instance v14, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v13, v14}, Lorg/eclipse/mat/parser/io/PositionInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    .line 63
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->determineDumpNumber()I

    move-result v5

    .line 64
    .local v5, dumpNrToRead:I
    const/4 v4, 0x0

    .line 68
    .local v4, currentDumpNr:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-static {v13}, Lorg/eclipse/mat/hprof/Pass1Parser;->readVersion(Ljava/io/InputStream;)Lorg/eclipse/mat/hprof/AbstractParser$Version;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->version:Lorg/eclipse/mat/hprof/AbstractParser$Version;

    .line 69
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    const-string v14, "VERSION"

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->version:Lorg/eclipse/mat/hprof/AbstractParser$Version;

    invoke-virtual {v15}, Lorg/eclipse/mat/hprof/AbstractParser$Version;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v13}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->idSize:I

    .line 73
    move-object/from16 v0, p0

    iget v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->idSize:I

    const/4 v14, 0x4

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->idSize:I

    const/16 v14, 0x8

    if-eq v13, v14, :cond_0

    .line 74
    new-instance v13, Lorg/eclipse/mat/SnapshotException;

    sget-object v14, Lorg/eclipse/mat/hprof/Messages;->Pass1Parser_Error_SupportedDumps:Lorg/eclipse/mat/hprof/Messages;

    invoke-direct {v13, v14}, Lorg/eclipse/mat/SnapshotException;-><init>(Lorg/eclipse/mat/hprof/Messages;)V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :catchall_0
    move-exception v13

    .line 140
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v14}, Lorg/eclipse/mat/parser/io/PositionInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    :goto_0
    throw v13

    .line 76
    :cond_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    const-string v14, "ID_SIZE"

    move-object/from16 v0, p0

    iget v15, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->idSize:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v13}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readLong()J

    move-result-wide v6

    .line 80
    .local v6, date:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    const-string v14, "CREATION_DATE"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 83
    .local v8, fileSize:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v13}, Lorg/eclipse/mat/parser/io/PositionInputStream;->position()J

    move-result-wide v2

    .line 85
    .local v2, curPos:J
    :goto_1
    cmp-long v13, v2, v8

    if-gez v13, :cond_6

    .line 86
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->monitor:Lorg/eclipse/mat/util/SimpleMonitor$Listener;

    invoke-virtual {v13}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->isProbablyCanceled()Z

    move-result v13

    if-eqz v13, :cond_1

    new-instance v13, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct {v13}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v13

    .line 87
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->monitor:Lorg/eclipse/mat/util/SimpleMonitor$Listener;

    const-wide/16 v14, 0x3e8

    div-long v14, v2, v14

    invoke-virtual {v13, v14, v15}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->totalWorkDone(J)V

    .line 89
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v13}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readUnsignedByte()I

    move-result v12

    .line 91
    .local v12, record:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 93
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readUnsignedInt()J

    move-result-wide v10

    .line 94
    .local v10, length:J
    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-gez v13, :cond_2

    .line 95
    new-instance v13, Lorg/eclipse/mat/SnapshotException;

    sget-object v14, Lorg/eclipse/mat/hprof/Messages;->Pass1Parser_Error_IllegalRecordLength:Lorg/eclipse/mat/hprof/Messages;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/mat/parser/io/PositionInputStream;->position()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/eclipse/mat/SnapshotException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 99
    :cond_2
    add-long v14, v2, v10

    const-wide/16 v16, 0x9

    sub-long v14, v14, v16

    cmp-long v13, v14, v8

    if-lez v13, :cond_3

    .line 100
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->monitor:Lorg/eclipse/mat/util/SimpleMonitor$Listener;

    sget-object v14, Lorg/eclipse/mat/util/IProgressListener$Severity;->WARNING:Lorg/eclipse/mat/util/IProgressListener$Severity;

    sget-object v15, Lorg/eclipse/mat/hprof/Messages;->Pass1Parser_Error_invalidHPROFFile:Lorg/eclipse/mat/hprof/Messages;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sub-long v18, v8, v2

    const-wide/16 v20, 0x9

    sub-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->sendUserMessage(Lorg/eclipse/mat/util/IProgressListener$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :cond_3
    sparse-switch v12, :sswitch_data_0

    .line 132
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v13, v10, v11}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(J)I

    .line 136
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v13}, Lorg/eclipse/mat/parser/io/PositionInputStream;->position()J

    move-result-wide v2

    .line 137
    goto/16 :goto_1

    .line 107
    :sswitch_0
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/eclipse/mat/hprof/Pass1Parser;->readString(J)V

    goto :goto_3

    .line 110
    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->readLoadClass()V

    goto :goto_3

    .line 113
    :sswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/eclipse/mat/hprof/Pass1Parser;->readStackFrame(J)V

    goto :goto_3

    .line 116
    :sswitch_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/eclipse/mat/hprof/Pass1Parser;->readStackTrace(J)V

    goto :goto_3

    .line 120
    :sswitch_4
    if-ne v5, v4, :cond_5

    .line 121
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/eclipse/mat/hprof/Pass1Parser;->readDumpSegments(J)V

    .line 126
    :goto_4
    const/16 v13, 0xc

    if-ne v12, v13, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 123
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v13, v10, v11}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(J)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 130
    :sswitch_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 140
    .end local v10           #length:J
    .end local v12           #record:I
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v13}, Lorg/eclipse/mat/parser/io/PositionInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 145
    :goto_5
    if-gt v4, v5, :cond_7

    .line 146
    new-instance v13, Lorg/eclipse/mat/SnapshotException;

    sget-object v14, Lorg/eclipse/mat/hprof/Messages;->Pass1Parser_Error_NoHeapDumpIndexFound:Lorg/eclipse/mat/hprof/Messages;

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/eclipse/mat/SnapshotException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 151
    :cond_7
    const/4 v13, 0x1

    if-le v4, v13, :cond_8

    .line 152
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->monitor:Lorg/eclipse/mat/util/SimpleMonitor$Listener;

    sget-object v14, Lorg/eclipse/mat/util/IProgressListener$Severity;->INFO:Lorg/eclipse/mat/util/IProgressListener$Severity;

    sget-object v15, Lorg/eclipse/mat/hprof/Messages;->Pass1Parser_Info_UsingDumpIndex:Lorg/eclipse/mat/hprof/Messages;

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->sendUserMessage(Lorg/eclipse/mat/util/IProgressListener$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/mat/hprof/Pass1Parser;->serNum2stackTrace:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {v13}, Lorg/eclipse/mat/collect/HashMapLongObject;->size()I

    move-result v13

    if-lez v13, :cond_9

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass1Parser;->dumpThreads()V

    .line 158
    :cond_9
    return-void

    .line 141
    .end local v2           #curPos:J
    .end local v6           #date:J
    .end local v8           #fileSize:J
    :catch_0
    move-exception v14

    goto/16 :goto_0

    .restart local v2       #curPos:J
    .restart local v6       #date:J
    .restart local v8       #fileSize:J
    :catch_1
    move-exception v13

    goto :goto_5

    .line 105
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0xc -> :sswitch_4
        0x1c -> :sswitch_4
        0x2c -> :sswitch_5
    .end sparse-switch
.end method
