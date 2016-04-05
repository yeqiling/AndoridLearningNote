.class public Lcom/easemob/chat/VideoMessageBody;
.super Lcom/easemob/chat/FileMessageBody;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/easemob/chat/VideoMessageBody;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field file_length:J

.field length:I

.field localThumb:Ljava/lang/String;

.field thumbnailSecret:Ljava/lang/String;

.field thumbnailUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/easemob/chat/VideoMessageBody$1;

    invoke-direct {v0}, Lcom/easemob/chat/VideoMessageBody$1;-><init>()V

    sput-object v0, Lcom/easemob/chat/VideoMessageBody;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/easemob/chat/FileMessageBody;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/easemob/chat/VideoMessageBody;->length:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/VideoMessageBody;->thumbnailSecret:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/easemob/chat/VideoMessageBody;->file_length:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/easemob/chat/FileMessageBody;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/easemob/chat/VideoMessageBody;->length:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/VideoMessageBody;->thumbnailSecret:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/easemob/chat/VideoMessageBody;->file_length:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/VideoMessageBody;->fileName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/VideoMessageBody;->localUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/VideoMessageBody;->remoteUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/VideoMessageBody;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/VideoMessageBody;->localThumb:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/easemob/chat/VideoMessageBody;->length:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/easemob/chat/VideoMessageBody;->file_length:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/easemob/chat/VideoMessageBody;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/chat/VideoMessageBody;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;IJ)V
    .locals 4

    invoke-direct {p0}, Lcom/easemob/chat/FileMessageBody;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/easemob/chat/VideoMessageBody;->length:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/VideoMessageBody;->thumbnailSecret:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/easemob/chat/VideoMessageBody;->file_length:J

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/VideoMessageBody;->localUrl:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/VideoMessageBody;->fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/easemob/chat/VideoMessageBody;->localThumb:Ljava/lang/String;

    iput p3, p0, Lcom/easemob/chat/VideoMessageBody;->length:I

    iput-wide p4, p0, Lcom/easemob/chat/VideoMessageBody;->file_length:J

    const-string v0, "videomsg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create video,message body for:"

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

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lcom/easemob/chat/FileMessageBody;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/easemob/chat/VideoMessageBody;->length:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/VideoMessageBody;->thumbnailSecret:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/easemob/chat/VideoMessageBody;->file_length:J

    iput-object p1, p0, Lcom/easemob/chat/VideoMessageBody;->fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/easemob/chat/VideoMessageBody;->remoteUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/easemob/chat/VideoMessageBody;->thumbnailUrl:Ljava/lang/String;

    iput p4, p0, Lcom/easemob/chat/VideoMessageBody;->length:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/easemob/chat/VideoMessageBody;->length:I

    return v0
.end method

.method public getLocalThumb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/VideoMessageBody;->localThumb:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/VideoMessageBody;->thumbnailSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/VideoMessageBody;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoFileLength()J
    .locals 2

    iget-wide v0, p0, Lcom/easemob/chat/VideoMessageBody;->file_length:J

    return-wide v0
.end method

.method public setLocalThumb(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/VideoMessageBody;->localThumb:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailSecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/VideoMessageBody;->thumbnailSecret:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/VideoMessageBody;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public setVideoFileLength(J)V
    .locals 1

    iput-wide p1, p0, Lcom/easemob/chat/VideoMessageBody;->file_length:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "video:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/VideoMessageBody;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/VideoMessageBody;->localUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",remoteUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/VideoMessageBody;->remoteUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",thumbnailUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/VideoMessageBody;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/easemob/chat/VideoMessageBody;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/VideoMessageBody;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/VideoMessageBody;->localUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/VideoMessageBody;->remoteUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/VideoMessageBody;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/VideoMessageBody;->localThumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/easemob/chat/VideoMessageBody;->length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/easemob/chat/VideoMessageBody;->file_length:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
