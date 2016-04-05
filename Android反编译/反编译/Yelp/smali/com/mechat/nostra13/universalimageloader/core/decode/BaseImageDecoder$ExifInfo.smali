.class public Lcom/mechat/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
.super Ljava/lang/Object;
.source "BaseImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/nostra13/universalimageloader/core/decode/BaseImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ExifInfo"
.end annotation


# instance fields
.field public final flipHorizontal:Z

.field public final rotation:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput v0, p0, Lcom/mechat/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    .line 227
    iput-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->flipHorizontal:Z

    .line 228
    return-void
.end method

.method protected constructor <init>(IZ)V
    .locals 0
    .parameter "rotation"
    .parameter "flipHorizontal"

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput p1, p0, Lcom/mechat/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    .line 232
    iput-boolean p2, p0, Lcom/mechat/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->flipHorizontal:Z

    .line 233
    return-void
.end method
