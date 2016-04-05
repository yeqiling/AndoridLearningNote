.class public final enum Lcom/easemob/chat/EMMessage$Direct;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direct"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/easemob/chat/EMMessage$Direct;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/easemob/chat/EMMessage$Direct;

.field public static final enum RECEIVE:Lcom/easemob/chat/EMMessage$Direct;

.field public static final enum SEND:Lcom/easemob/chat/EMMessage$Direct;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/easemob/chat/EMMessage$Direct;

    const-string v1, "SEND"

    invoke-direct {v0, v1, v2}, Lcom/easemob/chat/EMMessage$Direct;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMMessage$Direct;->SEND:Lcom/easemob/chat/EMMessage$Direct;

    new-instance v0, Lcom/easemob/chat/EMMessage$Direct;

    const-string v1, "RECEIVE"

    invoke-direct {v0, v1, v3}, Lcom/easemob/chat/EMMessage$Direct;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMMessage$Direct;->RECEIVE:Lcom/easemob/chat/EMMessage$Direct;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/easemob/chat/EMMessage$Direct;

    sget-object v1, Lcom/easemob/chat/EMMessage$Direct;->SEND:Lcom/easemob/chat/EMMessage$Direct;

    aput-object v1, v0, v2

    sget-object v1, Lcom/easemob/chat/EMMessage$Direct;->RECEIVE:Lcom/easemob/chat/EMMessage$Direct;

    aput-object v1, v0, v3

    sput-object v0, Lcom/easemob/chat/EMMessage$Direct;->ENUM$VALUES:[Lcom/easemob/chat/EMMessage$Direct;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/easemob/chat/EMMessage$Direct;
    .locals 1

    const-class v0, Lcom/easemob/chat/EMMessage$Direct;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage$Direct;

    return-object v0
.end method

.method public static values()[Lcom/easemob/chat/EMMessage$Direct;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/easemob/chat/EMMessage$Direct;->ENUM$VALUES:[Lcom/easemob/chat/EMMessage$Direct;

    array-length v1, v0

    new-array v2, v1, [Lcom/easemob/chat/EMMessage$Direct;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
