.class public Lme/nereo/multi_image_selector/bean/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lme/nereo/multi_image_selector/bean/Image;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public originSize:J

.field public path:Ljava/lang/String;

.field public time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lme/nereo/multi_image_selector/bean/Image$1;

    invoke-direct {v0}, Lme/nereo/multi_image_selector/bean/Image$1;-><init>()V

    sput-object v0, Lme/nereo/multi_image_selector/bean/Image;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/nereo/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/nereo/multi_image_selector/bean/Image;->name:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lme/nereo/multi_image_selector/bean/Image;->time:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lme/nereo/multi_image_selector/bean/Image;->originSize:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/nereo/multi_image_selector/bean/Image;->id:Ljava/lang/String;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lme/nereo/multi_image_selector/bean/Image$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lme/nereo/multi_image_selector/bean/Image;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "name"
    .parameter "time"
    .parameter "originSize"
    .parameter "id"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lme/nereo/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lme/nereo/multi_image_selector/bean/Image;->name:Ljava/lang/String;

    .line 20
    iput-wide p3, p0, Lme/nereo/multi_image_selector/bean/Image;->time:J

    .line 21
    iput-wide p5, p0, Lme/nereo/multi_image_selector/bean/Image;->originSize:J

    .line 22
    iput-object p7, p0, Lme/nereo/multi_image_selector/bean/Image;->id:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .line 28
    :try_start_0
    move-object v0, p1

    check-cast v0, Lme/nereo/multi_image_selector/bean/Image;

    move-object v2, v0

    .line 29
    .local v2, other:Lme/nereo/multi_image_selector/bean/Image;
    iget-object v3, p0, Lme/nereo/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    iget-object v4, v2, Lme/nereo/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 33
    .end local v2           #other:Lme/nereo/multi_image_selector/bean/Image;
    :goto_0
    return v3

    .line 30
    :catch_0
    move-exception v1

    .line 31
    .local v1, e:Ljava/lang/ClassCastException;
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 33
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 43
    iget-object v0, p0, Lme/nereo/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lme/nereo/multi_image_selector/bean/Image;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-wide v0, p0, Lme/nereo/multi_image_selector/bean/Image;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    iget-wide v0, p0, Lme/nereo/multi_image_selector/bean/Image;->originSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget-object v0, p0, Lme/nereo/multi_image_selector/bean/Image;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return-void
.end method
