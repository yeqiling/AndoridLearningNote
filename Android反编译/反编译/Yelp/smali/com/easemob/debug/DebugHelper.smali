.class public Lcom/easemob/debug/DebugHelper;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "DebugHelper"

.field static final TOKEN_ENTITY:Ljava/lang/String; = "entities"

.field static final UUID:Ljava/lang/String; = "uuid"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static uploadLog(Landroid/content/Context;Ljava/lang/String;Lcom/easemob/EMCallBack;)V
    .locals 1

    new-instance v0, Lcom/easemob/debug/DebugHelper$1;

    invoke-direct {v0, p2, p1}, Lcom/easemob/debug/DebugHelper$1;-><init>(Lcom/easemob/EMCallBack;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/easemob/debug/DebugHelper$1;->start()V

    return-void
.end method
