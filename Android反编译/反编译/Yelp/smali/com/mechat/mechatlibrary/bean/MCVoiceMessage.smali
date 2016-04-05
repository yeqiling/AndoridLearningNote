.class public Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;
.super Lcom/mechat/mechatlibrary/bean/MCMessage;
.source "MCVoiceMessage.java"


# instance fields
.field private duration:I

.field private localPath:Ljava/lang/String;

.field private voiceUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/bean/MCMessage;-><init>()V

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->duration:I

    .line 9
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setType(I)V

    .line 10
    const-string v0, "[\u8bed\u97f3]"

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setContent(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->duration:I

    return v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->voiceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 34
    iput p1, p0, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->duration:I

    .line 35
    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0
    .parameter "localPath"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->localPath:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setVoiceUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "voiceUrl"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->voiceUrl:Ljava/lang/String;

    .line 19
    return-void
.end method
