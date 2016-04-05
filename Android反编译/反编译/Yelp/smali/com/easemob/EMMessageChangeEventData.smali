.class public Lcom/easemob/EMMessageChangeEventData;
.super Lcom/easemob/EMChangeEventData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/EMMessageChangeEventData$EMChangeSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/easemob/EMChangeEventData",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public changedMsg:Lcom/easemob/chat/EMMessage;

.field public source:Lcom/easemob/EMMessageChangeEventData$EMChangeSource;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/easemob/EMChangeEventData;-><init>()V

    iput-object v0, p0, Lcom/easemob/EMMessageChangeEventData;->source:Lcom/easemob/EMMessageChangeEventData$EMChangeSource;

    iput-object v0, p0, Lcom/easemob/EMMessageChangeEventData;->changedMsg:Lcom/easemob/chat/EMMessage;

    return-void
.end method
