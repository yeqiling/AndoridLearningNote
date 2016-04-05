.class public final enum Lcom/easemob/chat/core/p$a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/core/p$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/easemob/chat/core/p$a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/easemob/chat/core/p$a$a;

.field public static final enum b:Lcom/easemob/chat/core/p$a$a;

.field private static final synthetic c:[Lcom/easemob/chat/core/p$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/easemob/chat/core/p$a$a;

    const-string v1, "EUdp"

    invoke-direct {v0, v1, v2}, Lcom/easemob/chat/core/p$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/core/p$a$a;->a:Lcom/easemob/chat/core/p$a$a;

    new-instance v0, Lcom/easemob/chat/core/p$a$a;

    const-string v1, "ETcp"

    invoke-direct {v0, v1, v3}, Lcom/easemob/chat/core/p$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/core/p$a$a;->b:Lcom/easemob/chat/core/p$a$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/easemob/chat/core/p$a$a;

    sget-object v1, Lcom/easemob/chat/core/p$a$a;->a:Lcom/easemob/chat/core/p$a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/easemob/chat/core/p$a$a;->b:Lcom/easemob/chat/core/p$a$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/easemob/chat/core/p$a$a;->c:[Lcom/easemob/chat/core/p$a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/easemob/chat/core/p$a$a;
    .locals 1

    const-class v0, Lcom/easemob/chat/core/p$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/core/p$a$a;

    return-object v0
.end method

.method public static values()[Lcom/easemob/chat/core/p$a$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/easemob/chat/core/p$a$a;->c:[Lcom/easemob/chat/core/p$a$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/easemob/chat/core/p$a$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
