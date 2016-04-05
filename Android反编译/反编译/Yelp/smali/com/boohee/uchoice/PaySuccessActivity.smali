.class public Lcom/boohee/uchoice/PaySuccessActivity;
.super Lcom/boohee/main/GestureActivity;
.source "PaySuccessActivity.java"


# instance fields
.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 23
    const v0, 0x7f0e00df

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/PaySuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/boohee/uchoice/PaySuccessActivity;->webView:Landroid/webkit/WebView;

    .line 24
    iget-object v0, p0, Lcom/boohee/uchoice/PaySuccessActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/boohee/uchoice/PaySuccessActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "http://shop.boohee.com/store/pages/notice"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 30
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onBackPressed()V

    .line 31
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/uchoice/PaySuccessActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/uchoice/OrderListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_index"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/PaySuccessActivity;->startActivity(Landroid/content/Intent;)V

    .line 34
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f03009d

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/PaySuccessActivity;->setContentView(I)V

    .line 18
    const v0, 0x7f07040c

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/PaySuccessActivity;->setTitle(I)V

    .line 19
    invoke-direct {p0}, Lcom/boohee/uchoice/PaySuccessActivity;->initView()V

    .line 20
    return-void
.end method
