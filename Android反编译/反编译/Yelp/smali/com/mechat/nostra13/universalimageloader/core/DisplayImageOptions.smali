.class public final Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    }
.end annotation


# instance fields
.field private final cacheInMemory:Z

.field private final cacheOnDisk:Z

.field private final considerExifParams:Z

.field private final decodingOptions:Landroid/graphics/BitmapFactory$Options;

.field private final delayBeforeLoading:I

.field private final displayer:Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;

.field private final extraForDownloader:Ljava/lang/Object;

.field private final handler:Landroid/os/Handler;

.field private final imageForEmptyUri:Landroid/graphics/drawable/Drawable;

.field private final imageOnFail:Landroid/graphics/drawable/Drawable;

.field private final imageOnLoading:Landroid/graphics/drawable/Drawable;

.field private final imageResForEmptyUri:I

.field private final imageResOnFail:I

.field private final imageResOnLoading:I

.field private final imageScaleType:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageScaleType;

.field private final isSyncLoading:Z

.field private final postProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private final preProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private final resetViewBeforeLoading:Z


# direct methods
.method private constructor <init>(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$0(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnLoading:I

    .line 90
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResForEmptyUri:I
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    .line 91
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnFail:I
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$2(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnFail:I

    .line 92
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnLoading:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$3(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    .line 93
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$4(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    .line 94
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnFail:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$5(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    .line 95
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$6(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z

    .line 96
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$7(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->cacheInMemory:Z

    .line 97
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk:Z
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$8(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->cacheOnDisk:Z

    .line 98
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageScaleType;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$9(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/mechat/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageScaleType:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 99
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$10(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    .line 100
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$11(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    .line 101
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams:Z
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$12(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->considerExifParams:Z

    .line 102
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$13(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;

    .line 103
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$14(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->preProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 104
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$15(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->postProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 105
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$16(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->displayer:Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 106
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$17(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;

    .line 107
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->isSyncLoading:Z
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$18(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading:Z

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    return-void
.end method

.method static synthetic access$0(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)I
    .locals 1
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnLoading:I

    return v0
.end method

.method static synthetic access$1(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)I
    .locals 1
    .parameter

    .prologue
    .line 69
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    return v0
.end method

.method static synthetic access$10(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$11(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)I
    .locals 1
    .parameter

    .prologue
    .line 79
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    return v0
.end method

.method static synthetic access$12(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->considerExifParams:Z

    return v0
.end method

.method static synthetic access$13(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->preProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$15(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->postProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$16(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->displayer:Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;

    return-object v0
.end method

.method static synthetic access$17(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$18(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading:Z

    return v0
.end method

.method static synthetic access$2(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)I
    .locals 1
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnFail:I

    return v0
.end method

.method static synthetic access$3(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z

    return v0
.end method

.method static synthetic access$7(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->cacheInMemory:Z

    return v0
.end method

.method static synthetic access$8(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->cacheOnDisk:Z

    return v0
.end method

.method static synthetic access$9(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/mechat/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageScaleType:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method public static createSimple()Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1

    .prologue
    .line 508
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDecodingOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public getDelayBeforeLoading()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    return v0
.end method

.method public getDisplayer()Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->displayer:Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;

    return-object v0
.end method

.method public getExtraForDownloader()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getImageForEmptyUri(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "res"

    .prologue
    .line 139
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getImageOnFail(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "res"

    .prologue
    .line 143
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnFail:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnFail:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getImageOnLoading(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "res"

    .prologue
    .line 135
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnLoading:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnLoading:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getImageScaleType()Lcom/mechat/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageScaleType:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method public getPostProcessor()Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->postProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method public getPreProcessor()Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->preProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method public isCacheInMemory()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->cacheInMemory:Z

    return v0
.end method

.method public isCacheOnDisk()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->cacheOnDisk:Z

    return v0
.end method

.method public isConsiderExifParams()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->considerExifParams:Z

    return v0
.end method

.method public isResetViewBeforeLoading()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z

    return v0
.end method

.method isSyncLoading()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading:Z

    return v0
.end method

.method public shouldDelayBeforeLoading()Z
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldPostProcess()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->postProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldPreProcess()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->preProcessor:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowImageForEmptyUri()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldShowImageOnFail()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnFail:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldShowImageOnLoading()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnLoading:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
