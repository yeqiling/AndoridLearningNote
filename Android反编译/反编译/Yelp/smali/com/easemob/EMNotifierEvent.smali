.class public Lcom/easemob/EMNotifierEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/EMNotifierEvent$Event;
    }
.end annotation


# instance fields
.field private event:Lcom/easemob/EMNotifierEvent$Event;

.field private eventData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/EMNotifierEvent;->eventData:Ljava/lang/Object;

    sget-object v0, Lcom/easemob/EMNotifierEvent$Event;->EventNewMessage:Lcom/easemob/EMNotifierEvent$Event;

    iput-object v0, p0, Lcom/easemob/EMNotifierEvent;->event:Lcom/easemob/EMNotifierEvent$Event;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/easemob/EMNotifierEvent;->eventData:Ljava/lang/Object;

    return-object v0
.end method

.method public getEvent()Lcom/easemob/EMNotifierEvent$Event;
    .locals 1

    iget-object v0, p0, Lcom/easemob/EMNotifierEvent;->event:Lcom/easemob/EMNotifierEvent$Event;

    return-object v0
.end method

.method public setEvent(Lcom/easemob/EMNotifierEvent$Event;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/EMNotifierEvent;->event:Lcom/easemob/EMNotifierEvent$Event;

    return-void
.end method

.method public setEventData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/EMNotifierEvent;->eventData:Ljava/lang/Object;

    return-void
.end method
