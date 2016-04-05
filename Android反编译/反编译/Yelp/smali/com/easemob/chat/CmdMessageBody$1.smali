.class Lcom/easemob/chat/CmdMessageBody$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/CmdMessageBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/easemob/chat/CmdMessageBody;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/easemob/chat/CmdMessageBody;
    .locals 2

    new-instance v0, Lcom/easemob/chat/CmdMessageBody;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/easemob/chat/CmdMessageBody;-><init>(Landroid/os/Parcel;Lcom/easemob/chat/CmdMessageBody;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/easemob/chat/CmdMessageBody$1;->createFromParcel(Landroid/os/Parcel;)Lcom/easemob/chat/CmdMessageBody;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/easemob/chat/CmdMessageBody;
    .locals 1

    new-array v0, p1, [Lcom/easemob/chat/CmdMessageBody;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/easemob/chat/CmdMessageBody$1;->newArray(I)[Lcom/easemob/chat/CmdMessageBody;

    move-result-object v0

    return-object v0
.end method
