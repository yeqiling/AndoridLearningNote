.class public Lcom/boohee/utils/MultiImageHelper;
.super Ljava/lang/Object;
.source "MultiImageHelper.java"


# static fields
.field private static builder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 27
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sput-object v0, Lcom/boohee/utils/MultiImageHelper;->builder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/boohee/utils/MultiImageHelper;->builder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    return-object v0
.end method

.method public static initMultiSelctor()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/boohee/utils/MultiImageHelper$1;

    invoke-direct {v0}, Lcom/boohee/utils/MultiImageHelper$1;-><init>()V

    invoke-static {v0}, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->init(Lme/nereo/multi_image_selector/utils/MultiImageLoader;)V

    .line 92
    return-void
.end method
