.class public final enum Lcom/easemob/chat/core/c$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/core/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/easemob/chat/core/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/easemob/chat/core/c$a;

.field public static final enum b:Lcom/easemob/chat/core/c$a;

.field public static final enum c:Lcom/easemob/chat/core/c$a;

.field public static final enum d:Lcom/easemob/chat/core/c$a;

.field public static final enum e:Lcom/easemob/chat/core/c$a;

.field public static final enum f:Lcom/easemob/chat/core/c$a;

.field public static final enum g:Lcom/easemob/chat/core/c$a;

.field public static final enum h:Lcom/easemob/chat/core/c$a;

.field private static final synthetic i:[Lcom/easemob/chat/core/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/easemob/chat/core/c$a;

    const-string v1, "em_retrieve_dns"

    invoke-direct {v0, v1, v3}, Lcom/easemob/chat/core/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/core/c$a;->a:Lcom/easemob/chat/core/c$a;

    new-instance v0, Lcom/easemob/chat/core/c$a;

    const-string v1, "em_upload_dns"

    invoke-direct {v0, v1, v4}, Lcom/easemob/chat/core/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/core/c$a;->b:Lcom/easemob/chat/core/c$a;

    new-instance v0, Lcom/easemob/chat/core/c$a;

    const-string v1, "em_start_debug"

    invoke-direct {v0, v1, v5}, Lcom/easemob/chat/core/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/core/c$a;->c:Lcom/easemob/chat/core/c$a;

    new-instance v0, Lcom/easemob/chat/core/c$a;

    const-string v1, "em_stop_debug"

    invoke-direct {v0, v1, v6}, Lcom/easemob/chat/core/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/core/c$a;->d:Lcom/easemob/chat/core/c$a;

    new-instance v0, Lcom/easemob/chat/core/c$a;

    const-string v1, "em_upload_log"

    invoke-direct {v0, v1, v7}, Lcom/easemob/chat/core/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/core/c$a;->e:Lcom/easemob/chat/core/c$a;

    new-instance v0, Lcom/easemob/chat/core/c$a;

    const-string v1, "em_print_user"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/easemob/chat/core/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/core/c$a;->f:Lcom/easemob/chat/core/c$a;

    new-instance v0, Lcom/easemob/chat/core/c$a;

    const-string v1, "em_change_appkey"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/easemob/chat/core/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/core/c$a;->g:Lcom/easemob/chat/core/c$a;

    new-instance v0, Lcom/easemob/chat/core/c$a;

    const-string v1, "em_change_servers"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/easemob/chat/core/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/chat/core/c$a;->h:Lcom/easemob/chat/core/c$a;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/easemob/chat/core/c$a;

    sget-object v1, Lcom/easemob/chat/core/c$a;->a:Lcom/easemob/chat/core/c$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/easemob/chat/core/c$a;->b:Lcom/easemob/chat/core/c$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/easemob/chat/core/c$a;->c:Lcom/easemob/chat/core/c$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/easemob/chat/core/c$a;->d:Lcom/easemob/chat/core/c$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/easemob/chat/core/c$a;->e:Lcom/easemob/chat/core/c$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/easemob/chat/core/c$a;->f:Lcom/easemob/chat/core/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/easemob/chat/core/c$a;->g:Lcom/easemob/chat/core/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/easemob/chat/core/c$a;->h:Lcom/easemob/chat/core/c$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/easemob/chat/core/c$a;->i:[Lcom/easemob/chat/core/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/easemob/chat/core/c$a;
    .locals 1

    const-class v0, Lcom/easemob/chat/core/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/core/c$a;

    return-object v0
.end method

.method public static values()[Lcom/easemob/chat/core/c$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/easemob/chat/core/c$a;->i:[Lcom/easemob/chat/core/c$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/easemob/chat/core/c$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
