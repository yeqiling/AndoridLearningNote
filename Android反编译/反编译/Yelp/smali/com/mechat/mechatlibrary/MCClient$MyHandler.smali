.class Lcom/mechat/mechatlibrary/MCClient$MyHandler;
.super Landroid/os/Handler;
.source "MCClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/mechatlibrary/MCClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1287
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mechat/mechatlibrary/MCClient$MyHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1287
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/MCClient$MyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 1290
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1291
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1309
    :cond_0
    :goto_0
    return-void

    .line 1294
    :pswitch_0
    const-string v3, "MeChatClient"

    const-string v4, "handleMessage AUTO_RESPONSE"

    invoke-static {v3, v4}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    invoke-static {}, Lcom/mechat/mechatlibrary/bean/MCService;->getCurrentService()Lcom/mechat/mechatlibrary/bean/MCService;

    move-result-object v1

    .line 1296
    .local v1, mcService:Lcom/mechat/mechatlibrary/bean/MCService;
    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/bean/MCService;->getUsid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1297
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1298
    .local v2, urspMsg:Ljava/lang/String;
    const-string v3, "MeChatClient"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "urspMsg = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    new-instance v0, Lcom/mechat/mechatlibrary/bean/MCTextMessage;

    invoke-direct {v0, v2}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;-><init>(Ljava/lang/String;)V

    .line 1300
    .local v0, autoResponseMessage:Lcom/mechat/mechatlibrary/bean/MCTextMessage;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;->setId(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/bean/MCService;->getUsname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;->setFromName(Ljava/lang/String;)V

    .line 1302
    const-string v3, "arrived"

    invoke-virtual {v0, v3}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;->setStatus(Ljava/lang/String;)V

    .line 1303
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;->setDirection(I)V

    .line 1304
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;->setType(I)V

    .line 1305
    #calls: Lcom/mechat/mechatlibrary/MCClient;->saveAndSendNormalMsgBroadCoast(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    invoke-static {v0}, Lcom/mechat/mechatlibrary/MCClient;->access$0(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    goto :goto_0

    .line 1291
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
