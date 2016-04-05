.class public final enum Lcom/easemob/chat/EMConversation$EMConversationType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMConversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMConversationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/easemob/chat/EMConversation$EMConversationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Chat:Lcom/easemob/chat/EMConversation$EMConversationType;

.field public static final enum ChatRoom:Lcom/easemob/chat/EMConversation$EMConversationType;

.field public static final enum DiscussionGroup:Lcom/easemob/chat/EMConversation$EMConversationType;

.field private static final synthetic ENUM$VALUES:[Lcom/easemob/chat/EMConversation$EMConversationType;

.field public static final enum GroupChat:Lcom/easemob/chat/EMConversation$EMConversationType;

.field public static final enum HelpDesk:Lcom/easemob/chat/EMConversation$EMConversationType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/easemob/chat/EMConversation$EMConversationType;

    const-string v1, "Chat"

    invoke-direct {v0, v1, v2}, Lcom/easemob/chat/EMConversation$EMConversationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->Chat:Lcom/easemob/chat/EMConversation$EMConversationType;

    new-instance v0, Lcom/easemob/chat/EMConversation$EMConversationType;

    const-string v1, "GroupChat"

    invoke-direct {v0, v1, v3}, Lcom/easemob/chat/EMConversation$EMConversationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->GroupChat:Lcom/easemob/chat/EMConversation$EMConversationType;

    new-instance v0, Lcom/easemob/chat/EMConversation$EMConversationType;

    const-string v1, "ChatRoom"

    invoke-direct {v0, v1, v4}, Lcom/easemob/chat/EMConversation$EMConversationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->ChatRoom:Lcom/easemob/chat/EMConversation$EMConversationType;

    new-instance v0, Lcom/easemob/chat/EMConversation$EMConversationType;

    const-string v1, "DiscussionGroup"

    invoke-direct {v0, v1, v5}, Lcom/easemob/chat/EMConversation$EMConversationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->DiscussionGroup:Lcom/easemob/chat/EMConversation$EMConversationType;

    new-instance v0, Lcom/easemob/chat/EMConversation$EMConversationType;

    const-string v1, "HelpDesk"

    invoke-direct {v0, v1, v6}, Lcom/easemob/chat/EMConversation$EMConversationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->HelpDesk:Lcom/easemob/chat/EMConversation$EMConversationType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/easemob/chat/EMConversation$EMConversationType;

    sget-object v1, Lcom/easemob/chat/EMConversation$EMConversationType;->Chat:Lcom/easemob/chat/EMConversation$EMConversationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/easemob/chat/EMConversation$EMConversationType;->GroupChat:Lcom/easemob/chat/EMConversation$EMConversationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/easemob/chat/EMConversation$EMConversationType;->ChatRoom:Lcom/easemob/chat/EMConversation$EMConversationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/easemob/chat/EMConversation$EMConversationType;->DiscussionGroup:Lcom/easemob/chat/EMConversation$EMConversationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/easemob/chat/EMConversation$EMConversationType;->HelpDesk:Lcom/easemob/chat/EMConversation$EMConversationType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->ENUM$VALUES:[Lcom/easemob/chat/EMConversation$EMConversationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/easemob/chat/EMConversation$EMConversationType;
    .locals 1

    const-class v0, Lcom/easemob/chat/EMConversation$EMConversationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMConversation$EMConversationType;

    return-object v0
.end method

.method public static values()[Lcom/easemob/chat/EMConversation$EMConversationType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->ENUM$VALUES:[Lcom/easemob/chat/EMConversation$EMConversationType;

    array-length v1, v0

    new-array v2, v1, [Lcom/easemob/chat/EMConversation$EMConversationType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
