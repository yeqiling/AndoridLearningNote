.class public final enum Lcom/easemob/chat/EMChatConfig$EMEnvMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMChatConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMEnvMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/easemob/chat/EMChatConfig$EMEnvMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EMDevMode:Lcom/easemob/chat/EMChatConfig$EMEnvMode;

.field public static final enum EMProductMode:Lcom/easemob/chat/EMChatConfig$EMEnvMode;

.field public static final enum EMSandboxMode:Lcom/easemob/chat/EMChatConfig$EMEnvMode;

.field private static final synthetic ENUM$VALUES:[Lcom/easemob/chat/EMChatConfig$EMEnvMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    const-string v1, "EMSandboxMode"

    invoke-direct {v0, v1, v2}, Lcom/easemob/chat/EMChatConfig$EMEnvMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMChatConfig$EMEnvMode;->EMSandboxMode:Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    new-instance v0, Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    const-string v1, "EMProductMode"

    invoke-direct {v0, v1, v3}, Lcom/easemob/chat/EMChatConfig$EMEnvMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMChatConfig$EMEnvMode;->EMProductMode:Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    new-instance v0, Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    const-string v1, "EMDevMode"

    invoke-direct {v0, v1, v4}, Lcom/easemob/chat/EMChatConfig$EMEnvMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMChatConfig$EMEnvMode;->EMDevMode:Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    sget-object v1, Lcom/easemob/chat/EMChatConfig$EMEnvMode;->EMSandboxMode:Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/easemob/chat/EMChatConfig$EMEnvMode;->EMProductMode:Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/easemob/chat/EMChatConfig$EMEnvMode;->EMDevMode:Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/easemob/chat/EMChatConfig$EMEnvMode;->ENUM$VALUES:[Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/easemob/chat/EMChatConfig$EMEnvMode;
    .locals 1

    const-class v0, Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    return-object v0
.end method

.method public static values()[Lcom/easemob/chat/EMChatConfig$EMEnvMode;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/easemob/chat/EMChatConfig$EMEnvMode;->ENUM$VALUES:[Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
