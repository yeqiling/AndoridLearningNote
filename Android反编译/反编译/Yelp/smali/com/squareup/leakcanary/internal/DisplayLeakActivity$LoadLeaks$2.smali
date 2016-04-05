.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$2;
.super Ljava/lang/Object;
.source "DisplayLeakActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;)V
    .locals 0
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$2;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;)I
    .locals 4
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 425
    iget-object v0, p2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v0, v0, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v1, v1, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 423
    check-cast p1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    .end local p1
    check-cast p2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$2;->compare(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;)I

    move-result v0

    return v0
.end method
