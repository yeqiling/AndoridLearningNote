.class Lcom/easemob/chat/EMSDKLocalTest;
.super Ljava/lang/Object;


# static fields
.field static previousMsgTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/easemob/chat/EMSDKLocalTest;->previousMsgTime:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addConversations(II)V
    .locals 6

    const-string v0, "db"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[perf] start to add test conversations:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x1

    :goto_0
    if-le v0, p0, :cond_0

    const-string v0, "db"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[perf]finished add test conversatoins. time spend(s):"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "user"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/easemob/chat/EMSDKLocalTest;->addMsgs(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static addMsgs(Ljava/lang/String;I)V
    .locals 6

    const-string v0, "db"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start to add test message to:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msgs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p1, :cond_0

    const-string v0, "db"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "finished add test data. time spend:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/easemob/chat/EMSDKLocalTest;->createSentTextMsg(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/easemob/chat/EMChatDB;->getInstance()Lcom/easemob/chat/EMChatDB;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/easemob/chat/EMChatDB;->importMessage(Lcom/easemob/chat/EMMessage;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/easemob/chat/EMSDKLocalTest;->createReceivedTextMsg(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    goto :goto_1
.end method

.method private static createReceivedTextMsg(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;
    .locals 6

    sget-object v0, Lcom/easemob/chat/EMMessage$Type;->TXT:Lcom/easemob/chat/EMMessage$Type;

    invoke-static {v0}, Lcom/easemob/chat/EMMessage;->createReceiveMessage(Lcom/easemob/chat/EMMessage$Type;)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    new-instance v1, Lcom/easemob/chat/TextMessageBody;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receive text msg "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easemob/chat/TextMessageBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMMessage;->addBody(Lcom/easemob/chat/MessageBody;)V

    invoke-virtual {v0, p0}, Lcom/easemob/chat/EMMessage;->setFrom(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMSDKLocalTest;->getNextMsgTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/easemob/chat/EMMessage;->setMsgTime(J)V

    return-object v0
.end method

.method private static createSentTextMsg(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;
    .locals 6

    sget-object v0, Lcom/easemob/chat/EMMessage$Type;->TXT:Lcom/easemob/chat/EMMessage$Type;

    invoke-static {v0}, Lcom/easemob/chat/EMMessage;->createSendMessage(Lcom/easemob/chat/EMMessage$Type;)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    new-instance v1, Lcom/easemob/chat/TextMessageBody;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send text msg "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easemob/chat/TextMessageBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMMessage;->addBody(Lcom/easemob/chat/MessageBody;)V

    invoke-virtual {v0, p0}, Lcom/easemob/chat/EMMessage;->setTo(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMSDKLocalTest;->getNextMsgTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/easemob/chat/EMMessage;->setMsgTime(J)V

    return-object v0
.end method

.method private static getNextMsgTime()J
    .locals 4

    sget-wide v0, Lcom/easemob/chat/EMSDKLocalTest;->previousMsgTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    sput-wide v0, Lcom/easemob/chat/EMSDKLocalTest;->previousMsgTime:J

    return-wide v0

    :cond_0
    sget-wide v0, Lcom/easemob/chat/EMSDKLocalTest;->previousMsgTime:J

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    goto :goto_0
.end method
