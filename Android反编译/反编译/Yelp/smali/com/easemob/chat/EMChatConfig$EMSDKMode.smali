.class public final enum Lcom/easemob/chat/EMChatConfig$EMSDKMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMChatConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMSDKMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/easemob/chat/EMChatConfig$EMSDKMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EMChatMode:Lcom/easemob/chat/EMChatConfig$EMSDKMode;

.field public static final enum EMHelpDeskMode:Lcom/easemob/chat/EMChatConfig$EMSDKMode;

.field private static final synthetic ENUM$VALUES:[Lcom/easemob/chat/EMChatConfig$EMSDKMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/easemob/chat/EMChatConfig$EMSDKMode;

    const-string v1, "EMChatMode"

    invoke-direct {v0, v1, v2}, Lcom/easemob/chat/EMChatConfig$EMSDKMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMChatConfig$EMSDKMode;->EMChatMode:Lcom/easemob/chat/EMChatConfig$EMSDKMode;

    new-instance v0, Lcom/easemob/chat/EMChatConfig$EMSDKMode;

    const-string v1, "EMHelpDeskMode"

    invoke-direct {v0, v1, v3}, Lcom/easemob/chat/EMChatConfig$EMSDKMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMChatConfig$EMSDKMode;->EMHelpDeskMode:Lcom/easemob/chat/EMChatConfig$EMSDKMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/easemob/chat/EMChatConfig$EMSDKMode;

    sget-object v1, Lcom/easemob/chat/EMChatConfig$EMSDKMode;->EMChatMode:Lcom/easemob/chat/EMChatConfig$EMSDKMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/easemob/chat/EMChatConfig$EMSDKMode;->EMHelpDeskMode:Lcom/easemob/chat/EMChatConfig$EMSDKMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/easemob/chat/EMChatConfig$EMSDKMode;->ENUM$VALUES:[Lcom/easemob/chat/EMChatConfig$EMSDKMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/easemob/chat/EMChatConfig$EMSDKMode;
    .locals 1

    const-class v0, Lcom/easemob/chat/EMChatConfig$EMSDKMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMChatConfig$EMSDKMode;

    return-object v0
.end method

.method public static values()[Lcom/easemob/chat/EMChatConfig$EMSDKMode;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/easemob/chat/EMChatConfig$EMSDKMode;->ENUM$VALUES:[Lcom/easemob/chat/EMChatConfig$EMSDKMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/easemob/chat/EMChatConfig$EMSDKMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
