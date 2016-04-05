.class Lcom/mechat/mechatlibrary/MCClient$9;
.super Lcom/mechat/mechatlibrary/callback/MyJsonHttpResponseHandler;
.source "MCClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/MCClient;->sendMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/util/Map;Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/MCClient;

.field private final synthetic val$message:Lcom/mechat/mechatlibrary/bean/MCMessage;

.field private final synthetic val$onMessageSendStateCallback:Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/MCClient;Lcom/mechat/mechatlibrary/bean/MCMessage;Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MCClient$9;->this$0:Lcom/mechat/mechatlibrary/MCClient;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/MCClient$9;->val$message:Lcom/mechat/mechatlibrary/bean/MCMessage;

    iput-object p3, p0, Lcom/mechat/mechatlibrary/MCClient$9;->val$onMessageSendStateCallback:Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;

    .line 961
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/callback/MyJsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "errorResponse"
    .parameter "responseString"
    .parameter "responseWithThrowable"

    .prologue
    .line 1040
    invoke-super {p0, p1, p2, p3}, Lcom/mechat/mechatlibrary/callback/MyJsonHttpResponseHandler;->onFailure(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    const-string v0, "MeChatClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendMCMessage failed"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCClient$9;->val$message:Lcom/mechat/mechatlibrary/bean/MCMessage;

    const-string v1, "failure"

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    .line 1043
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCClient$9;->this$0:Lcom/mechat/mechatlibrary/MCClient;

    #getter for: Lcom/mechat/mechatlibrary/MCClient;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/MCClient;->access$10(Lcom/mechat/mechatlibrary/MCClient;)Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCClient$9;->val$message:Lcom/mechat/mechatlibrary/bean/MCMessage;

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->updateMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    .line 1044
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCClient$9;->val$onMessageSendStateCallback:Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCClient$9;->val$message:Lcom/mechat/mechatlibrary/bean/MCMessage;

    invoke-interface {v0, v1, p2}, Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;->onFailure(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/lang/String;)V

    .line 1045
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 16
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 965
    invoke-super/range {p0 .. p3}, Lcom/mechat/mechatlibrary/callback/MyJsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 966
    const-string v13, "MeChatClient"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "sendMCMessage response = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    :try_start_0
    const-string v13, "success"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 969
    const-string v13, "MeChatClient"

    const-string v14, "sendMCMessage suc"

    invoke-static {v13, v14}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const-string v13, "msgid"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 971
    .local v6, id:Ljava/lang/String;
    const-string v13, "createdTime"

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 972
    .local v2, createdTime:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 973
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mechat/mechatlibrary/MCClient$9;->val$message:Lcom/mechat/mechatlibrary/bean/MCMessage;

    invoke-virtual {v13, v2}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setCreatedTime(Ljava/lang/String;)V

    .line 975
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mechat/mechatlibrary/MCClient$9;->val$message:Lcom/mechat/mechatlibrary/bean/MCMessage;

    const-string v14, "arrived"

    invoke-virtual {v13, v14}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    .line 976
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mechat/mechatlibrary/MCClient$9;->this$0:Lcom/mechat/mechatlibrary/MCClient;

    #getter for: Lcom/mechat/mechatlibrary/MCClient;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;
    invoke-static {v13}, Lcom/mechat/mechatlibrary/MCClient;->access$10(Lcom/mechat/mechatlibrary/MCClient;)Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/MCClient$9;->val$message:Lcom/mechat/mechatlibrary/bean/MCMessage;

    invoke-virtual {v13, v14, v6}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->updateMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/lang/String;)V

    .line 977
    const-string v13, "MeChatClient"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "suc save id = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mechat/mechatlibrary/MCClient$9;->val$message:Lcom/mechat/mechatlibrary/bean/MCMessage;

    invoke-virtual {v15}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "   new id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const-string v13, "usname"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 979
    const-string v13, "usname"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 981
    .local v12, usname:Ljava/lang/String;
    invoke-static {}, Lcom/mechat/mechatlibrary/bean/MCService;->getCurrentService()Lcom/mechat/mechatlibrary/bean/MCService;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mechat/mechatlibrary/bean/MCService;->getUsname()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 983
    invoke-static {}, Lcom/mechat/mechatlibrary/bean/MCService;->getCurrentService()Lcom/mechat/mechatlibrary/bean/MCService;

    move-result-object v9

    .line 984
    .local v9, service:Lcom/mechat/mechatlibrary/bean/MCService;
    invoke-virtual {v9, v12}, Lcom/mechat/mechatlibrary/bean/MCService;->setUsname(Ljava/lang/String;)V

    .line 985
    const-string v13, "usid"

    move-object/from16 v0, p3

    invoke-static {v13, v0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/mechat/mechatlibrary/bean/MCService;->setUsid(Ljava/lang/String;)V

    .line 986
    const-string v13, "usavatar"

    move-object/from16 v0, p3

    invoke-static {v13, v0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/mechat/mechatlibrary/bean/MCService;->setUsavatar(Ljava/lang/String;)V

    .line 987
    invoke-static {v9}, Lcom/mechat/mechatlibrary/bean/MCService;->setCurrentService(Lcom/mechat/mechatlibrary/bean/MCService;)V

    .line 989
    new-instance v5, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;

    invoke-direct {v5}, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;-><init>()V

    .line 990
    .local v5, event:Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;
    invoke-virtual {v9}, Lcom/mechat/mechatlibrary/bean/MCService;->getUsavatar()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->setAvatarUrl(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v9}, Lcom/mechat/mechatlibrary/bean/MCService;->getUsname()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->setUsname(Ljava/lang/String;)V

    .line 992
    invoke-virtual {v9}, Lcom/mechat/mechatlibrary/bean/MCService;->getUsid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->setUsid(Ljava/lang/String;)V

    .line 994
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mechat/mechatlibrary/MCClient$9;->this$0:Lcom/mechat/mechatlibrary/MCClient;

    #getter for: Lcom/mechat/mechatlibrary/MCClient;->mcEventDBManger:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;
    invoke-static {v13}, Lcom/mechat/mechatlibrary/MCClient;->access$9(Lcom/mechat/mechatlibrary/MCClient;)Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    move-result-object v13

    invoke-virtual {v13, v5}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->saveMCEvent(Lcom/mechat/mechatlibrary/bean/MCEvent;)J

    .line 997
    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v13

    invoke-virtual {v13, v5}, Lcom/mechat/mechatlibrary/MCMessageManager;->addEvent(Lcom/mechat/mechatlibrary/bean/MCEvent;)V

    .line 998
    new-instance v8, Landroid/content/Intent;

    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mechat/mechatlibrary/MCMessageManager;->getReAllocationEventAction()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 999
    .local v8, redirectEventIntent:Landroid/content/Intent;
    const-string v13, "eventId"

    invoke-virtual {v5}, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1000
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$3()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1001
    const-string v13, "MeChatClient"

    const-string v14, "sendMCMessage REALLOCATION_EVENT"

    invoke-static {v13, v14}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    .end local v5           #event:Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;
    .end local v8           #redirectEventIntent:Landroid/content/Intent;
    .end local v9           #service:Lcom/mechat/mechatlibrary/bean/MCService;
    .end local v12           #usname:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mechat/mechatlibrary/MCClient$9;->val$onMessageSendStateCallback:Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/MCClient$9;->val$message:Lcom/mechat/mechatlibrary/bean/MCMessage;

    invoke-interface {v13, v14}, Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;->onSuccess(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    .line 1007
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$2()Lcom/mechat/mechatlibrary/utils/SpManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUrspMsg()Ljava/lang/String;

    move-result-object v10

    .line 1008
    .local v10, urspMsg:Ljava/lang/String;
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$2()Lcom/mechat/mechatlibrary/utils/SpManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUrspTime()Ljava/lang/String;

    move-result-object v11

    .line 1009
    .local v11, urspTime:Ljava/lang/String;
    const-string v13, "MeChatClient"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "urspMsg = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    const-string v13, "MeChatClient"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "urspTime = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    if-eqz v10, :cond_2

    if-eqz v11, :cond_2

    .line 1012
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1013
    const-string v13, "MeChatClient"

    const-string v14, "sendMessage AUTO_RESPONSE"

    invoke-static {v13, v14}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$12()Lcom/mechat/mechatlibrary/MCClient$MyHandler;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/mechat/mechatlibrary/MCClient$MyHandler;->removeMessages(I)V

    .line 1015
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$12()Lcom/mechat/mechatlibrary/MCClient$MyHandler;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mechat/mechatlibrary/MCClient$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 1016
    .local v7, msg:Landroid/os/Message;
    const/4 v13, 0x0

    iput v13, v7, Landroid/os/Message;->what:I

    .line 1017
    iput-object v10, v7, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1020
    :try_start_1
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 1024
    .local v3, delayTime:I
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$12()Lcom/mechat/mechatlibrary/MCClient$MyHandler;

    move-result-object v13

    mul-int/lit16 v14, v3, 0x3e8

    int-to-long v14, v14

    invoke-virtual {v13, v7, v14, v15}, Lcom/mechat/mechatlibrary/MCClient$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1036
    .end local v2           #createdTime:Ljava/lang/String;
    .end local v3           #delayTime:I
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #msg:Landroid/os/Message;
    .end local v10           #urspMsg:Ljava/lang/String;
    .end local v11           #urspTime:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 1021
    .restart local v2       #createdTime:Ljava/lang/String;
    .restart local v6       #id:Ljava/lang/String;
    .restart local v7       #msg:Landroid/os/Message;
    .restart local v10       #urspMsg:Ljava/lang/String;
    .restart local v11       #urspTime:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1022
    .local v4, e:Ljava/lang/NumberFormatException;
    const/16 v3, 0xa

    .restart local v3       #delayTime:I
    goto :goto_0

    .line 1028
    .end local v2           #createdTime:Ljava/lang/String;
    .end local v3           #delayTime:I
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #msg:Landroid/os/Message;
    .end local v10           #urspMsg:Ljava/lang/String;
    .end local v11           #urspTime:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mechat/mechatlibrary/MCClient$9;->val$message:Lcom/mechat/mechatlibrary/bean/MCMessage;

    const-string v14, "failure"

    invoke-virtual {v13, v14}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mechat/mechatlibrary/MCClient$9;->val$onMessageSendStateCallback:Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/MCClient$9;->val$message:Lcom/mechat/mechatlibrary/bean/MCMessage;

    const-string v15, "no service online"

    invoke-interface {v13, v14, v15}, Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;->onFailure(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/lang/String;)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mechat/mechatlibrary/MCClient$9;->this$0:Lcom/mechat/mechatlibrary/MCClient;

    #getter for: Lcom/mechat/mechatlibrary/MCClient;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;
    invoke-static {v13}, Lcom/mechat/mechatlibrary/MCClient;->access$10(Lcom/mechat/mechatlibrary/MCClient;)Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/MCClient$9;->val$message:Lcom/mechat/mechatlibrary/bean/MCMessage;

    invoke-virtual {v13, v14}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->updateMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1033
    :catch_1
    move-exception v4

    .line 1034
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
