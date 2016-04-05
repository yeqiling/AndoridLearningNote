.class public Lcom/easemob/analytics/EMLoginCollector;
.super Lcom/easemob/analytics/EMCollector;


# static fields
.field public static final CHAT_LOGIN_TIME:Ljava/lang/String; = "chat login time"

.field public static final CONNECTION_ERROR_COLLECTION:Ljava/lang/String; = "connection error collection"

.field public static final IM_LOGIN_TIME:Ljava/lang/String; = "im login time"

.field public static final RETRIEVE_TOKEN_TIME:Ljava/lang/String; = "retrieve token time"

.field private static final TAG:Ljava/lang/String; = "[Collector][Login]"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/easemob/analytics/EMCollector;-><init>()V

    return-void
.end method

.method public static collectConnectionError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static collectIMLoginTime(J)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Collector][Login]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "im login time"

    invoke-static {v1}, Lcom/easemob/analytics/EMLoginCollector;->getTagPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "im login time : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/easemob/analytics/EMLoginCollector;->timeToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static collectLoginTime(J)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Collector][Login]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "chat login time"

    invoke-static {v1}, Lcom/easemob/analytics/EMLoginCollector;->getTagPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chat login time : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/easemob/analytics/EMLoginCollector;->timeToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static collectRetrieveTokenTime(J)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Collector][Login]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "retrieve token time"

    invoke-static {v1}, Lcom/easemob/analytics/EMLoginCollector;->getTagPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "retrieve token time : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/easemob/analytics/EMLoginCollector;->timeToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
