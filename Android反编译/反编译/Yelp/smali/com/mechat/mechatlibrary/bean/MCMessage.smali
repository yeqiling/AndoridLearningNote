.class public Lcom/mechat/mechatlibrary/bean/MCMessage;
.super Ljava/lang/Object;
.source "MCMessage.java"


# static fields
.field public static final DIRECTION_RECEIVED:I = 0x1

.field public static final DIRECTION_SEND:I = 0x0

.field public static final STATUS_ARRIVED:Ljava/lang/String; = "arrived"

.field public static final STATUS_FAILURE:Ljava/lang/String; = "failure"

.field public static final STATUS_SENDING:Ljava/lang/String; = "sending"

.field public static final TAG:Ljava/lang/String; = "MCMessage"

.field public static final TYPE_IMAGE:I = 0x1

.field public static final TYPE_TEXT:I = 0x0

.field public static final TYPE_VOICE:I = 0x2


# instance fields
.field private content:Ljava/lang/String;

.field private createdTime:Ljava/lang/String;

.field private direction:I

.field private fromName:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "sending"

    iput-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCMessage;->status:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCMessage;->createdTime:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCMessage;->createdTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/mechat/mechatlibrary/bean/MCMessage;->direction:I

    return v0
.end method

.method public getFromName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCMessage;->fromName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCMessage;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/mechat/mechatlibrary/bean/MCMessage;->type:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCMessage;->content:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setCreatedTime(Ljava/lang/String;)V
    .locals 0
    .parameter "createdTime"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCMessage;->createdTime:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 82
    iput p1, p0, Lcom/mechat/mechatlibrary/bean/MCMessage;->direction:I

    .line 83
    return-void
.end method

.method public setFromName(Ljava/lang/String;)V
    .locals 0
    .parameter "fromName"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCMessage;->fromName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCMessage;->id:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCMessage;->status:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 42
    iput p1, p0, Lcom/mechat/mechatlibrary/bean/MCMessage;->type:I

    .line 43
    return-void
.end method
