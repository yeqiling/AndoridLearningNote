.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;
.super Ljava/lang/Object;
.source "DisplayLeakActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 242
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    #calls: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    invoke-static {v2}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$200(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v1

    .line 243
    .local v1, visibleLeak:Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    iget-object v2, v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v2, v2, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-static {v2}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->leakResultFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 244
    .local v0, resultFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 245
    iget-object v2, v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v2, v2, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 246
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    const/4 v3, 0x0

    #setter for: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$302(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    #getter for: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;
    invoke-static {v2}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$400(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 248
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    #calls: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V
    invoke-static {v2}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$500(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 249
    return-void
.end method
