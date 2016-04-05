.class Lcom/easemob/chat/EMChatRoomManager$EMChatRoomChangeEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMChatRoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EMChatRoomChangeEvent"
.end annotation


# instance fields
.field inviterUserName:Ljava/lang/String;

.field reason:Ljava/lang/String;

.field roomId:Ljava/lang/String;

.field roomName:Ljava/lang/String;

.field final synthetic this$0:Lcom/easemob/chat/EMChatRoomManager;

.field type:Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;


# direct methods
.method public constructor <init>(Lcom/easemob/chat/EMChatRoomManager;Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomChangeEvent;->this$0:Lcom/easemob/chat/EMChatRoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomChangeEvent;->type:Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;

    iput-object p3, p0, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomChangeEvent;->roomId:Ljava/lang/String;

    iput-object p4, p0, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomChangeEvent;->roomName:Ljava/lang/String;

    iput-object p5, p0, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomChangeEvent;->inviterUserName:Ljava/lang/String;

    iput-object p6, p0, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomChangeEvent;->reason:Ljava/lang/String;

    return-void
.end method
