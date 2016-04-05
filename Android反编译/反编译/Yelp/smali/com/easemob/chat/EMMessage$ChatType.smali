.class public final enum Lcom/easemob/chat/EMMessage$ChatType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/easemob/chat/EMMessage$ChatType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Chat:Lcom/easemob/chat/EMMessage$ChatType;

.field public static final enum ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

.field private static final synthetic ENUM$VALUES:[Lcom/easemob/chat/EMMessage$ChatType;

.field public static final enum GroupChat:Lcom/easemob/chat/EMMessage$ChatType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/easemob/chat/EMMessage$ChatType;

    const-string v1, "Chat"

    invoke-direct {v0, v1, v2}, Lcom/easemob/chat/EMMessage$ChatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMMessage$ChatType;->Chat:Lcom/easemob/chat/EMMessage$ChatType;

    new-instance v0, Lcom/easemob/chat/EMMessage$ChatType;

    const-string v1, "GroupChat"

    invoke-direct {v0, v1, v3}, Lcom/easemob/chat/EMMessage$ChatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    new-instance v0, Lcom/easemob/chat/EMMessage$ChatType;

    const-string v1, "ChatRoom"

    invoke-direct {v0, v1, v4}, Lcom/easemob/chat/EMMessage$ChatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/easemob/chat/EMMessage$ChatType;

    sget-object v1, Lcom/easemob/chat/EMMessage$ChatType;->Chat:Lcom/easemob/chat/EMMessage$ChatType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/easemob/chat/EMMessage$ChatType;->ENUM$VALUES:[Lcom/easemob/chat/EMMessage$ChatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/easemob/chat/EMMessage$ChatType;
    .locals 1

    const-class v0, Lcom/easemob/chat/EMMessage$ChatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage$ChatType;

    return-object v0
.end method

.method public static values()[Lcom/easemob/chat/EMMessage$ChatType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/easemob/chat/EMMessage$ChatType;->ENUM$VALUES:[Lcom/easemob/chat/EMMessage$ChatType;

    array-length v1, v0

    new-array v2, v1, [Lcom/easemob/chat/EMMessage$ChatType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
