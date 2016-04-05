.class Lcom/mechat/mechatlibrary/MechatService$1;
.super Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;
.source "MechatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/MechatService;->poll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/MechatService;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/MechatService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MechatService$1;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    .line 101
    invoke-direct {p0}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseString"
    .parameter "throwable"

    .prologue
    .line 214
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "throwable"
    .parameter "errorResponse"

    .prologue
    .line 219
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V

    .line 220
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "throwable"
    .parameter "errorResponse"

    .prologue
    .line 224
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 225
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 229
    invoke-super {p0}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFinish()V

    .line 230
    const-string v0, "MechatService"

    const-string v1, "poll onFinish"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MechatService$1;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    const/4 v1, 0x0

    #setter for: Lcom/mechat/mechatlibrary/MechatService;->isPolling:Z
    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/MechatService;->access$9(Lcom/mechat/mechatlibrary/MechatService;Z)V

    .line 232
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MechatService$1;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    #calls: Lcom/mechat/mechatlibrary/MechatService;->rePoll()V
    invoke-static {v0}, Lcom/mechat/mechatlibrary/MechatService;->access$10(Lcom/mechat/mechatlibrary/MechatService;)V

    .line 233
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 22
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 104
    invoke-super/range {p0 .. p3}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 105
    const-string v19, "MechatService"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "poll response = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :try_start_0
    const-string v19, "success"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 110
    .local v5, isSuccess:Z
    if-eqz v5, :cond_1

    .line 113
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->getInstance()Lcom/mechat/mechatlibrary/MCClient;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/mechat/mechatlibrary/MCClient;->removeAutoResponse()V

    .line 115
    const-string v19, "msgs"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 119
    .local v6, msgArray:Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_1

    .line 121
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 123
    .local v7, msgObject:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/MechatService$1;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/MechatService$1;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    move-object/from16 v20, v0

    const-string v21, "_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    #calls: Lcom/mechat/mechatlibrary/MechatService;->hasKeyAndReturn(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    invoke-static {v0, v1, v7}, Lcom/mechat/mechatlibrary/MechatService;->access$1(Lcom/mechat/mechatlibrary/MechatService;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v20

    #setter for: Lcom/mechat/mechatlibrary/MechatService;->messageIdString:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/mechat/mechatlibrary/MechatService;->access$2(Lcom/mechat/mechatlibrary/MechatService;Ljava/lang/String;)V

    .line 124
    const-string v19, "MechatService"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "poll uploadMsgId = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/MechatService$1;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    move-object/from16 v21, v0

    #getter for: Lcom/mechat/mechatlibrary/MechatService;->messageIdString:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/mechat/mechatlibrary/MechatService;->access$3(Lcom/mechat/mechatlibrary/MechatService;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/MechatService$1;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    move-object/from16 v19, v0

    const-string v20, "type"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    #calls: Lcom/mechat/mechatlibrary/MechatService;->hasKeyAndReturn(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    invoke-static {v0, v1, v7}, Lcom/mechat/mechatlibrary/MechatService;->access$1(Lcom/mechat/mechatlibrary/MechatService;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v16

    .line 128
    .local v16, type:Ljava/lang/String;
    const-string v19, "us_normal"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "us_image"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 129
    :cond_0
    const-string v19, "MechatService"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "us_normal start download voice = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/MechatService$1;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    move-object/from16 v21, v0

    #getter for: Lcom/mechat/mechatlibrary/MechatService;->messageIdString:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/mechat/mechatlibrary/MechatService;->access$3(Lcom/mechat/mechatlibrary/MechatService;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {v7}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->getMCMessageFromJsonObject(Lorg/json/JSONObject;)Lcom/mechat/mechatlibrary/bean/MCMessage;

    move-result-object v3

    .line 132
    .local v3, chatMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    const-string v19, "arrived"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/MechatService$1;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    move-object/from16 v19, v0

    #getter for: Lcom/mechat/mechatlibrary/MechatService;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;
    invoke-static/range {v19 .. v19}, Lcom/mechat/mechatlibrary/MechatService;->access$4(Lcom/mechat/mechatlibrary/MechatService;)Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->saveMCMessageForNoExist(Lcom/mechat/mechatlibrary/bean/MCMessage;)J

    .line 136
    const/16 v19, 0x2

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/MechatService$1;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    move-object/from16 v19, v0

    #getter for: Lcom/mechat/mechatlibrary/MechatService;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;
    invoke-static/range {v19 .. v19}, Lcom/mechat/mechatlibrary/MechatService;->access$5(Lcom/mechat/mechatlibrary/MechatService;)Lcom/mechat/mechatlibrary/utils/SpManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/mechat/mechatlibrary/utils/SpManager;->getShowVoiceMessage()Z

    move-result v19

    if-nez v19, :cond_2

    .line 210
    .end local v3           #chatMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    .end local v5           #isSuccess:Z
    .end local v6           #msgArray:Lorg/json/JSONArray;
    .end local v7           #msgObject:Lorg/json/JSONObject;
    .end local v16           #type:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 140
    .restart local v3       #chatMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    .restart local v5       #isSuccess:Z
    .restart local v6       #msgArray:Lorg/json/JSONArray;
    .restart local v7       #msgObject:Lorg/json/JSONObject;
    .restart local v16       #type:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/MechatService$1;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Lcom/mechat/mechatlibrary/MechatService;->addMsgAndSendBroadcast(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    invoke-static {v0, v3}, Lcom/mechat/mechatlibrary/MechatService;->access$6(Lcom/mechat/mechatlibrary/MechatService;Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    .end local v3           #chatMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    .end local v5           #isSuccess:Z
    .end local v6           #msgArray:Lorg/json/JSONArray;
    .end local v7           #msgObject:Lorg/json/JSONObject;
    .end local v16           #type:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 208
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v4           #e:Lorg/json/JSONException;
    .restart local v5       #isSuccess:Z
    .restart local v6       #msgArray:Lorg/json/JSONArray;
    .restart local v7       #msgObject:Lorg/json/JSONObject;
    .restart local v16       #type:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v19, "us_voice"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 147
    invoke-static {v7}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->getMCMessageFromJsonObject(Lorg/json/JSONObject;)Lcom/mechat/mechatlibrary/bean/MCMessage;

    move-result-object v3

    .line 148
    .restart local v3       #chatMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    const-string v19, "arrived"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/MechatService$1;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    move-object/from16 v19, v0

    #getter for: Lcom/mechat/mechatlibrary/MechatService;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;
    invoke-static/range {v19 .. v19}, Lcom/mechat/mechatlibrary/MechatService;->access$4(Lcom/mechat/mechatlibrary/MechatService;)Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->saveMCMessageForNoExist(Lcom/mechat/mechatlibrary/bean/MCMessage;)J

    .line 152
    const-string v19, "MechatService"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "start download voice = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/MechatService$1;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    move-object/from16 v21, v0

    #getter for: Lcom/mechat/mechatlibrary/MechatService;->messageIdString:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/mechat/mechatlibrary/MechatService;->access$3(Lcom/mechat/mechatlibrary/MechatService;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/MechatService$1;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Lcom/mechat/mechatlibrary/MechatService;->downloadVoiceFile(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    invoke-static {v0, v3}, Lcom/mechat/mechatlibrary/MechatService;->access$7(Lcom/mechat/mechatlibrary/MechatService;Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    goto :goto_0

    .line 157
    .end local v3           #chatMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    :cond_4
    const-string v19, "us_inputting"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 159
    new-instance v8, Landroid/content/Intent;

    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v19

    .line 160
    invoke-virtual/range {v19 .. v19}, Lcom/mechat/mechatlibrary/MCMessageManager;->getServiceInputtingAction()Ljava/lang/String;

    move-result-object v19

    .line 159
    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v8, newMessage:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/MechatService$1;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/mechat/mechatlibrary/MechatService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 165
    .end local v8           #newMessage:Landroid/content/Intent;
    :cond_5
    const-string v19, "us_redirect"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 166
    const-string v19, "userver"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 168
    .local v14, serverObject:Lorg/json/JSONObject;
    const-string v19, "usname"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 169
    .local v13, redirectUsname:Ljava/lang/String;
    const-string v19, "usavatar"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 170
    .local v9, redirectAvatar:Ljava/lang/String;
    const-string v19, "usid"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 173
    .local v12, redirectUsid:Ljava/lang/String;
    invoke-static {}, Lcom/mechat/mechatlibrary/bean/MCService;->getCurrentService()Lcom/mechat/mechatlibrary/bean/MCService;

    move-result-object v15

    .line 174
    .local v15, service:Lcom/mechat/mechatlibrary/bean/MCService;
    invoke-virtual {v15}, Lcom/mechat/mechatlibrary/bean/MCService;->getUsavatar()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, avatar:Ljava/lang/String;
    invoke-virtual {v15}, Lcom/mechat/mechatlibrary/bean/MCService;->getUsname()Ljava/lang/String;

    move-result-object v18

    .line 176
    .local v18, usname:Ljava/lang/String;
    invoke-virtual {v15}, Lcom/mechat/mechatlibrary/bean/MCService;->getUsid()Ljava/lang/String;

    move-result-object v17

    .line 179
    .local v17, usid:Ljava/lang/String;
    invoke-virtual {v15, v13}, Lcom/mechat/mechatlibrary/bean/MCService;->setUsname(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v15, v9}, Lcom/mechat/mechatlibrary/bean/MCService;->setUsavatar(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v15, v12}, Lcom/mechat/mechatlibrary/bean/MCService;->setUsid(Ljava/lang/String;)V

    .line 182
    invoke-static {v15}, Lcom/mechat/mechatlibrary/bean/MCService;->setCurrentService(Lcom/mechat/mechatlibrary/bean/MCService;)V

    .line 185
    new-instance v10, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;

    invoke-direct {v10}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;-><init>()V

    .line 186
    .local v10, redirectEvent:Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;
    invoke-virtual {v10, v2}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setAvatarUrl(Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setUsid(Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setUsname(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v10, v9}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setRedirectAvatarUrl(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v10, v13}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setRedirectUsname(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v10, v12}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setRedirectUsid(Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/MechatService$1;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    move-object/from16 v19, v0

    #getter for: Lcom/mechat/mechatlibrary/MechatService;->mcEventDBManger:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;
    invoke-static/range {v19 .. v19}, Lcom/mechat/mechatlibrary/MechatService;->access$8(Lcom/mechat/mechatlibrary/MechatService;)Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->saveMCEvent(Lcom/mechat/mechatlibrary/bean/MCEvent;)J

    .line 196
    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/mechat/mechatlibrary/MCMessageManager;->addEvent(Lcom/mechat/mechatlibrary/bean/MCEvent;)V

    .line 198
    new-instance v11, Landroid/content/Intent;

    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v19

    .line 199
    invoke-virtual/range {v19 .. v19}, Lcom/mechat/mechatlibrary/MCMessageManager;->getUserIsRedirectedEventAction()Ljava/lang/String;

    move-result-object v19

    .line 198
    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v11, redirectEventIntent:Landroid/content/Intent;
    const-string v19, "eventId"

    invoke-virtual {v10}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->getId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/MechatService$1;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/mechat/mechatlibrary/MechatService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
