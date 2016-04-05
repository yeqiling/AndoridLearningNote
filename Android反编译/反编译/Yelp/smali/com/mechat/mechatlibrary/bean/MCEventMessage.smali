.class public Lcom/mechat/mechatlibrary/bean/MCEventMessage;
.super Lcom/mechat/mechatlibrary/bean/MCMessage;
.source "MCEventMessage.java"


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private eventType:Ljava/lang/String;

.field private redirectAvatarUrl:Ljava/lang/String;

.field private redirectUsname:Ljava/lang/String;

.field private usname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/bean/MCMessage;-><init>()V

    .line 14
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->setType(I)V

    .line 15
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->setDirection(I)V

    .line 16
    return-void
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->redirectAvatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUsname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->redirectUsname:Ljava/lang/String;

    return-object v0
.end method

.method public getUsname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->usname:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "avatarUrl"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->avatarUrl:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->eventType:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setRedirectAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "redirectAvatarUrl"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->redirectAvatarUrl:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setRedirectUsname(Ljava/lang/String;)V
    .locals 0
    .parameter "redirectUsname"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->redirectUsname:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setUsname(Ljava/lang/String;)V
    .locals 0
    .parameter "usname"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->usname:Ljava/lang/String;

    .line 32
    return-void
.end method
