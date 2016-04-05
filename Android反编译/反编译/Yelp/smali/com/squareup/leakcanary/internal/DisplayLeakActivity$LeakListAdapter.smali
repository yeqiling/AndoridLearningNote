.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DisplayLeakActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/internal/DisplayLeakActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LeakListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    #getter for: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;
    invoke-static {v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$400(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    .locals 1
    .parameter "position"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    #getter for: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;
    invoke-static {v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$400(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->getItem(I)Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 314
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, 0x0

    .line 318
    if-nez p2, :cond_0

    .line 319
    iget-object v6, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/squareup/leakcanary/R$layout;->__leak_canary_leak_row:I

    invoke-virtual {v6, v7, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 322
    :cond_0
    sget v6, Lcom/squareup/leakcanary/R$id;->__leak_canary_row_text:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 323
    .local v5, titleView:Landroid/widget/TextView;
    sget v6, Lcom/squareup/leakcanary/R$id;->__leak_canary_row_time:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 324
    .local v3, timeView:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->getItem(I)Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v1

    .line 327
    .local v1, leak:Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    if-nez p1, :cond_1

    iget-object v6, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    #getter for: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;
    invoke-static {v6}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$400(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    #getter for: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->maxStoredLeaks:I
    invoke-static {v7}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$600(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 328
    const-string v0, "MAX. "

    .line 334
    .local v0, index:Ljava/lang/String;
    :goto_0
    iget-object v6, v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v6, v6, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Exception;

    if-nez v6, :cond_2

    .line 335
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    sget v8, Lcom/squareup/leakcanary/R$string;->__leak_canary_class_has_leaked:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v10, v10, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    invoke-static {v10}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->classSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, title:Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v6, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    iget-object v7, v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v7, v7, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    const/16 v7, 0x11

    invoke-static {v6, v8, v9, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, time:Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    return-object p2

    .line 330
    .end local v0           #index:Ljava/lang/String;
    .end local v2           #time:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    #getter for: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;
    invoke-static {v7}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$400(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #index:Ljava/lang/String;
    goto :goto_0

    .line 338
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v7, v7, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Exception;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v7, v7, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Exception;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #title:Ljava/lang/String;
    goto :goto_1
.end method
