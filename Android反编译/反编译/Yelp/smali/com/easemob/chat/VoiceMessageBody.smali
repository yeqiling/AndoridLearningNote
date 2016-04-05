.class public Lcom/easemob/chat/VoiceMessageBody;
.super Lcom/easemob/chat/FileMessageBody;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/easemob/chat/VoiceMessageBody;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field length:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/easemob/chat/VoiceMessageBody$1;

    invoke-direct {v0}, Lcom/easemob/chat/VoiceMessageBody$1;-><init>()V

    sput-object v0, Lcom/easemob/chat/VoiceMessageBody;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/easemob/chat/FileMessageBody;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/easemob/chat/VoiceMessageBody;->length:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/VoiceMessageBody;->fileName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/VoiceMessageBody;->localUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/VoiceMessageBody;->remoteUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/easemob/chat/VoiceMessageBody;->length:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/easemob/chat/VoiceMessageBody;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/chat/VoiceMessageBody;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 3

    invoke-direct {p0}, Lcom/easemob/chat/FileMessageBody;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/easemob/chat/VoiceMessageBody;->length:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/VoiceMessageBody;->localUrl:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/VoiceMessageBody;->fileName:Ljava/lang/String;

    iput p2, p0, Lcom/easemob/chat/VoiceMessageBody;->length:I

    const-string v0, "voicemsg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create voice, message body for:"

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

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/easemob/chat/FileMessageBody;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/easemob/chat/VoiceMessageBody;->length:I

    iput-object p1, p0, Lcom/easemob/chat/VoiceMessageBody;->fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/easemob/chat/VoiceMessageBody;->remoteUrl:Ljava/lang/String;

    iput p3, p0, Lcom/easemob/chat/VoiceMessageBody;->length:I

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

    iget v0, p0, Lcom/easemob/chat/VoiceMessageBody;->length:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "voice:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/VoiceMessageBody;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localurl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/VoiceMessageBody;->localUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",remoteurl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/VoiceMessageBody;->remoteUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/easemob/chat/VoiceMessageBody;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/VoiceMessageBody;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/VoiceMessageBody;->localUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/VoiceMessageBody;->remoteUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/easemob/chat/VoiceMessageBody;->length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
