.class public final enum Lcom/easemob/chat/EMMessage$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/easemob/chat/EMMessage$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CMD:Lcom/easemob/chat/EMMessage$Type;

.field private static final synthetic ENUM$VALUES:[Lcom/easemob/chat/EMMessage$Type;

.field public static final enum FILE:Lcom/easemob/chat/EMMessage$Type;

.field public static final enum IMAGE:Lcom/easemob/chat/EMMessage$Type;

.field public static final enum LOCATION:Lcom/easemob/chat/EMMessage$Type;

.field public static final enum TXT:Lcom/easemob/chat/EMMessage$Type;

.field public static final enum VIDEO:Lcom/easemob/chat/EMMessage$Type;

.field public static final enum VOICE:Lcom/easemob/chat/EMMessage$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/easemob/chat/EMMessage$Type;

    const-string v1, "TXT"

    invoke-direct {v0, v1, v3}, Lcom/easemob/chat/EMMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMMessage$Type;->TXT:Lcom/easemob/chat/EMMessage$Type;

    new-instance v0, Lcom/easemob/chat/EMMessage$Type;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v4}, Lcom/easemob/chat/EMMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMMessage$Type;->IMAGE:Lcom/easemob/chat/EMMessage$Type;

    new-instance v0, Lcom/easemob/chat/EMMessage$Type;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/easemob/chat/EMMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMMessage$Type;->VIDEO:Lcom/easemob/chat/EMMessage$Type;

    new-instance v0, Lcom/easemob/chat/EMMessage$Type;

    const-string v1, "LOCATION"

    invoke-direct {v0, v1, v6}, Lcom/easemob/chat/EMMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMMessage$Type;->LOCATION:Lcom/easemob/chat/EMMessage$Type;

    new-instance v0, Lcom/easemob/chat/EMMessage$Type;

    const-string v1, "VOICE"

    invoke-direct {v0, v1, v7}, Lcom/easemob/chat/EMMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMMessage$Type;->VOICE:Lcom/easemob/chat/EMMessage$Type;

    new-instance v0, Lcom/easemob/chat/EMMessage$Type;

    const-string v1, "FILE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/easemob/chat/EMMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMMessage$Type;->FILE:Lcom/easemob/chat/EMMessage$Type;

    new-instance v0, Lcom/easemob/chat/EMMessage$Type;

    const-string v1, "CMD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/easemob/chat/EMMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMMessage$Type;->CMD:Lcom/easemob/chat/EMMessage$Type;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/easemob/chat/EMMessage$Type;

    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->TXT:Lcom/easemob/chat/EMMessage$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->IMAGE:Lcom/easemob/chat/EMMessage$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->VIDEO:Lcom/easemob/chat/EMMessage$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->LOCATION:Lcom/easemob/chat/EMMessage$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->VOICE:Lcom/easemob/chat/EMMessage$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/easemob/chat/EMMessage$Type;->FILE:Lcom/easemob/chat/EMMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/easemob/chat/EMMessage$Type;->CMD:Lcom/easemob/chat/EMMessage$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/easemob/chat/EMMessage$Type;->ENUM$VALUES:[Lcom/easemob/chat/EMMessage$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/easemob/chat/EMMessage$Type;
    .locals 1

    const-class v0, Lcom/easemob/chat/EMMessage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage$Type;

    return-object v0
.end method

.method public static values()[Lcom/easemob/chat/EMMessage$Type;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/easemob/chat/EMMessage$Type;->ENUM$VALUES:[Lcom/easemob/chat/EMMessage$Type;

    array-length v1, v0

    new-array v2, v1, [Lcom/easemob/chat/EMMessage$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
