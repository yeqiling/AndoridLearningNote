.class public Lcom/mechat/mechatlibrary/bean/MCImageMessage;
.super Lcom/mechat/mechatlibrary/bean/MCMessage;
.source "MCImageMessage.java"


# instance fields
.field private image:Landroid/graphics/Bitmap;

.field private localPath:Ljava/lang/String;

.field private picUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/bean/MCMessage;-><init>()V

    .line 12
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->setType(I)V

    .line 13
    const-string v0, "[\u56fe\u7247]"

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->setContent(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getImage()Landroid/graphics/Bitmap;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "image"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->image:Landroid/graphics/Bitmap;

    .line 40
    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0
    .parameter "localPath"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->localPath:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "picUrl"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->picUrl:Ljava/lang/String;

    .line 22
    return-void
.end method
