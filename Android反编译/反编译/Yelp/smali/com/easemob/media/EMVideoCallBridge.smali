.class public Lcom/easemob/media/EMVideoCallBridge;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/media/IGxStatusCallback;


# static fields
.field private static instance:Lcom/easemob/media/EMVideoCallBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/media/EMVideoCallBridge;->instance:Lcom/easemob/media/EMVideoCallBridge;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGLContext(II)Z
    .locals 2

    const-string v0, "SDL"

    const-string v1, "to call initEGL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/easemob/a/a;->a(II)Z

    move-result v0

    return v0
.end method

.method public static flipBuffers()V
    .locals 0

    invoke-static {}, Lcom/easemob/a/a;->c()V

    return-void
.end method

.method public static getInstance()Lcom/easemob/media/EMVideoCallBridge;
    .locals 1

    sget-object v0, Lcom/easemob/media/EMVideoCallBridge;->instance:Lcom/easemob/media/EMVideoCallBridge;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/media/EMVideoCallBridge;

    invoke-direct {v0}, Lcom/easemob/media/EMVideoCallBridge;-><init>()V

    sput-object v0, Lcom/easemob/media/EMVideoCallBridge;->instance:Lcom/easemob/media/EMVideoCallBridge;

    :cond_0
    sget-object v0, Lcom/easemob/media/EMVideoCallBridge;->instance:Lcom/easemob/media/EMVideoCallBridge;

    return-object v0
.end method

.method public static setActivityTitle(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/easemob/a/a;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public updateStatus(I)V
    .locals 0

    return-void
.end method
