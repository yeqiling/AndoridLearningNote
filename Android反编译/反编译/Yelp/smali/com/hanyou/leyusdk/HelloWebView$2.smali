.class Lcom/hanyou/leyusdk/HelloWebView$2;
.super Landroid/webkit/WebChromeClient;
.source "HelloWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hanyou/leyusdk/HelloWebView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hanyou/leyusdk/HelloWebView;


# direct methods
.method constructor <init>(Lcom/hanyou/leyusdk/HelloWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hanyou/leyusdk/HelloWebView$2;->this$0:Lcom/hanyou/leyusdk/HelloWebView;

    .line 173
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .parameter "view"
    .parameter "progress"

    .prologue
    .line 175
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/hanyou/leyusdk/HelloWebView$2;->this$0:Lcom/hanyou/leyusdk/HelloWebView;

    #getter for: Lcom/hanyou/leyusdk/HelloWebView;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/hanyou/leyusdk/HelloWebView;->access$1(Lcom/hanyou/leyusdk/HelloWebView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hanyou/leyusdk/HelloWebView$2;->this$0:Lcom/hanyou/leyusdk/HelloWebView;

    #getter for: Lcom/hanyou/leyusdk/HelloWebView;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/hanyou/leyusdk/HelloWebView;->access$1(Lcom/hanyou/leyusdk/HelloWebView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/hanyou/leyusdk/HelloWebView$2;->this$0:Lcom/hanyou/leyusdk/HelloWebView;

    #getter for: Lcom/hanyou/leyusdk/HelloWebView;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/hanyou/leyusdk/HelloWebView;->access$1(Lcom/hanyou/leyusdk/HelloWebView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 179
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "title"

    .prologue
    .line 184
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 185
    return-void
.end method
