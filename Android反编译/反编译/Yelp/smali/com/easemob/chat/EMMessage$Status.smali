.class public final enum Lcom/easemob/chat/EMMessage$Status;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/easemob/chat/EMMessage$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CREATE:Lcom/easemob/chat/EMMessage$Status;

.field private static final synthetic ENUM$VALUES:[Lcom/easemob/chat/EMMessage$Status;

.field public static final enum FAIL:Lcom/easemob/chat/EMMessage$Status;

.field public static final enum INPROGRESS:Lcom/easemob/chat/EMMessage$Status;

.field public static final enum SUCCESS:Lcom/easemob/chat/EMMessage$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/easemob/chat/EMMessage$Status;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/easemob/chat/EMMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMMessage$Status;->SUCCESS:Lcom/easemob/chat/EMMessage$Status;

    new-instance v0, Lcom/easemob/chat/EMMessage$Status;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v3}, Lcom/easemob/chat/EMMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    new-instance v0, Lcom/easemob/chat/EMMessage$Status;

    const-string v1, "INPROGRESS"

    invoke-direct {v0, v1, v4}, Lcom/easemob/chat/EMMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMMessage$Status;->INPROGRESS:Lcom/easemob/chat/EMMessage$Status;

    new-instance v0, Lcom/easemob/chat/EMMessage$Status;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v5}, Lcom/easemob/chat/EMMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/EMMessage$Status;->CREATE:Lcom/easemob/chat/EMMessage$Status;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/easemob/chat/EMMessage$Status;

    sget-object v1, Lcom/easemob/chat/EMMessage$Status;->SUCCESS:Lcom/easemob/chat/EMMessage$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/easemob/chat/EMMessage$Status;->INPROGRESS:Lcom/easemob/chat/EMMessage$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/easemob/chat/EMMessage$Status;->CREATE:Lcom/easemob/chat/EMMessage$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/easemob/chat/EMMessage$Status;->ENUM$VALUES:[Lcom/easemob/chat/EMMessage$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/easemob/chat/EMMessage$Status;
    .locals 1

    const-class v0, Lcom/easemob/chat/EMMessage$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage$Status;

    return-object v0
.end method

.method public static values()[Lcom/easemob/chat/EMMessage$Status;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/easemob/chat/EMMessage$Status;->ENUM$VALUES:[Lcom/easemob/chat/EMMessage$Status;

    array-length v1, v0

    new-array v2, v1, [Lcom/easemob/chat/EMMessage$Status;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
