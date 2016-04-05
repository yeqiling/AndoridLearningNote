.class public Lcom/hanyou/leyusdk/HelloWebView;
.super Landroid/app/Activity;
.source "HelloWebView.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final ANDROID_CALLBACK:Ljava/lang/String; = "androidcallback://"

.field private static final APP_SCHEME:Ljava/lang/String; = "example-app:"


# instance fields
.field private accesstoken:Ljava/lang/String;

.field private appid:Ljava/lang/String;

.field private final hosturl:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private layout:Landroid/widget/LinearLayout;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private webView:Landroid/webkit/WebView;

.field private final xHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const-string v0, "http://m.miao.cn"

    iput-object v0, p0, Lcom/hanyou/leyusdk/HelloWebView;->hosturl:Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hanyou/leyusdk/HelloWebView;->xHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/hanyou/leyusdk/HelloWebView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/hanyou/leyusdk/HelloWebView;->accesstoken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hanyou/leyusdk/HelloWebView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/hanyou/leyusdk/HelloWebView;->mSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 63
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/hanyou/leyusdk/HelloWebView;->mSpinner:Landroid/app/ProgressDialog;

    .line 64
    iget-object v3, p0, Lcom/hanyou/leyusdk/HelloWebView;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 65
    iget-object v3, p0, Lcom/hanyou/leyusdk/HelloWebView;->mSpinner:Landroid/app/ProgressDialog;

    const-string v4, "Loading..."

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v3, p0, Lcom/hanyou/leyusdk/HelloWebView;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 67
    iget-object v3, p0, Lcom/hanyou/leyusdk/HelloWebView;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 68
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 70
    .local v2, webViewContainer:Landroid/widget/RelativeLayout;
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/hanyou/leyusdk/HelloWebView;->webView:Landroid/webkit/WebView;

    .line 71
    iget-object v3, p0, Lcom/hanyou/leyusdk/HelloWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 72
    iget-object v3, p0, Lcom/hanyou/leyusdk/HelloWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 73
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 76
    .local v0, FILL:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/hanyou/leyusdk/HelloWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v3, p0, Lcom/hanyou/leyusdk/HelloWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 79
    iget-object v3, p0, Lcom/hanyou/leyusdk/HelloWebView;->layout:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 80
    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 79
    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v3, p0, Lcom/hanyou/leyusdk/HelloWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 85
    iget-object v3, p0, Lcom/hanyou/leyusdk/HelloWebView;->webView:Landroid/webkit/WebView;

    const/16 v4, 0x14d

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setId(I)V

    .line 86
    new-instance v1, Ljava/util/Random;

    const-wide/16 v4, 0x64

    invoke-direct {v1, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 88
    .local v1, random1:Ljava/util/Random;
    iget-object v3, p0, Lcom/hanyou/leyusdk/HelloWebView;->webView:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://m.miao.cn/action/devapi/login.html?access_token="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v5, p0, Lcom/hanyou/leyusdk/HelloWebView;->accesstoken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&n="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 94
    iget-object v3, p0, Lcom/hanyou/leyusdk/HelloWebView;->webView:Landroid/webkit/WebView;

    new-instance v4, Lcom/hanyou/leyusdk/HelloWebView$1;

    invoke-direct {v4, p0}, Lcom/hanyou/leyusdk/HelloWebView$1;-><init>(Lcom/hanyou/leyusdk/HelloWebView;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 173
    iget-object v3, p0, Lcom/hanyou/leyusdk/HelloWebView;->webView:Landroid/webkit/WebView;

    new-instance v4, Lcom/hanyou/leyusdk/HelloWebView$2;

    invoke-direct {v4, p0}, Lcom/hanyou/leyusdk/HelloWebView$2;-><init>(Lcom/hanyou/leyusdk/HelloWebView;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 188
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x1

    const-string v2, "HelloWebView"

    invoke-static {v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/hanyou/leyusdk/HelloWebView;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v3, "HelloWebView#onCreate"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/hanyou/leyusdk/HelloWebView;->requestWindowFeature(I)Z

    .line 50
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/hanyou/leyusdk/HelloWebView;->layout:Landroid/widget/LinearLayout;

    .line 51
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v1, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/hanyou/leyusdk/HelloWebView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/hanyou/leyusdk/HelloWebView;->setContentView(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lcom/hanyou/leyusdk/HelloWebView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/hanyou/leyusdk/HelloWebView;->intent:Landroid/content/Intent;

    .line 56
    iget-object v2, p0, Lcom/hanyou/leyusdk/HelloWebView;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "appid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/hanyou/leyusdk/HelloWebView;->appid:Ljava/lang/String;

    .line 58
    const-string v2, "accesstoken"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/hanyou/leyusdk/HelloWebView;->accesstoken:Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Lcom/hanyou/leyusdk/HelloWebView;->init()V

    .line 60
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line -1
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    :try_start_1
    const-string v3, "HelloWebView#onCreate"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
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
