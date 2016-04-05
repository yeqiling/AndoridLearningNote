.class final enum Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMChatRoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EMChatRoomEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;

.field public static final enum Invitate:Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;

    const-string v1, "Invitate"

    invoke-direct {v0, v1, v2}, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;->Invitate:Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;

    sget-object v1, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;->Invitate:Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;->ENUM$VALUES:[Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;
    .locals 1

    const-class v0, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;

    return-object v0
.end method

.method public static values()[Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;->ENUM$VALUES:[Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;

    array-length v1, v0

    new-array v2, v1, [Lcom/easemob/chat/EMChatRoomManager$EMChatRoomEventType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
