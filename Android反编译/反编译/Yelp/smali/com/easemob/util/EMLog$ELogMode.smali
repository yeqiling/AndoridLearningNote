.class public final enum Lcom/easemob/util/EMLog$ELogMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/util/EMLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ELogMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/easemob/util/EMLog$ELogMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/easemob/util/EMLog$ELogMode;

.field public static final enum KLogConsoleFile:Lcom/easemob/util/EMLog$ELogMode;

.field public static final enum KLogConsoleOnly:Lcom/easemob/util/EMLog$ELogMode;

.field public static final enum KLogFileOnly:Lcom/easemob/util/EMLog$ELogMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/easemob/util/EMLog$ELogMode;

    const-string v1, "KLogConsoleOnly"

    invoke-direct {v0, v1, v2}, Lcom/easemob/util/EMLog$ELogMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/util/EMLog$ELogMode;->KLogConsoleOnly:Lcom/easemob/util/EMLog$ELogMode;

    new-instance v0, Lcom/easemob/util/EMLog$ELogMode;

    const-string v1, "KLogFileOnly"

    invoke-direct {v0, v1, v3}, Lcom/easemob/util/EMLog$ELogMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/util/EMLog$ELogMode;->KLogFileOnly:Lcom/easemob/util/EMLog$ELogMode;

    new-instance v0, Lcom/easemob/util/EMLog$ELogMode;

    const-string v1, "KLogConsoleFile"

    invoke-direct {v0, v1, v4}, Lcom/easemob/util/EMLog$ELogMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easemob/util/EMLog$ELogMode;->KLogConsoleFile:Lcom/easemob/util/EMLog$ELogMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/easemob/util/EMLog$ELogMode;

    sget-object v1, Lcom/easemob/util/EMLog$ELogMode;->KLogConsoleOnly:Lcom/easemob/util/EMLog$ELogMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/easemob/util/EMLog$ELogMode;->KLogFileOnly:Lcom/easemob/util/EMLog$ELogMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/easemob/util/EMLog$ELogMode;->KLogConsoleFile:Lcom/easemob/util/EMLog$ELogMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/easemob/util/EMLog$ELogMode;->ENUM$VALUES:[Lcom/easemob/util/EMLog$ELogMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/easemob/util/EMLog$ELogMode;
    .locals 1

    const-class v0, Lcom/easemob/util/EMLog$ELogMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/easemob/util/EMLog$ELogMode;

    return-object v0
.end method

.method public static values()[Lcom/easemob/util/EMLog$ELogMode;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/easemob/util/EMLog$ELogMode;->ENUM$VALUES:[Lcom/easemob/util/EMLog$ELogMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/easemob/util/EMLog$ELogMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
