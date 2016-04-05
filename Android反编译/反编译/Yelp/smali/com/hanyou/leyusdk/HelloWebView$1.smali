.class Lcom/hanyou/leyusdk/HelloWebView$1;
.super Landroid/webkit/WebViewClient;
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
    iput-object p1, p0, Lcom/hanyou/leyusdk/HelloWebView$1;->this$0:Lcom/hanyou/leyusdk/HelloWebView;

    .line 94
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/hanyou/leyusdk/HelloWebView$1;->this$0:Lcom/hanyou/leyusdk/HelloWebView;

    #getter for: Lcom/hanyou/leyusdk/HelloWebView;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/hanyou/leyusdk/HelloWebView;->access$1(Lcom/hanyou/leyusdk/HelloWebView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 148
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 162
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 163
    iget-object v0, p0, Lcom/hanyou/leyusdk/HelloWebView$1;->this$0:Lcom/hanyou/leyusdk/HelloWebView;

    #getter for: Lcom/hanyou/leyusdk/HelloWebView;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/hanyou/leyusdk/HelloWebView;->access$1(Lcom/hanyou/leyusdk/HelloWebView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 164
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/hanyou/leyusdk/HelloWebView$1;->this$0:Lcom/hanyou/leyusdk/HelloWebView;

    const-string v1, "\u7f51\u7edc\u4e0d\u7ed9\u529b"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 157
    iget-object v0, p0, Lcom/hanyou/leyusdk/HelloWebView$1;->this$0:Lcom/hanyou/leyusdk/HelloWebView;

    invoke-virtual {v0}, Lcom/hanyou/leyusdk/HelloWebView;->finish()V

    .line 158
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 168
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 169
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 13
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 98
    :try_start_0
    const-string v9, "utf-8"

    invoke-static {p2, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 99
    .local v7, string:Ljava/lang/String;
    move-object p2, v7

    .line 104
    .end local v7           #string:Ljava/lang/String;
    :goto_0
    const-string v9, "androidcallback://"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 105
    const-string v9, "androidcallback://"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 106
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v4, intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v1, bundle:Landroid/os/Bundle;
    const-string v9, "result_info"

    invoke-virtual {v1, v9, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 110
    new-instance v5, Lorg/json/JSONTokener;

    invoke-direct {v5, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 111
    .local v5, jsonParser:Lorg/json/JSONTokener;
    const/4 v6, 0x0

    .line 113
    .local v6, person:Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lorg/json/JSONObject;

    move-object v6, v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 116
    :goto_1
    if-nez v6, :cond_0

    .line 117
    iget-object v9, p0, Lcom/hanyou/leyusdk/HelloWebView$1;->this$0:Lcom/hanyou/leyusdk/HelloWebView;

    const-string v10, "Service Error"

    invoke-static {v9, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 118
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 119
    iget-object v9, p0, Lcom/hanyou/leyusdk/HelloWebView$1;->this$0:Lcom/hanyou/leyusdk/HelloWebView;

    invoke-virtual {v9, v12}, Lcom/hanyou/leyusdk/HelloWebView;->setResult(I)V

    .line 120
    iget-object v9, p0, Lcom/hanyou/leyusdk/HelloWebView$1;->this$0:Lcom/hanyou/leyusdk/HelloWebView;

    invoke-virtual {v9}, Lcom/hanyou/leyusdk/HelloWebView;->finish()V

    .line 141
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #jsonParser:Lorg/json/JSONTokener;
    .end local v6           #person:Lorg/json/JSONObject;
    :goto_2
    return v11

    .line 100
    :catch_0
    move-exception v2

    .line 101
    .local v2, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v2           #e1:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #jsonParser:Lorg/json/JSONTokener;
    .restart local v6       #person:Lorg/json/JSONObject;
    :cond_0
    :try_start_2
    instance-of v9, v6, Lorg/json/JSONObject;

    if-nez v9, :cond_1

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .line 124
    :goto_3
    invoke-static {v9}, Lcom/hanyou/leyusdk/LEYUUser;->fromJSONString(Ljava/lang/String;)Lcom/hanyou/leyusdk/LEYUUser;

    move-result-object v8

    .line 126
    .local v8, user:Lcom/hanyou/leyusdk/LEYUUser;
    invoke-static {v8}, Lcom/hanyou/leyusdk/LEYUApplication;->saveLoginInfo(Lcom/hanyou/leyusdk/LEYUUser;)V

    .line 127
    iget-object v9, p0, Lcom/hanyou/leyusdk/HelloWebView$1;->this$0:Lcom/hanyou/leyusdk/HelloWebView;

    const/4 v10, -0x1

    invoke-virtual {v9, v10, v4}, Lcom/hanyou/leyusdk/HelloWebView;->setResult(ILandroid/content/Intent;)V

    .line 128
    iget-object v9, p0, Lcom/hanyou/leyusdk/HelloWebView$1;->this$0:Lcom/hanyou/leyusdk/HelloWebView;

    invoke-virtual {v9}, Lcom/hanyou/leyusdk/HelloWebView;->finish()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 130
    .end local v8           #user:Lcom/hanyou/leyusdk/LEYUUser;
    :catch_1
    move-exception v9

    .line 133
    :try_start_3
    const-string v9, "error"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, errorString:Ljava/lang/String;
    iget-object v9, p0, Lcom/hanyou/leyusdk/HelloWebView$1;->this$0:Lcom/hanyou/leyusdk/HelloWebView;

    .line 135
    const/4 v10, 0x1

    .line 134
    invoke-static {v9, v3, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 135
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 136
    .end local v3           #errorString:Ljava/lang/String;
    :catch_2
    move-exception v9

    goto :goto_2

    .line 125
    :cond_1
    :try_start_4
    move-object v0, v6

    check-cast v0, Lorg/json/JSONObject;

    move-object v9, v0

    invoke-static {v9}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v9

    goto :goto_3

    .line 139
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #jsonParser:Lorg/json/JSONTokener;
    .end local v6           #person:Lorg/json/JSONObject;
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "?access_token="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/hanyou/leyusdk/HelloWebView$1;->this$0:Lcom/hanyou/leyusdk/HelloWebView;

    #getter for: Lcom/hanyou/leyusdk/HelloWebView;->accesstoken:Ljava/lang/String;
    invoke-static {v10}, Lcom/hanyou/leyusdk/HelloWebView;->access$0(Lcom/hanyou/leyusdk/HelloWebView;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 114
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #jsonParser:Lorg/json/JSONTokener;
    .restart local v6       #person:Lorg/json/JSONObject;
    :catch_3
    move-exception v9

    goto :goto_1
.end method
