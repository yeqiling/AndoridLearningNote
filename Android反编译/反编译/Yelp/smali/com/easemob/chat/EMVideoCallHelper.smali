.class public Lcom/easemob/chat/EMVideoCallHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/chat/EMVideoCallHelper$EMVideoOrientation;
    }
.end annotation


# static fields
.field private static instance:Lcom/easemob/chat/EMVideoCallHelper;


# instance fields
.field private videoOrientation:Lcom/easemob/chat/EMVideoCallHelper$EMVideoOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/chat/EMVideoCallHelper;->instance:Lcom/easemob/chat/EMVideoCallHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/easemob/chat/EMVideoCallHelper$EMVideoOrientation;->EMPortrait:Lcom/easemob/chat/EMVideoCallHelper$EMVideoOrientation;

    iput-object v0, p0, Lcom/easemob/chat/EMVideoCallHelper;->videoOrientation:Lcom/easemob/chat/EMVideoCallHelper$EMVideoOrientation;

    return-void
.end method

.method public static getInstance()Lcom/easemob/chat/EMVideoCallHelper;
    .locals 1

    sget-object v0, Lcom/easemob/chat/EMVideoCallHelper;->instance:Lcom/easemob/chat/EMVideoCallHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/chat/EMVideoCallHelper;

    invoke-direct {v0}, Lcom/easemob/chat/EMVideoCallHelper;-><init>()V

    sput-object v0, Lcom/easemob/chat/EMVideoCallHelper;->instance:Lcom/easemob/chat/EMVideoCallHelper;

    :cond_0
    sget-object v0, Lcom/easemob/chat/EMVideoCallHelper;->instance:Lcom/easemob/chat/EMVideoCallHelper;

    return-object v0
.end method


# virtual methods
.method public getLocalBitrate()I
    .locals 1

    invoke-static {}, Lcom/easemob/a/a;->a()Lcom/easemob/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/a/a;->o()I

    move-result v0

    return v0
.end method

.method public getRemoteBitrate()I
    .locals 1

    invoke-static {}, Lcom/easemob/a/a;->a()Lcom/easemob/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/a/a;->n()I

    move-result v0

    return v0
.end method

.method public getVideoFramerate()I
    .locals 1

    invoke-static {}, Lcom/easemob/a/a;->a()Lcom/easemob/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/a/a;->j()I

    move-result v0

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    invoke-static {}, Lcom/easemob/a/a;->a()Lcom/easemob/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/a/a;->m()I

    move-result v0

    return v0
.end method

.method public getVideoLostcnt()I
    .locals 1

    invoke-static {}, Lcom/easemob/a/a;->a()Lcom/easemob/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/a/a;->k()I

    move-result v0

    return v0
.end method

.method public getVideoOrientation()Lcom/easemob/chat/EMVideoCallHelper$EMVideoOrientation;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMVideoCallHelper;->videoOrientation:Lcom/easemob/chat/EMVideoCallHelper$EMVideoOrientation;

    return-object v0
.end method

.method public getVideoTimedelay()I
    .locals 1

    invoke-static {}, Lcom/easemob/a/a;->a()Lcom/easemob/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/a/a;->i()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    invoke-static {}, Lcom/easemob/a/a;->a()Lcom/easemob/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/a/a;->l()I

    move-result v0

    return v0
.end method

.method public onWindowResize(III)V
    .locals 1

    invoke-static {}, Lcom/easemob/a/a;->a()Lcom/easemob/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/easemob/a/a;->a(III)V

    return-void
.end method

.method public processPreviewData(II[B)V
    .locals 1

    invoke-static {}, Lcom/easemob/a/a;->a()Lcom/easemob/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/easemob/a/a;->a(II[B)V

    return-void
.end method

.method public setResolution(II)V
    .locals 1

    invoke-static {}, Lcom/easemob/a/a;->a()Lcom/easemob/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/a/a;->b(II)V

    return-void
.end method

.method public setSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    invoke-static {}, Lcom/easemob/a/a;->a()Lcom/easemob/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/a/a;->a(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public setVideoOrientation(Lcom/easemob/chat/EMVideoCallHelper$EMVideoOrientation;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMVideoCallHelper;->videoOrientation:Lcom/easemob/chat/EMVideoCallHelper$EMVideoOrientation;

    return-void
.end method

.method public takePicture(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/easemob/a/a;->a()Lcom/easemob/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/a/a;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
