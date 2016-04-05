.class public final enum Lcom/easemob/EMNotifierEvent$Event;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/EMNotifierEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/easemob/EMNotifierEvent$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/easemob/EMNotifierEvent$Event;

.field public static final enum EventConversationListChanged:Lcom/easemob/EMNotifierEvent$Event;

.field public static final enum EventDeliveryAck:Lcom/easemob/EMNotifierEvent$Event;

.field public static final enum EventLogout:Lcom/easemob/EMNotifierEvent$Event;

.field public static final enum EventMessageChanged:Lcom/easemob/EMNotifierEvent$Event;

.field public static final enum EventNewCMDMessage:Lcom/easemob/EMNotifierEvent$Event;

.field public static final enum EventNewMessage:Lcom/easemob/EMNotifierEvent$Event;

.field public static final enum EventOfflineMessage:Lcom/easemob/EMNotifierEvent$Event;

.field public static final enum EventReadAck:Lcom/easemob/EMNotifierEvent$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/easemob/EMNotifierEvent$Event;

    const-string v1, "EventNewMessage"

    invoke-direct {v0, v1, v3}, Lcom/easemob/EMNotifierEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/EMNotifierEvent$Event;->EventNewMessage:Lcom/easemob/EMNotifierEvent$Event;

    new-instance v0, Lcom/easemob/EMNotifierEvent$Event;

    const-string v1, "EventNewCMDMessage"

    invoke-direct {v0, v1, v4}, Lcom/easemob/EMNotifierEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/EMNotifierEvent$Event;->EventNewCMDMessage:Lcom/easemob/EMNotifierEvent$Event;

    new-instance v0, Lcom/easemob/EMNotifierEvent$Event;

    const-string v1, "EventReadAck"

    invoke-direct {v0, v1, v5}, Lcom/easemob/EMNotifierEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/EMNotifierEvent$Event;->EventReadAck:Lcom/easemob/EMNotifierEvent$Event;

    new-instance v0, Lcom/easemob/EMNotifierEvent$Event;

    const-string v1, "EventDeliveryAck"

    invoke-direct {v0, v1, v6}, Lcom/easemob/EMNotifierEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/EMNotifierEvent$Event;->EventDeliveryAck:Lcom/easemob/EMNotifierEvent$Event;

    new-instance v0, Lcom/easemob/EMNotifierEvent$Event;

    const-string v1, "EventOfflineMessage"

    invoke-direct {v0, v1, v7}, Lcom/easemob/EMNotifierEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/EMNotifierEvent$Event;->EventOfflineMessage:Lcom/easemob/EMNotifierEvent$Event;

    new-instance v0, Lcom/easemob/EMNotifierEvent$Event;

    const-string v1, "EventConversationListChanged"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/easemob/EMNotifierEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/EMNotifierEvent$Event;->EventConversationListChanged:Lcom/easemob/EMNotifierEvent$Event;

    new-instance v0, Lcom/easemob/EMNotifierEvent$Event;

    const-string v1, "EventMessageChanged"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/easemob/EMNotifierEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/EMNotifierEvent$Event;->EventMessageChanged:Lcom/easemob/EMNotifierEvent$Event;

    new-instance v0, Lcom/easemob/EMNotifierEvent$Event;

    const-string v1, "EventLogout"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/easemob/EMNotifierEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/EMNotifierEvent$Event;->EventLogout:Lcom/easemob/EMNotifierEvent$Event;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/easemob/EMNotifierEvent$Event;

    sget-object v1, Lcom/easemob/EMNotifierEvent$Event;->EventNewMessage:Lcom/easemob/EMNotifierEvent$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/easemob/EMNotifierEvent$Event;->EventNewCMDMessage:Lcom/easemob/EMNotifierEvent$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/easemob/EMNotifierEvent$Event;->EventReadAck:Lcom/easemob/EMNotifierEvent$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/easemob/EMNotifierEvent$Event;->EventDeliveryAck:Lcom/easemob/EMNotifierEvent$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/easemob/EMNotifierEvent$Event;->EventOfflineMessage:Lcom/easemob/EMNotifierEvent$Event;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/easemob/EMNotifierEvent$Event;->EventConversationListChanged:Lcom/easemob/EMNotifierEvent$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/easemob/EMNotifierEvent$Event;->EventMessageChanged:Lcom/easemob/EMNotifierEvent$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/easemob/EMNotifierEvent$Event;->EventLogout:Lcom/easemob/EMNotifierEvent$Event;

    aput-object v2, v0, v1

    sput-object v0, Lcom/easemob/EMNotifierEvent$Event;->ENUM$VALUES:[Lcom/easemob/EMNotifierEvent$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/easemob/EMNotifierEvent$Event;
    .locals 1

    const-class v0, Lcom/easemob/EMNotifierEvent$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/easemob/EMNotifierEvent$Event;

    return-object v0
.end method

.method public static values()[Lcom/easemob/EMNotifierEvent$Event;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/easemob/EMNotifierEvent$Event;->ENUM$VALUES:[Lcom/easemob/EMNotifierEvent$Event;

    array-length v1, v0

    new-array v2, v1, [Lcom/easemob/EMNotifierEvent$Event;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
