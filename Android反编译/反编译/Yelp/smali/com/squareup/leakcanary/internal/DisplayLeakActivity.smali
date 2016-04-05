.class public final Lcom/squareup/leakcanary/internal/DisplayLeakActivity;
.super Landroid/app/Activity;
.source "DisplayLeakActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;,
        Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;,
        Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;
    }
.end annotation


# static fields
.field private static final SHOW_LEAK_EXTRA:Ljava/lang/String; = "show_latest"

.field private static final TAG:Ljava/lang/String; = "DisplayLeakActivity"


# instance fields
.field private actionButton:Landroid/widget/Button;

.field private failureView:Landroid/widget/TextView;

.field private leaks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private maxStoredLeaks:I

.field private visibleLeakRefKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 361
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->shareLeak()V

    return-void
.end method

.method static synthetic access$100(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->shareHeapDump()V

    return-void
.end method

.method static synthetic access$200(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V

    return-void
.end method

.method static synthetic access$600(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->maxStoredLeaks:I

    return v0
.end method

.method static classSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "className"

    .prologue
    .line 443
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 444
    .local v0, separator:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 447
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

.method public static createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"
    .parameter "referenceKey"

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "show_latest"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 75
    const/4 v1, 0x1

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 292
    iget-object v3, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 300
    :goto_0
    return-object v1

    .line 295
    :cond_0
    iget-object v3, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    .line 296
    .local v1, leak:Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    iget-object v3, v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v3, v3, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v1           #leak:Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    :cond_2
    move-object v1, v2

    .line 300
    goto :goto_0
.end method

.method private shareHeapDump()V
    .locals 5

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v2

    .line 182
    .local v2, visibleLeak:Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    iget-object v3, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v0, v3, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    .line 183
    .local v0, heapDumpFile:Ljava/io/File;
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 184
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "application/octet-stream"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v3, "android.intent.extra.STREAM"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 187
    sget v3, Lcom/squareup/leakcanary/R$string;->__leak_canary_share_with:I

    invoke-virtual {p0, v3}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->startActivity(Landroid/content/Intent;)V

    .line 188
    return-void
.end method

.method private shareLeak()V
    .locals 6

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v2

    .line 173
    .local v2, visibleLeak:Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    iget-object v3, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v4, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    const/4 v5, 0x1

    invoke-static {p0, v3, v4, v5}, Lcom/squareup/leakcanary/LeakCanary;->leakInfo(Landroid/content/Context;Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Z)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, leakInfo:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "text/plain"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    sget v3, Lcom/squareup/leakcanary/R$string;->__leak_canary_share_with:I

    invoke-virtual {p0, v3}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->startActivity(Landroid/content/Intent;)V

    .line 178
    return-void
.end method

.method private updateUi()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v5, 0x8

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 191
    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    if-nez v7, :cond_0

    .line 192
    const-string v5, "Loading leaks..."

    invoke-virtual {p0, v5}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 289
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 196
    iput-object v10, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    .line 199
    :cond_1
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v4

    .line 200
    .local v4, visibleLeak:Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    if-nez v4, :cond_2

    .line 201
    iput-object v10, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    .line 204
    :cond_2
    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 206
    .local v2, listAdapter:Landroid/widget/ListAdapter;
    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 207
    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->failureView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    if-eqz v4, :cond_5

    .line 210
    iget-object v3, v4, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    .line 211
    .local v3, result:Lcom/squareup/leakcanary/AnalysisResult;
    iget-object v7, v3, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Exception;

    if-eqz v7, :cond_3

    .line 212
    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v7, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 213
    iget-object v5, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->failureView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v5, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->failureView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/squareup/leakcanary/R$string;->__leak_canary_failure_report:I

    invoke-virtual {p0, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Exception;

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    sget v5, Lcom/squareup/leakcanary/R$string;->__leak_canary_analysis_failed:I

    invoke-virtual {p0, v5}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setTitle(I)V

    .line 218
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->invalidateOptionsMenu()V

    .line 219
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 220
    iget-object v5, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 221
    iget-object v5, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    sget v6, Lcom/squareup/leakcanary/R$string;->__leak_canary_delete:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 222
    iget-object v5, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 225
    :cond_3
    instance-of v5, v2, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;

    if-eqz v5, :cond_4

    move-object v0, v2

    .line 226
    check-cast v0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;

    .line 252
    .local v0, adapter:Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;
    :goto_1
    iget-object v1, v4, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    .line 253
    .local v1, heapDump:Lcom/squareup/leakcanary/HeapDump;
    iget-object v5, v3, Lcom/squareup/leakcanary/AnalysisResult;->leakTrace:Lcom/squareup/leakcanary/LeakTrace;

    iget-object v7, v1, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    iget-object v8, v1, Lcom/squareup/leakcanary/HeapDump;->referenceName:Ljava/lang/String;

    invoke-virtual {v0, v5, v7, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->update(Lcom/squareup/leakcanary/LeakTrace;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget v5, Lcom/squareup/leakcanary/R$string;->__leak_canary_class_has_leaked:I

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, v3, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    invoke-static {v8}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->classSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {p0, v5, v7}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 228
    .end local v0           #adapter:Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;
    .end local v1           #heapDump:Lcom/squareup/leakcanary/HeapDump;
    :cond_4
    new-instance v0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;

    invoke-direct {v0}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;-><init>()V

    .line 229
    .restart local v0       #adapter:Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;
    iget-object v5, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 230
    iget-object v5, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    new-instance v7, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$3;

    invoke-direct {v7, p0, v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$3;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;)V

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 236
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->invalidateOptionsMenu()V

    .line 237
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 238
    iget-object v5, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 239
    iget-object v5, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    sget v7, Lcom/squareup/leakcanary/R$string;->__leak_canary_delete:I

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(I)V

    .line 240
    iget-object v5, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    new-instance v7, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;

    invoke-direct {v7, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 258
    .end local v0           #adapter:Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;
    .end local v3           #result:Lcom/squareup/leakcanary/AnalysisResult;
    :cond_5
    instance-of v7, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;

    if-eqz v7, :cond_6

    .line 259
    check-cast v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;

    .end local v2           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v2}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->notifyDataSetChanged()V

    .line 287
    :goto_2
    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_7

    :goto_3
    invoke-virtual {v7, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 261
    .restart local v2       #listAdapter:Landroid/widget/ListAdapter;
    :cond_6
    new-instance v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;

    invoke-direct {v0, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 262
    .local v0, adapter:Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;
    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 263
    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    new-instance v8, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$5;

    invoke-direct {v8, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$5;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 270
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->invalidateOptionsMenu()V

    .line 271
    sget v7, Lcom/squareup/leakcanary/R$string;->__leak_canary_leak_list_title:I

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {p0, v7, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 273
    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    sget v8, Lcom/squareup/leakcanary/R$string;->__leak_canary_delete_all:I

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 274
    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    new-instance v8, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;

    invoke-direct {v8, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .end local v0           #adapter:Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;
    .end local v2           #listAdapter:Landroid/widget/ListAdapter;
    :cond_7
    move v5, v6

    .line 287
    goto :goto_3
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    .line 165
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const-string v1, "DisplayLeakActivity"

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v2, "DisplayLeakActivity#onCreate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    if-eqz p1, :cond_1

    .line 91
    const-string v1, "visibleLeakRefKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    .line 100
    .local v0, intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    .line 102
    sget v1, Lcom/squareup/leakcanary/R$layout;->__leak_canary_display_leak:I

    invoke-virtual {p0, v1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setContentView(I)V

    .line 104
    sget v1, Lcom/squareup/leakcanary/R$id;->__leak_canary_display_leak_list:I

    invoke-virtual {p0, v1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    .line 105
    sget v1, Lcom/squareup/leakcanary/R$id;->__leak_canary_display_leak_failure:I

    invoke-virtual {p0, v1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->failureView:Landroid/widget/TextView;

    .line 106
    sget v1, Lcom/squareup/leakcanary/R$id;->__leak_canary_action:I

    invoke-virtual {p0, v1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    .line 108
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/squareup/leakcanary/R$integer;->__leak_canary_max_stored_leaks:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->maxStoredLeaks:I

    .line 110
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V

    .line 111
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line -1
    .end local v0           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "DisplayLeakActivity#onCreate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 94
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "show_latest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "show_latest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    sget v0, Lcom/squareup/leakcanary/R$string;->__leak_canary_share_leak:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$1;

    invoke-direct {v1, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$1;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 142
    sget v0, Lcom/squareup/leakcanary/R$string;->__leak_canary_share_heap_dump:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$2;

    invoke-direct {v1, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$2;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 149
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 130
    invoke-static {}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->forgetActivity()V

    .line 131
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 155
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    .line 157
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V

    .line 159
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 125
    invoke-static {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->load(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 126
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 120
    const-string v0, "visibleLeakRefKey"

    iget-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method
