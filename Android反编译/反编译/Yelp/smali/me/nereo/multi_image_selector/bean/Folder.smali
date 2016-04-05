.class public Lme/nereo/multi_image_selector/bean/Folder;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lme/nereo/multi_image_selector/bean/Folder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cover:Lme/nereo/multi_image_selector/bean/Image;

.field public images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lme/nereo/multi_image_selector/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lme/nereo/multi_image_selector/bean/Folder$1;

    invoke-direct {v0}, Lme/nereo/multi_image_selector/bean/Folder$1;-><init>()V

    sput-object v0, Lme/nereo/multi_image_selector/bean/Folder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/nereo/multi_image_selector/bean/Folder;->name:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/nereo/multi_image_selector/bean/Folder;->path:Ljava/lang/String;

    .line 48
    const-class v0, Lme/nereo/multi_image_selector/bean/Image;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lme/nereo/multi_image_selector/bean/Image;

    iput-object v0, p0, Lme/nereo/multi_image_selector/bean/Folder;->cover:Lme/nereo/multi_image_selector/bean/Image;

    .line 49
    iget-object v0, p0, Lme/nereo/multi_image_selector/bean/Folder;->images:Ljava/util/List;

    sget-object v1, Lme/nereo/multi_image_selector/bean/Image;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lme/nereo/multi_image_selector/bean/Folder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lme/nereo/multi_image_selector/bean/Folder;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .line 21
    :try_start_0
    move-object v0, p1

    check-cast v0, Lme/nereo/multi_image_selector/bean/Folder;

    move-object v2, v0

    .line 22
    .local v2, other:Lme/nereo/multi_image_selector/bean/Folder;
    iget-object v3, p0, Lme/nereo/multi_image_selector/bean/Folder;->path:Ljava/lang/String;

    iget-object v4, v2, Lme/nereo/multi_image_selector/bean/Folder;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 26
    .end local v2           #other:Lme/nereo/multi_image_selector/bean/Folder;
    :goto_0
    return v3

    .line 23
    :catch_0
    move-exception v1

    .line 24
    .local v1, e:Ljava/lang/ClassCastException;
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 26
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 36
    iget-object v0, p0, Lme/nereo/multi_image_selector/bean/Folder;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lme/nereo/multi_image_selector/bean/Folder;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lme/nereo/multi_image_selector/bean/Folder;->cover:Lme/nereo/multi_image_selector/bean/Image;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 39
    iget-object v0, p0, Lme/nereo/multi_image_selector/bean/Folder;->images:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 40
    return-void
.end method
