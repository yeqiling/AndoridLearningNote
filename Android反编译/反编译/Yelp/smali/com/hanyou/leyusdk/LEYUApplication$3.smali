.class Lcom/hanyou/leyusdk/LEYUApplication$3;
.super Ljava/lang/Object;
.source "LEYUApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hanyou/leyusdk/LEYUApplication;->GetDeveloperAccessToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hanyou/leyusdk/LEYUApplication;


# direct methods
.method constructor <init>(Lcom/hanyou/leyusdk/LEYUApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hanyou/leyusdk/LEYUApplication$3;->this$0:Lcom/hanyou/leyusdk/LEYUApplication;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 306
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 307
    .local v0, m:Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v0, Landroid/os/Message;->what:I

    .line 308
    const-string v3, "/action/devapi/verify.jsp"

    .line 309
    new-instance v4, Lcom/hanyou/leyusdk/LEYUApplication$3$1;

    invoke-direct {v4, p0}, Lcom/hanyou/leyusdk/LEYUApplication$3$1;-><init>(Lcom/hanyou/leyusdk/LEYUApplication$3;)V

    .line 308
    #calls: Lcom/hanyou/leyusdk/LEYUApplication;->_MakeURL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/hanyou/leyusdk/LEYUApplication;->access$7(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, newUrl:Ljava/lang/String;
    iget-object v3, p0, Lcom/hanyou/leyusdk/LEYUApplication$3;->this$0:Lcom/hanyou/leyusdk/LEYUApplication;

    #calls: Lcom/hanyou/leyusdk/LEYUApplication;->GetDate(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/hanyou/leyusdk/LEYUApplication;->access$3(Lcom/hanyou/leyusdk/LEYUApplication;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, response:Ljava/lang/String;
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 318
    iget-object v3, p0, Lcom/hanyou/leyusdk/LEYUApplication$3;->this$0:Lcom/hanyou/leyusdk/LEYUApplication;

    #getter for: Lcom/hanyou/leyusdk/LEYUApplication;->xHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hanyou/leyusdk/LEYUApplication;->access$4(Lcom/hanyou/leyusdk/LEYUApplication;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 319
    return-void
.end method
