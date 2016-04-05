.class public abstract Lcom/umeng/socialize/media/SimpleShareContent;
.super Ljava/lang/Object;
.source "SimpleShareContent.java"

# interfaces
.implements Lcom/umeng/socialize/media/UMediaObject;


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mShareContent:Ljava/lang/String;

.field protected mShareMedia:Lcom/umeng/socialize/media/UMediaObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareContent:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareContent:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->TAG:Ljava/lang/String;

    .line 129
    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareContent:Ljava/lang/String;

    .line 132
    const-class v0, Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/media/UMediaObject;

    .line 131
    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 134
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/media/UMImage;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareContent:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->TAG:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareContent:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->TAG:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareContent:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v0}, Lcom/umeng/socialize/media/UMediaObject;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShareContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareContent:Ljava/lang/String;

    return-object v0
.end method

.method public getShareImage()Lcom/umeng/socialize/media/UMImage;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    .line 85
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShareVideo()Lcom/umeng/socialize/media/UMVideo;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMVideo;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v0, Lcom/umeng/socialize/media/UMVideo;

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getTargetPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;
.end method

.method public isMultiMedia()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public isUrlMedia()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v0}, Lcom/umeng/socialize/media/UMediaObject;->isUrlMedia()Z

    move-result v0

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShareContent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareContent:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setShareImage(Lcom/umeng/socialize/media/UMImage;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 106
    return-void
.end method

.method public setShareVideo(Lcom/umeng/socialize/media/UMVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 90
    return-void
.end method

.method public toByte(Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;)V
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/media/UMediaObject;->toByte(Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;)V

    .line 165
    :cond_0
    return-void
.end method

.method public toByte()[B
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v0}, Lcom/umeng/socialize/media/UMediaObject;->toByte()[B

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SimplaShareContent [mShareContent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 260
    const-string v1, ", mShareImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v0}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public toUrlExtraParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v0}, Lcom/umeng/socialize/media/UMediaObject;->toUrlExtraParams()Ljava/util/Map;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 121
    return-void
.end method
