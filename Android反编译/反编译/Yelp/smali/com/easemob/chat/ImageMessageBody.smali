.class public Lcom/easemob/chat/ImageMessageBody;
.super Lcom/easemob/chat/FileMessageBody;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/easemob/chat/ImageMessageBody;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field height:I

.field private sendOriginalImage:Z

.field thumbnailSecret:Ljava/lang/String;

.field thumbnailUrl:Ljava/lang/String;

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/easemob/chat/ImageMessageBody$1;

    invoke-direct {v0}, Lcom/easemob/chat/ImageMessageBody$1;-><init>()V

    sput-object v0, Lcom/easemob/chat/ImageMessageBody;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/easemob/chat/FileMessageBody;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/ImageMessageBody;->thumbnailSecret:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/easemob/chat/FileMessageBody;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/ImageMessageBody;->thumbnailSecret:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/ImageMessageBody;->fileName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/ImageMessageBody;->localUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/ImageMessageBody;->remoteUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/ImageMessageBody;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/easemob/chat/ImageMessageBody;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/easemob/chat/ImageMessageBody;->height:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/easemob/chat/ImageMessageBody;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/chat/ImageMessageBody;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    invoke-direct {p0}, Lcom/easemob/chat/FileMessageBody;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/ImageMessageBody;->thumbnailSecret:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/ImageMessageBody;->localUrl:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/ImageMessageBody;->fileName:Ljava/lang/String;

    const-string v0, "imagemsg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create image message body for:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/easemob/chat/FileMessageBody;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/ImageMessageBody;->thumbnailSecret:Ljava/lang/String;

    iput-object p1, p0, Lcom/easemob/chat/ImageMessageBody;->fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/easemob/chat/ImageMessageBody;->remoteUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/easemob/chat/ImageMessageBody;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/easemob/chat/ImageMessageBody;->height:I

    return v0
.end method

.method public getThumbnailSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/ImageMessageBody;->thumbnailSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/ImageMessageBody;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/easemob/chat/ImageMessageBody;->width:I

    return v0
.end method

.method public isSendOriginalImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/ImageMessageBody;->sendOriginalImage:Z

    return v0
.end method

.method public setSendOriginalImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/ImageMessageBody;->sendOriginalImage:Z

    return-void
.end method

.method public setThumbnailSecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/ImageMessageBody;->thumbnailSecret:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/ImageMessageBody;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "image:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/ImageMessageBody;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localurl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/ImageMessageBody;->localUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",remoteurl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/ImageMessageBody;->remoteUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",thumbnial:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/ImageMessageBody;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/ImageMessageBody;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/ImageMessageBody;->localUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/ImageMessageBody;->remoteUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/ImageMessageBody;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/easemob/chat/ImageMessageBody;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/easemob/chat/ImageMessageBody;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
