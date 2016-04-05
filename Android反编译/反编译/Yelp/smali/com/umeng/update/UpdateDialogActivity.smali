.class public Lcom/umeng/update/UpdateDialogActivity;
.super Landroid/app/Activity;
.source "UpdateDialogActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field a:I

.field b:Lcom/umeng/update/UpdateResponse;

.field c:Z

.field d:Ljava/io/File;

.field e:Landroid/view/ViewGroup;

.field f:Lcom/alimama/mobile/MMAdView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x6

    iput v0, p0, Lcom/umeng/update/UpdateDialogActivity;->a:I

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/update/UpdateDialogActivity;->c:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/update/UpdateDialogActivity;->d:Ljava/io/File;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter

    .prologue
    const-string v0, "UpdateDialogActivity"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/umeng/update/UpdateDialogActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "UpdateDialogActivity#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/update/UpdateDialogActivity;->requestWindowFeature(I)Z

    .line 36
    invoke-static {p0}, Lu/upd/c;->a(Landroid/content/Context;)Lu/upd/c;

    move-result-object v0

    const-string v1, "umeng_update_dialog"

    invoke-virtual {v0, v1}, Lu/upd/c;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/update/UpdateDialogActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/umeng/update/UpdateDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "response"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/umeng/update/UpdateResponse;

    iput-object v0, p0, Lcom/umeng/update/UpdateDialogActivity;->b:Lcom/umeng/update/UpdateResponse;

    .line 38
    invoke-virtual {p0}, Lcom/umeng/update/UpdateDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-virtual {p0}, Lcom/umeng/update/UpdateDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "force"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 40
    if-eqz v2, :cond_4

    const/4 v0, 0x1

    move v1, v0

    .line 41
    :goto_1
    if-eqz v1, :cond_0

    .line 42
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/update/UpdateDialogActivity;->d:Ljava/io/File;

    .line 45
    :cond_0
    invoke-static {p0}, Lu/upd/c;->a(Landroid/content/Context;)Lu/upd/c;

    move-result-object v0

    const-string v2, "umeng_update_content"

    invoke-virtual {v0, v2}, Lu/upd/c;->b(Ljava/lang/String;)I

    move-result v2

    .line 46
    invoke-static {p0}, Lu/upd/c;->a(Landroid/content/Context;)Lu/upd/c;

    move-result-object v0

    const-string v4, "umeng_update_wifi_indicator"

    invoke-virtual {v0, v4}, Lu/upd/c;->b(Ljava/lang/String;)I

    move-result v4

    .line 48
    invoke-static {p0}, Lu/upd/c;->a(Landroid/content/Context;)Lu/upd/c;

    move-result-object v0

    const-string v5, "umeng_update_id_ok"

    invoke-virtual {v0, v5}, Lu/upd/c;->b(Ljava/lang/String;)I

    move-result v5

    .line 49
    invoke-static {p0}, Lu/upd/c;->a(Landroid/content/Context;)Lu/upd/c;

    move-result-object v0

    const-string v6, "umeng_update_id_cancel"

    invoke-virtual {v0, v6}, Lu/upd/c;->b(Ljava/lang/String;)I

    move-result v6

    .line 50
    invoke-static {p0}, Lu/upd/c;->a(Landroid/content/Context;)Lu/upd/c;

    move-result-object v0

    const-string v7, "umeng_update_id_ignore"

    invoke-virtual {v0, v7}, Lu/upd/c;->b(Ljava/lang/String;)I

    move-result v7

    .line 51
    invoke-static {p0}, Lu/upd/c;->a(Landroid/content/Context;)Lu/upd/c;

    move-result-object v0

    const-string v8, "umeng_update_id_close"

    invoke-virtual {v0, v8}, Lu/upd/c;->b(Ljava/lang/String;)I

    move-result v8

    .line 52
    invoke-static {p0}, Lu/upd/c;->a(Landroid/content/Context;)Lu/upd/c;

    move-result-object v0

    const-string v9, "umeng_update_id_check"

    invoke-virtual {v0, v9}, Lu/upd/c;->b(Ljava/lang/String;)I

    move-result v9

    .line 54
    invoke-static {p0}, Lu/upd/c;->a(Landroid/content/Context;)Lu/upd/c;

    move-result-object v0

    const-string v10, "umeng_update_frame"

    invoke-virtual {v0, v10}, Lu/upd/c;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/umeng/update/UpdateDialogActivity;->e:Landroid/view/ViewGroup;

    .line 55
    iget-object v0, p0, Lcom/umeng/update/UpdateDialogActivity;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/update/UpdateDialogActivity;->b:Lcom/umeng/update/UpdateResponse;

    iget-boolean v0, v0, Lcom/umeng/update/UpdateResponse;->display_ads:Z

    if-eqz v0, :cond_1

    .line 56
    invoke-static {}, Lcom/umeng/update/UpdateConfig;->getSlotId()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 58
    new-instance v10, Lcom/alimama/mobile/MMAdView;

    invoke-direct {v10, p0}, Lcom/alimama/mobile/MMAdView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/umeng/update/UpdateDialogActivity;->f:Lcom/alimama/mobile/MMAdView;

    .line 59
    iget-object v10, p0, Lcom/umeng/update/UpdateDialogActivity;->f:Lcom/alimama/mobile/MMAdView;

    invoke-virtual {v10, v0}, Lcom/alimama/mobile/MMAdView;->init(Ljava/lang/String;)Z

    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/umeng/update/UpdateDialogActivity;->e:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/umeng/update/UpdateDialogActivity;->f:Lcom/alimama/mobile/MMAdView;

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    :cond_1
    :goto_2
    new-instance v10, Lcom/umeng/update/UpdateDialogActivity$1;

    invoke-direct {v10, p0, v5, v7}, Lcom/umeng/update/UpdateDialogActivity$1;-><init>(Lcom/umeng/update/UpdateDialogActivity;II)V

    .line 84
    new-instance v11, Lcom/umeng/update/UpdateDialogActivity$2;

    invoke-direct {v11, p0}, Lcom/umeng/update/UpdateDialogActivity$2;-><init>(Lcom/umeng/update/UpdateDialogActivity;)V

    .line 93
    if-lez v4, :cond_2

    .line 94
    invoke-static {p0}, Lu/upd/a;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    .line 96
    :goto_3
    invoke-virtual {p0, v4}, Lcom/umeng/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :cond_2
    if-eqz v3, :cond_3

    .line 100
    invoke-virtual {p0, v9}, Lcom/umeng/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_3
    invoke-virtual {p0, v5}, Lcom/umeng/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {p0, v6}, Lcom/umeng/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p0, v7}, Lcom/umeng/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p0, v8}, Lcom/umeng/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p0, v9}, Lcom/umeng/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    iget-object v0, p0, Lcom/umeng/update/UpdateDialogActivity;->b:Lcom/umeng/update/UpdateResponse;

    invoke-virtual {v0, p0, v1}, Lcom/umeng/update/UpdateResponse;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {p0, v2}, Lcom/umeng/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 111
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line -1
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "UpdateDialogActivity#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 40
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_1

    .line 64
    :cond_5
    const-string v0, "update"

    const-string v10, "\u5c1a\u672a\u8bbe\u7f6e\u63a8\u5e7f\u4f4did,\u65e0\u6cd5\u5c55\u793a\u63a8\u5e7f\u5185\u5bb9\u3002"

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 94
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 119
    iget v0, p0, Lcom/umeng/update/UpdateDialogActivity;->a:I

    iget-object v1, p0, Lcom/umeng/update/UpdateDialogActivity;->b:Lcom/umeng/update/UpdateResponse;

    iget-object v2, p0, Lcom/umeng/update/UpdateDialogActivity;->d:Ljava/io/File;

    invoke-static {v0, p0, v1, v2}, Lcom/umeng/update/UmengUpdateAgent;->a(ILandroid/content/Context;Lcom/umeng/update/UpdateResponse;Ljava/io/File;)V

    .line 121
    iget-object v0, p0, Lcom/umeng/update/UpdateDialogActivity;->f:Lcom/alimama/mobile/MMAdView;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/umeng/update/UpdateDialogActivity;->f:Lcom/alimama/mobile/MMAdView;

    invoke-virtual {v0}, Lcom/alimama/mobile/MMAdView;->destroy()V

    .line 125
    :cond_0
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
