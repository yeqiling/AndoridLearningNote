.class public Lcom/mechat/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
.super Ljava/lang/Object;
.source "BaseImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/nostra13/universalimageloader/core/decode/BaseImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ImageFileInfo"
.end annotation


# instance fields
.field public final exif:Lcom/mechat/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

.field public final imageSize:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;


# direct methods
.method protected constructor <init>(Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;Lcom/mechat/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;)V
    .locals 0
    .parameter "imageSize"
    .parameter "exif"

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->imageSize:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;

    .line 243
    iput-object p2, p0, Lcom/mechat/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->exif:Lcom/mechat/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    .line 244
    return-void
.end method
