.class final Lme/nereo/multi_image_selector/bean/Folder$1;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/nereo/multi_image_selector/bean/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lme/nereo/multi_image_selector/bean/Folder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lme/nereo/multi_image_selector/bean/Folder$1;->createFromParcel(Landroid/os/Parcel;)Lme/nereo/multi_image_selector/bean/Folder;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lme/nereo/multi_image_selector/bean/Folder;
    .locals 2
    .parameter "source"

    .prologue
    .line 54
    new-instance v0, Lme/nereo/multi_image_selector/bean/Folder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lme/nereo/multi_image_selector/bean/Folder;-><init>(Landroid/os/Parcel;Lme/nereo/multi_image_selector/bean/Folder$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lme/nereo/multi_image_selector/bean/Folder$1;->newArray(I)[Lme/nereo/multi_image_selector/bean/Folder;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lme/nereo/multi_image_selector/bean/Folder;
    .locals 1
    .parameter "size"

    .prologue
    .line 58
    new-array v0, p1, [Lme/nereo/multi_image_selector/bean/Folder;

    return-object v0
.end method
