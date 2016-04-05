.class public Lme/dm7/barcodescanner/zxing/ZXingScannerView;
.super Lme/dm7/barcodescanner/core/BarcodeScannerView;
.source "ZXingScannerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;
    }
.end annotation


# static fields
.field public static final ALL_FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private mResultHandler:Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    .line 38
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->initMultiFormatReader()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lme/dm7/barcodescanner/core/BarcodeScannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-direct {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->initMultiFormatReader()V

    .line 61
    return-void
.end method

.method private initMultiFormatReader()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 81
    .local v0, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->getFormats()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v1, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 83
    iget-object v1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v1, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 84
    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 11
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 134
    invoke-virtual {p0, p2, p3}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->getFramingRectInPreview(II)Landroid/graphics/Rect;

    move-result-object v9

    .line 135
    .local v9, rect:Landroid/graphics/Rect;
    if-nez v9, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    .line 139
    :cond_0
    const/4 v10, 0x0

    .line 142
    .local v10, source:Lcom/google/zxing/PlanarYUVLuminanceSource;
    :try_start_0
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v4, v9, Landroid/graphics/Rect;->left:I

    iget v5, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10           #source:Lcom/google/zxing/PlanarYUVLuminanceSource;
    .local v0, source:Lcom/google/zxing/PlanarYUVLuminanceSource;
    goto :goto_0

    .line 144
    .end local v0           #source:Lcom/google/zxing/PlanarYUVLuminanceSource;
    .restart local v10       #source:Lcom/google/zxing/PlanarYUVLuminanceSource;
    :catch_0
    move-exception v1

    move-object v0, v10

    .end local v10           #source:Lcom/google/zxing/PlanarYUVLuminanceSource;
    .restart local v0       #source:Lcom/google/zxing/PlanarYUVLuminanceSource;
    goto :goto_0
.end method

.method public getFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mFormats:Ljava/util/List;

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mFormats:Ljava/util/List;

    goto :goto_0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 13
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 88
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 89
    .local v2, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 90
    .local v5, size:Landroid/hardware/Camera$Size;
    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    .line 91
    .local v8, width:I
    iget v1, v5, Landroid/hardware/Camera$Size;->height:I

    .line 93
    .local v1, height:I
    invoke-virtual {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lme/dm7/barcodescanner/core/DisplayUtils;->getScreenOrientation(Landroid/content/Context;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 94
    array-length v11, p1

    new-array v4, v11, [B

    .line 95
    .local v4, rotatedData:[B
    const/4 v10, 0x0

    .local v10, y:I
    :goto_0
    if-ge v10, v1, :cond_1

    .line 96
    const/4 v9, 0x0

    .local v9, x:I
    :goto_1
    if-ge v9, v8, :cond_0

    .line 97
    mul-int v11, v9, v1

    add-int/2addr v11, v1

    sub-int/2addr v11, v10

    add-int/lit8 v11, v11, -0x1

    mul-int v12, v10, v8

    add-int/2addr v12, v9

    aget-byte v12, p1, v12

    aput-byte v12, v4, v11

    .line 96
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 95
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 99
    .end local v9           #x:I
    :cond_1
    move v7, v8

    .line 100
    .local v7, tmp:I
    move v8, v1

    .line 101
    move v1, v7

    .line 102
    move-object p1, v4

    .line 105
    .end local v4           #rotatedData:[B
    .end local v7           #tmp:I
    .end local v10           #y:I
    :cond_2
    const/4 v3, 0x0

    .line 106
    .local v3, rawResult:Lcom/google/zxing/Result;
    invoke-virtual {p0, p1, v8, v1}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v6

    .line 108
    .local v6, source:Lcom/google/zxing/PlanarYUVLuminanceSource;
    if-eqz v6, :cond_3

    .line 109
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v11, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v11, v6}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 111
    .local v0, bitmap:Lcom/google/zxing/BinaryBitmap;
    :try_start_0
    iget-object v11, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v11, v0}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 119
    iget-object v11, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v11}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 123
    .end local v0           #bitmap:Lcom/google/zxing/BinaryBitmap;
    :cond_3
    :goto_2
    if-eqz v3, :cond_5

    .line 124
    invoke-virtual {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->stopCamera()V

    .line 125
    iget-object v11, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mResultHandler:Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;

    if-eqz v11, :cond_4

    .line 126
    iget-object v11, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mResultHandler:Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;

    invoke-interface {v11, v3}, Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;->handleResult(Lcom/google/zxing/Result;)V

    .line 131
    :cond_4
    :goto_3
    return-void

    .line 112
    .restart local v0       #bitmap:Lcom/google/zxing/BinaryBitmap;
    :catch_0
    move-exception v11

    .line 119
    iget-object v11, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v11}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_2

    .line 114
    :catch_1
    move-exception v11

    .line 119
    iget-object v11, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v11}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_2

    .line 116
    :catch_2
    move-exception v11

    .line 119
    iget-object v11, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v11}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_2

    :catchall_0
    move-exception v11

    iget-object v12, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v12}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v11

    .line 129
    .end local v0           #bitmap:Lcom/google/zxing/BinaryBitmap;
    :cond_5
    invoke-virtual {p2, p0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_3
.end method

.method public setFormats(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, formats:Ljava/util/List;,"Ljava/util/List<Lcom/google/zxing/BarcodeFormat;>;"
    iput-object p1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mFormats:Ljava/util/List;

    .line 65
    invoke-direct {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->initMultiFormatReader()V

    .line 66
    return-void
.end method

.method public setResultHandler(Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;)V
    .locals 0
    .parameter "resultHandler"

    .prologue
    .line 69
    iput-object p1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mResultHandler:Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;

    .line 70
    return-void
.end method
