.class public final Lcom/squareup/leakcanary/internal/HeapAnalyzerService;
.super Landroid/app/IntentService;
.source "HeapAnalyzerService.java"


# static fields
.field private static final HEAPDUMP_EXTRA:Ljava/lang/String; = "heapdump_extra"

.field private static final LISTENER_CLASS_EXTRA:Ljava/lang/String; = "listener_class_extra"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/squareup/leakcanary/internal/HeapAnalyzerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static runAnalysis(Landroid/content/Context;Lcom/squareup/leakcanary/HeapDump;Ljava/lang/Class;)V
    .locals 3
    .parameter "context"
    .parameter "heapDump"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/squareup/leakcanary/HeapDump;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/leakcanary/AbstractAnalysisResultService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, listenerServiceClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/squareup/leakcanary/AbstractAnalysisResultService;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/squareup/leakcanary/internal/HeapAnalyzerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "listener_class_extra"

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, "heapdump_extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 44
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 51
    const-string v5, "listener_class_extra"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, listenerClassName:Ljava/lang/String;
    const-string v5, "heapdump_extra"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/squareup/leakcanary/HeapDump;

    .line 54
    .local v2, heapDump:Lcom/squareup/leakcanary/HeapDump;
    invoke-static {}, Lcom/squareup/leakcanary/AndroidExcludedRefs;->createAndroidDefaults()Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->build()Lcom/squareup/leakcanary/ExcludedRefs;

    move-result-object v0

    .line 55
    .local v0, androidExcludedDefault:Lcom/squareup/leakcanary/ExcludedRefs;
    new-instance v1, Lcom/squareup/leakcanary/HeapAnalyzer;

    iget-object v5, v2, Lcom/squareup/leakcanary/HeapDump;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    invoke-direct {v1, v0, v5}, Lcom/squareup/leakcanary/HeapAnalyzer;-><init>(Lcom/squareup/leakcanary/ExcludedRefs;Lcom/squareup/leakcanary/ExcludedRefs;)V

    .line 57
    .local v1, heapAnalyzer:Lcom/squareup/leakcanary/HeapAnalyzer;
    iget-object v5, v2, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    iget-object v6, v2, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/squareup/leakcanary/HeapAnalyzer;->checkForLeak(Ljava/io/File;Ljava/lang/String;)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v4

    .line 58
    .local v4, result:Lcom/squareup/leakcanary/AnalysisResult;
    invoke-static {p0, v3, v2, v4}, Lcom/squareup/leakcanary/AbstractAnalysisResultService;->sendResultToListener(Landroid/content/Context;Ljava/lang/String;Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;)V

    .line 59
    return-void
.end method
