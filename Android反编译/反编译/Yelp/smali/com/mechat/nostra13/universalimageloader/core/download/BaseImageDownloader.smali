.class public Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;
.super Ljava/lang/Object;
.source "BaseImageDownloader.java"

# interfaces
.implements Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;


# static fields
.field private static synthetic $SWITCH_TABLE$com$mechat$nostra13$universalimageloader$core$download$ImageDownloader$Scheme:[I = null

.field protected static final ALLOWED_URI_CHARS:Ljava/lang/String; = "@#&=*+-_.,:!?()/~\'%"

.field protected static final BUFFER_SIZE:I = 0x8000

.field protected static final CONTENT_CONTACTS_URI_PREFIX:Ljava/lang/String; = "content://com.android.contacts/"

.field public static final DEFAULT_HTTP_CONNECT_TIMEOUT:I = 0x1388

.field public static final DEFAULT_HTTP_READ_TIMEOUT:I = 0x4e20

.field private static final ERROR_UNSUPPORTED_SCHEME:Ljava/lang/String; = "UIL doesn\'t support scheme(protocol) by default [%s]. You should implement this support yourself (BaseImageDownloader.getStreamFromOtherSource(...))"

.field protected static final MAX_REDIRECT_COUNT:I = 0x5


# instance fields
.field protected final connectTimeout:I

.field protected final context:Landroid/content/Context;

.field protected final readTimeout:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$mechat$nostra13$universalimageloader$core$download$ImageDownloader$Scheme()[I
    .locals 3

    .prologue
    .line 49
    sget-object v0, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->$SWITCH_TABLE$com$mechat$nostra13$universalimageloader$core$download$ImageDownloader$Scheme:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->values()[Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ASSETS:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->CONTENT:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->DRAWABLE:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->HTTP:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->HTTPS:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->UNKNOWN:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->$SWITCH_TABLE$com$mechat$nostra13$universalimageloader$core$download$ImageDownloader$Scheme:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->context:Landroid/content/Context;

    .line 72
    const/16 v0, 0x1388

    iput v0, p0, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->connectTimeout:I

    .line 73
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->readTimeout:I

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "connectTimeout"
    .parameter "readTimeout"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->context:Landroid/content/Context;

    .line 78
    iput p2, p0, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->connectTimeout:I

    .line 79
    iput p3, p0, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->readTimeout:I

    .line 80
    return-void
.end method

.method private isVideoUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 240
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, mimeType:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 243
    const/4 v1, 0x0

    .line 246
    :goto_0
    return v1

    :cond_0
    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected createConnection(Ljava/lang/String;Ljava/lang/Object;)Ljava/net/HttpURLConnection;
    .locals 3
    .parameter "url"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    const-string v2, "@#&=*+-_.,:!?()/~\'%"

    invoke-static {p1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, encodedUrl:Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 145
    .local v0, conn:Ljava/net/HttpURLConnection;
    iget v2, p0, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->connectTimeout:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 146
    iget v2, p0, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->readTimeout:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 147
    return-object v0
.end method

.method public getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 2
    .parameter "imageUri"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->$SWITCH_TABLE$com$mechat$nostra13$universalimageloader$core$download$ImageDownloader$Scheme()[I

    move-result-object v0

    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->getStreamFromOtherSource(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    .line 87
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->getStreamFromNetwork(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->getStreamFromFile(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 91
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->getStreamFromContent(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 93
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->getStreamFromAssets(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 95
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->getStreamFromDrawable(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getStreamFromAssets(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 2
    .parameter "imageUri"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    sget-object v1, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ASSETS:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v1, p1}, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, filePath:Ljava/lang/String;
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method protected getStreamFromContent(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 9
    .parameter "imageUri"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v5, p0, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 177
    .local v3, res:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 178
    .local v4, uri:Landroid/net/Uri;
    invoke-direct {p0, v4}, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->isVideoUri(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 179
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 181
    .local v2, origId:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static {v3, v6, v7, v5, v8}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 183
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 184
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 185
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 191
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #origId:Ljava/lang/Long;
    :goto_0
    return-object v5

    .line 187
    :cond_0
    const-string v5, "content://com.android.contacts/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 188
    invoke-static {v3, v4}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_0
.end method

.method protected getStreamFromDrawable(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 3
    .parameter "imageUri"
    .parameter "extra"

    .prologue
    .line 217
    sget-object v2, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->DRAWABLE:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v2, p1}, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, drawableIdString:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 219
    .local v0, drawableId:I
    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    return-object v2
.end method

.method protected getStreamFromFile(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 6
    .parameter "imageUri"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    sget-object v1, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v1, p1}, Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, filePath:Ljava/lang/String;
    new-instance v1, Lcom/mechat/nostra13/universalimageloader/core/assist/ContentLengthInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const v4, 0x8000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 162
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v3, v4

    .line 161
    invoke-direct {v1, v2, v3}, Lcom/mechat/nostra13/universalimageloader/core/assist/ContentLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v1
.end method

.method protected getStreamFromNetwork(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 7
    .parameter "imageUri"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->createConnection(Ljava/lang/String;Ljava/lang/Object;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 115
    .local v0, conn:Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 116
    .local v3, redirectCount:I
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 123
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 129
    .local v2, imageStream:Ljava/io/InputStream;
    new-instance v4, Lcom/mechat/nostra13/universalimageloader/core/assist/ContentLengthInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    const v6, 0x8000

    invoke-direct {v5, v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/mechat/nostra13/universalimageloader/core/assist/ContentLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v4

    .line 117
    .end local v2           #imageStream:Ljava/io/InputStream;
    :cond_1
    const-string v4, "Location"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;->createConnection(Ljava/lang/String;Ljava/lang/Object;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 126
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/mechat/nostra13/universalimageloader/utils/IoUtils;->readAndCloseStream(Ljava/io/InputStream;)V

    .line 127
    throw v1
.end method

.method protected getStreamFromOtherSource(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 4
    .parameter "imageUri"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "UIL doesn\'t support scheme(protocol) by default [%s]. You should implement this support yourself (BaseImageDownloader.getStreamFromOtherSource(...))"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
