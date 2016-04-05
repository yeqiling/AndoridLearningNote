.class public Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cacheInMemory:Z

.field private cacheOnDisk:Z

.field private considerExifParams:Z

.field private decodingOptions:Landroid/graphics/BitmapFactory$Options;

.field private delayBeforeLoading:I

.field private displayer:Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;

.field private extraForDownloader:Ljava/lang/Object;

.field private handler:Landroid/os/Handler;

.field private imageForEmptyUri:Landroid/graphics/drawable/Drawable;

.field private imageOnFail:Landroid/graphics/drawable/Drawable;

.field private imageOnLoading:Landroid/graphics/drawable/Drawable;

.field private imageResForEmptyUri:I

.field private imageResOnFail:I

.field private imageResOnLoading:I

.field private imageScaleType:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageScaleType;

.field private isSyncLoading:Z

.field private postProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private preProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private resetViewBeforeLoading:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput v1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    .line 205
    iput v1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResForEmptyUri:I

    .line 206
    iput v1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnFail:I

    .line 207
    iput-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    .line 208
    iput-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    .line 209
    iput-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnFail:Landroid/graphics/drawable/Drawable;

    .line 210
    iput-boolean v1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    .line 211
    iput-boolean v1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    .line 212
    iput-boolean v1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk:Z

    .line 213
    sget-object v0, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageScaleType;

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 214
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    .line 215
    iput v1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I

    .line 216
    iput-boolean v1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams:Z

    .line 217
    iput-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;

    .line 218
    iput-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 219
    iput-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 220
    invoke-static {}, Lcom/mechat/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createBitmapDisplayer()Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 221
    iput-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;

    .line 222
    iput-boolean v1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->isSyncLoading:Z

    .line 225
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 226
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 227
    return-void
.end method

.method static synthetic access$0(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 204
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    return v0
.end method

.method static synthetic access$1(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 205
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResForEmptyUri:I

    return v0
.end method

.method static synthetic access$10(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$11(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 215
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I

    return v0
.end method

.method static synthetic access$12(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams:Z

    return v0
.end method

.method static synthetic access$13(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$15(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$16(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;

    return-object v0
.end method

.method static synthetic access$17(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$18(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->isSyncLoading:Z

    return v0
.end method

.method static synthetic access$2(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 206
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnFail:I

    return v0
.end method

.method static synthetic access$3(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnFail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    return v0
.end method

.method static synthetic access$7(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    return v0
.end method

.method static synthetic access$8(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk:Z

    return v0
.end method

.method static synthetic access$9(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/mechat/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method


# virtual methods
.method public bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 2
    .parameter "bitmapConfig"

    .prologue
    .line 383
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmapConfig can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 385
    return-object p0
.end method

.method public build()Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 2

    .prologue
    .line 490
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)V

    return-object v0
.end method

.method public cacheInMemory()Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    .line 337
    return-object p0
.end method

.method public cacheInMemory(Z)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .parameter "cacheInMemory"

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    .line 343
    return-object p0
.end method

.method public cacheOnDisc()Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 353
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public cacheOnDisc(Z)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 1
    .parameter "cacheOnDisk"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public cacheOnDisk(Z)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .parameter "cacheOnDisk"

    .prologue
    .line 368
    iput-boolean p1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk:Z

    .line 369
    return-object p0
.end method

.method public cloneFrom(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 1
    .parameter "options"

    .prologue
    .line 466
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnLoading:I
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->access$0(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)I

    move-result v0

    iput v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    .line 467
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->access$1(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)I

    move-result v0

    iput v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResForEmptyUri:I

    .line 468
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnFail:I
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->access$2(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)I

    move-result v0

    iput v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnFail:I

    .line 469
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->access$3(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    .line 470
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->access$4(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    .line 471
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->access$5(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnFail:Landroid/graphics/drawable/Drawable;

    .line 472
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->access$6(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    .line 473
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->cacheInMemory:Z
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->access$7(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    .line 474
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->cacheOnDisk:Z
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->access$8(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk:Z

    .line 475
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageScaleType:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageScaleType;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->access$9(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/mechat/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 476
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->access$10(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    .line 477
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->delayBeforeLoading:I
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->access$11(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)I

    move-result v0

    iput v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I

    .line 478
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->considerExifParams:Z
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->access$12(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams:Z

    .line 479
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->access$13(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;

    .line 480
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->preProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->access$14(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 481
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->postProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->access$15(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 482
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->displayer:Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->access$16(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 483
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->access$17(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;

    .line 484
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading:Z
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->access$18(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->isSyncLoading:Z

    .line 485
    return-object p0
.end method

.method public considerExifParams(Z)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .parameter "considerExifParams"

    .prologue
    .line 416
    iput-boolean p1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams:Z

    .line 417
    return-object p0
.end method

.method public decodingOptions(Landroid/graphics/BitmapFactory$Options;)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 2
    .parameter "decodingOptions"

    .prologue
    .line 397
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "decodingOptions can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_0
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    .line 399
    return-object p0
.end method

.method public delayBeforeLoading(I)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .parameter "delayInMillis"

    .prologue
    .line 404
    iput p1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I

    .line 405
    return-object p0
.end method

.method public displayer(Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 2
    .parameter "displayer"

    .prologue
    .line 445
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayer can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_0
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 447
    return-object p0
.end method

.method public extraForDownloader(Ljava/lang/Object;)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .parameter "extra"

    .prologue
    .line 410
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;

    .line 411
    return-object p0
.end method

.method public handler(Landroid/os/Handler;)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .parameter "handler"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;

    .line 461
    return-object p0
.end method

.method public imageScaleType(Lcom/mechat/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .parameter "imageScaleType"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 378
    return-object p0
.end method

.method public postProcessor(Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .parameter "postProcessor"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 437
    return-object p0
.end method

.method public preProcessor(Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .parameter "preProcessor"

    .prologue
    .line 426
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 427
    return-object p0
.end method

.method public resetViewBeforeLoading()Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    .line 317
    return-object p0
.end method

.method public resetViewBeforeLoading(Z)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .parameter "resetViewBeforeLoading"

    .prologue
    .line 325
    iput-boolean p1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    .line 326
    return-object p0
.end method

.method public showImageForEmptyUri(I)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .parameter "imageRes"

    .prologue
    .line 271
    iput p1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResForEmptyUri:I

    .line 272
    return-object p0
.end method

.method public showImageForEmptyUri(Landroid/graphics/drawable/Drawable;)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .parameter "drawable"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    .line 283
    return-object p0
.end method

.method public showImageOnFail(I)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .parameter "imageRes"

    .prologue
    .line 294
    iput p1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnFail:I

    .line 295
    return-object p0
.end method

.method public showImageOnFail(Landroid/graphics/drawable/Drawable;)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .parameter "drawable"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnFail:Landroid/graphics/drawable/Drawable;

    .line 306
    return-object p0
.end method

.method public showImageOnLoading(I)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .parameter "imageRes"

    .prologue
    .line 249
    iput p1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    .line 250
    return-object p0
.end method

.method public showImageOnLoading(Landroid/graphics/drawable/Drawable;)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .parameter "drawable"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    .line 260
    return-object p0
.end method

.method public showStubImage(I)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .parameter "imageRes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 238
    iput p1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    .line 239
    return-object p0
.end method

.method syncLoading(Z)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .parameter "isSyncLoading"

    .prologue
    .line 451
    iput-boolean p1, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->isSyncLoading:Z

    .line 452
    return-object p0
.end method
