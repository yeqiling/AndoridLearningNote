.class Lcom/hanyou/leyusdk/LEYUApplication$2;
.super Ljava/lang/Object;
.source "LEYUApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hanyou/leyusdk/LEYUApplication;->GetDate2(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hanyou/leyusdk/LEYUApplication;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hanyou/leyusdk/LEYUApplication;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hanyou/leyusdk/LEYUApplication$2;->this$0:Lcom/hanyou/leyusdk/LEYUApplication;

    iput-object p2, p0, Lcom/hanyou/leyusdk/LEYUApplication$2;->val$url:Ljava/lang/String;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 292
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 293
    .local v0, m:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 294
    iget-object v2, p0, Lcom/hanyou/leyusdk/LEYUApplication$2;->this$0:Lcom/hanyou/leyusdk/LEYUApplication;

    iget-object v3, p0, Lcom/hanyou/leyusdk/LEYUApplication$2;->val$url:Ljava/lang/String;

    #calls: Lcom/hanyou/leyusdk/LEYUApplication;->GetDate(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/hanyou/leyusdk/LEYUApplication;->access$3(Lcom/hanyou/leyusdk/LEYUApplication;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, response:Ljava/lang/String;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 296
    iget-object v2, p0, Lcom/hanyou/leyusdk/LEYUApplication$2;->this$0:Lcom/hanyou/leyusdk/LEYUApplication;

    #getter for: Lcom/hanyou/leyusdk/LEYUApplication;->xHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hanyou/leyusdk/LEYUApplication;->access$4(Lcom/hanyou/leyusdk/LEYUApplication;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 297
    return-void
.end method
