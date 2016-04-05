.class Lcom/easemob/chat/EMChatManager$EMChatManagerListener;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jivesoftware/smack/ChatManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMChatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EMChatManagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMChatManager;


# direct methods
.method private constructor <init>(Lcom/easemob/chat/EMChatManager;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatManager$EMChatManagerListener;->this$0:Lcom/easemob/chat/EMChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/easemob/chat/EMChatManager;Lcom/easemob/chat/EMChatManager$EMChatManagerListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMChatManager$EMChatManagerListener;-><init>(Lcom/easemob/chat/EMChatManager;)V

    return-void
.end method


# virtual methods
.method public chatCreated(Lorg/jivesoftware/smack/Chat;Z)V
    .locals 4

    invoke-virtual {p1}, Lorg/jivesoftware/smack/Chat;->getParticipant()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMChatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "xmpp chat created for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMChatManager$EMChatManagerListener;->this$0:Lcom/easemob/chat/EMChatManager;

    #getter for: Lcom/easemob/chat/EMChatManager;->chats:Ljava/util/Map;
    invoke-static {v1}, Lcom/easemob/chat/EMChatManager;->access$2(Lcom/easemob/chat/EMChatManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
