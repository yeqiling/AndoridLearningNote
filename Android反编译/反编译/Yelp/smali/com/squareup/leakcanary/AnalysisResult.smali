.class public final Lcom/squareup/leakcanary/AnalysisResult;
.super Ljava/lang/Object;
.source "AnalysisResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final analysisDurationMs:J

.field public final className:Ljava/lang/String;

.field public final excludedLeak:Z

.field public final failure:Ljava/lang/Exception;

.field public final leakFound:Z

.field public final leakTrace:Lcom/squareup/leakcanary/LeakTrace;


# direct methods
.method private constructor <init>(ZZLjava/lang/String;Lcom/squareup/leakcanary/LeakTrace;Ljava/lang/Exception;J)V
    .locals 0
    .parameter "leakFound"
    .parameter "excludedLeak"
    .parameter "className"
    .parameter "leakTrace"
    .parameter "failure"
    .parameter "analysisDurationMs"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean p1, p0, Lcom/squareup/leakcanary/AnalysisResult;->leakFound:Z

    .line 65
    iput-boolean p2, p0, Lcom/squareup/leakcanary/AnalysisResult;->excludedLeak:Z

    .line 66
    iput-object p3, p0, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/squareup/leakcanary/AnalysisResult;->leakTrace:Lcom/squareup/leakcanary/LeakTrace;

    .line 68
    iput-object p5, p0, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Exception;

    .line 69
    iput-wide p6, p0, Lcom/squareup/leakcanary/AnalysisResult;->analysisDurationMs:J

    .line 70
    return-void
.end method

.method public static failure(Ljava/lang/Exception;J)Lcom/squareup/leakcanary/AnalysisResult;
    .locals 9
    .parameter "exception"
    .parameter "analysisDurationMs"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 32
    new-instance v0, Lcom/squareup/leakcanary/AnalysisResult;

    move v2, v1

    move-object v4, v3

    move-object v5, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/squareup/leakcanary/AnalysisResult;-><init>(ZZLjava/lang/String;Lcom/squareup/leakcanary/LeakTrace;Ljava/lang/Exception;J)V

    return-object v0
.end method

.method public static leakDetected(ZLjava/lang/String;Lcom/squareup/leakcanary/LeakTrace;J)Lcom/squareup/leakcanary/AnalysisResult;
    .locals 9
    .parameter "excludedLeak"
    .parameter "className"
    .parameter "leakTrace"
    .parameter "analysisDurationMs"

    .prologue
    .line 28
    new-instance v0, Lcom/squareup/leakcanary/AnalysisResult;

    const/4 v1, 0x1

    const/4 v5, 0x0

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/squareup/leakcanary/AnalysisResult;-><init>(ZZLjava/lang/String;Lcom/squareup/leakcanary/LeakTrace;Ljava/lang/Exception;J)V

    return-object v0
.end method

.method public static noLeak(J)Lcom/squareup/leakcanary/AnalysisResult;
    .locals 8
    .parameter "analysisDurationMs"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/squareup/leakcanary/AnalysisResult;

    move v2, v1

    move-object v4, v3

    move-object v5, v3

    move-wide v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/squareup/leakcanary/AnalysisResult;-><init>(ZZLjava/lang/String;Lcom/squareup/leakcanary/LeakTrace;Ljava/lang/Exception;J)V

    return-object v0
.end method
