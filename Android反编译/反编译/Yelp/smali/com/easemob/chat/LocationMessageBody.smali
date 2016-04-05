.class public Lcom/easemob/chat/LocationMessageBody;
.super Lcom/easemob/chat/MessageBody;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/easemob/chat/LocationMessageBody;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field address:Ljava/lang/String;

.field latitude:D

.field longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/easemob/chat/LocationMessageBody$1;

    invoke-direct {v0}, Lcom/easemob/chat/LocationMessageBody$1;-><init>()V

    sput-object v0, Lcom/easemob/chat/LocationMessageBody;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/easemob/chat/MessageBody;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/LocationMessageBody;->address:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/easemob/chat/LocationMessageBody;->latitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/easemob/chat/LocationMessageBody;->longitude:D

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/easemob/chat/LocationMessageBody;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/chat/LocationMessageBody;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DD)V
    .locals 0

    invoke-direct {p0}, Lcom/easemob/chat/MessageBody;-><init>()V

    iput-object p1, p0, Lcom/easemob/chat/LocationMessageBody;->address:Ljava/lang/String;

    iput-wide p2, p0, Lcom/easemob/chat/LocationMessageBody;->latitude:D

    iput-wide p4, p0, Lcom/easemob/chat/LocationMessageBody;->longitude:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/LocationMessageBody;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/easemob/chat/LocationMessageBody;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/easemob/chat/LocationMessageBody;->longitude:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "location:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/LocationMessageBody;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/easemob/chat/LocationMessageBody;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lng:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/easemob/chat/LocationMessageBody;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/LocationMessageBody;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/easemob/chat/LocationMessageBody;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/easemob/chat/LocationMessageBody;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
