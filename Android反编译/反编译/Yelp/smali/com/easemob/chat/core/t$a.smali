.class final enum Lcom/easemob/chat/core/t$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/core/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/easemob/chat/core/t$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/easemob/chat/core/t$a;

.field public static final enum b:Lcom/easemob/chat/core/t$a;

.field public static final enum c:Lcom/easemob/chat/core/t$a;

.field private static final synthetic e:[Lcom/easemob/chat/core/t$a;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/easemob/chat/core/t$a;

    const-string v1, "ACTION_JOIN_P2P_VOICE_ROOM"

    const-string v2, "join-p2p-voice"

    invoke-direct {v0, v1, v3, v2}, Lcom/easemob/chat/core/t$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/easemob/chat/core/t$a;->a:Lcom/easemob/chat/core/t$a;

    new-instance v0, Lcom/easemob/chat/core/t$a;

    const-string v1, "ACTION_JOIN_P2P_VIDEO_ROOM"

    const-string v2, "join-p2p-video"

    invoke-direct {v0, v1, v4, v2}, Lcom/easemob/chat/core/t$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/easemob/chat/core/t$a;->b:Lcom/easemob/chat/core/t$a;

    new-instance v0, Lcom/easemob/chat/core/t$a;

    const-string v1, "ACTION_REMOVE_P2P_ROOM"

    const-string v2, "remove-p2p"

    invoke-direct {v0, v1, v5, v2}, Lcom/easemob/chat/core/t$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/easemob/chat/core/t$a;->c:Lcom/easemob/chat/core/t$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/easemob/chat/core/t$a;

    sget-object v1, Lcom/easemob/chat/core/t$a;->a:Lcom/easemob/chat/core/t$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/easemob/chat/core/t$a;->b:Lcom/easemob/chat/core/t$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/easemob/chat/core/t$a;->c:Lcom/easemob/chat/core/t$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/easemob/chat/core/t$a;->e:[Lcom/easemob/chat/core/t$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/easemob/chat/core/t$a;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/easemob/chat/core/t$a;
    .locals 1

    const-class v0, Lcom/easemob/chat/core/t$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/core/t$a;

    return-object v0
.end method

.method public static values()[Lcom/easemob/chat/core/t$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/easemob/chat/core/t$a;->e:[Lcom/easemob/chat/core/t$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/easemob/chat/core/t$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/t$a;->d:Ljava/lang/String;

    return-object v0
.end method
