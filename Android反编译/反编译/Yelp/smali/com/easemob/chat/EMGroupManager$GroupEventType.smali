.class final enum Lcom/easemob/chat/EMGroupManager$GroupEventType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMGroupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GroupEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/easemob/chat/EMGroupManager$GroupEventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ApplicationAccept:Lcom/easemob/chat/EMGroupManager$GroupEventType;

.field public static final enum ApplicationDeclind:Lcom/easemob/chat/EMGroupManager$GroupEventType;

.field public static final enum Apply:Lcom/easemob/chat/EMGroupManager$GroupEventType;

.field private static final synthetic ENUM$VALUES:[Lcom/easemob/chat/EMGroupManager$GroupEventType;

.field public static final enum Invitate:Lcom/easemob/chat/EMGroupManager$GroupEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/easemob/chat/EMGroupManager$GroupEventType;

    const-string v1, "Invitate"

    invoke-direct {v0, v1, v2}, Lcom/easemob/chat/EMGroupManager$GroupEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMGroupManager$GroupEventType;->Invitate:Lcom/easemob/chat/EMGroupManager$GroupEventType;

    new-instance v0, Lcom/easemob/chat/EMGroupManager$GroupEventType;

    const-string v1, "Apply"

    invoke-direct {v0, v1, v3}, Lcom/easemob/chat/EMGroupManager$GroupEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMGroupManager$GroupEventType;->Apply:Lcom/easemob/chat/EMGroupManager$GroupEventType;

    new-instance v0, Lcom/easemob/chat/EMGroupManager$GroupEventType;

    const-string v1, "ApplicationAccept"

    invoke-direct {v0, v1, v4}, Lcom/easemob/chat/EMGroupManager$GroupEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMGroupManager$GroupEventType;->ApplicationAccept:Lcom/easemob/chat/EMGroupManager$GroupEventType;

    new-instance v0, Lcom/easemob/chat/EMGroupManager$GroupEventType;

    const-string v1, "ApplicationDeclind"

    invoke-direct {v0, v1, v5}, Lcom/easemob/chat/EMGroupManager$GroupEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMGroupManager$GroupEventType;->ApplicationDeclind:Lcom/easemob/chat/EMGroupManager$GroupEventType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/easemob/chat/EMGroupManager$GroupEventType;

    sget-object v1, Lcom/easemob/chat/EMGroupManager$GroupEventType;->Invitate:Lcom/easemob/chat/EMGroupManager$GroupEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/easemob/chat/EMGroupManager$GroupEventType;->Apply:Lcom/easemob/chat/EMGroupManager$GroupEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/easemob/chat/EMGroupManager$GroupEventType;->ApplicationAccept:Lcom/easemob/chat/EMGroupManager$GroupEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/easemob/chat/EMGroupManager$GroupEventType;->ApplicationDeclind:Lcom/easemob/chat/EMGroupManager$GroupEventType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/easemob/chat/EMGroupManager$GroupEventType;->ENUM$VALUES:[Lcom/easemob/chat/EMGroupManager$GroupEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/easemob/chat/EMGroupManager$GroupEventType;
    .locals 1

    const-class v0, Lcom/easemob/chat/EMGroupManager$GroupEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMGroupManager$GroupEventType;

    return-object v0
.end method

.method public static values()[Lcom/easemob/chat/EMGroupManager$GroupEventType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/easemob/chat/EMGroupManager$GroupEventType;->ENUM$VALUES:[Lcom/easemob/chat/EMGroupManager$GroupEventType;

    array-length v1, v0

    new-array v2, v1, [Lcom/easemob/chat/EMGroupManager$GroupEventType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
