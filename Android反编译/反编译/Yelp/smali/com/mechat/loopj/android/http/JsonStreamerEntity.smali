.class public Lcom/mechat/loopj/android/http/JsonStreamerEntity;
.super Ljava/lang/Object;
.source "JsonStreamerEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final BUILDER:Ljava/lang/StringBuilder; = null

.field private static final ERR_UNSUPPORTED:Ljava/lang/UnsupportedOperationException; = null

.field private static final HEADER_GZIP_ENCODING:Lorg/apache/http/Header; = null

.field private static final HEADER_JSON_CONTENT:Lorg/apache/http/Header; = null

.field private static final JSON_FALSE:[B = null

.field private static final JSON_NULL:[B = null

.field private static final JSON_TRUE:[B = null

.field private static final LOG_TAG:Ljava/lang/String; = "JsonStreamerEntity"

.field private static final STREAM_CONTENTS:[B

.field private static final STREAM_ELAPSED:[B

.field private static final STREAM_NAME:[B

.field private static final STREAM_TYPE:[B


# instance fields
.field private final buffer:[B

.field private final contentEncoding:Lorg/apache/http/Header;

.field private final jsonParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final progressHandler:Lcom/mechat/loopj/android/http/ResponseHandlerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation in this implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 45
    sput-object v0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->ERR_UNSUPPORTED:Ljava/lang/UnsupportedOperationException;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    .line 59
    const-string v0, "true"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->JSON_TRUE:[B

    .line 60
    const-string v0, "false"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->JSON_FALSE:[B

    .line 61
    const-string v0, "null"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->JSON_NULL:[B

    .line 62
    const-string v0, "name"

    invoke-static {v0}, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->STREAM_NAME:[B

    .line 63
    const-string v0, "type"

    invoke-static {v0}, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->STREAM_TYPE:[B

    .line 64
    const-string v0, "contents"

    invoke-static {v0}, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->STREAM_CONTENTS:[B

    .line 65
    const-string v0, "_elapsed"

    invoke-static {v0}, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->STREAM_ELAPSED:[B

    .line 68
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    .line 69
    const-string v1, "Content-Type"

    .line 70
    const-string v2, "application/json"

    .line 68
    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sput-object v0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->HEADER_JSON_CONTENT:Lorg/apache/http/Header;

    .line 73
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    .line 74
    const-string v1, "Content-Encoding"

    .line 75
    const-string v2, "gzip"

    .line 73
    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sput-object v0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->HEADER_GZIP_ENCODING:Lorg/apache/http/Header;

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/mechat/loopj/android/http/ResponseHandlerInterface;Z)V
    .locals 1
    .parameter "progressHandler"
    .parameter "useGZipCompression"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->buffer:[B

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    .line 86
    iput-object p1, p0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->progressHandler:Lcom/mechat/loopj/android/http/ResponseHandlerInterface;

    .line 87
    if-eqz p2, :cond_0

    sget-object v0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->HEADER_GZIP_ENCODING:Lorg/apache/http/Header;

    :goto_0
    iput-object v0, p0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->contentEncoding:Lorg/apache/http/Header;

    .line 88
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private endMetaData(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 308
    return-void
.end method

.method static escape(Ljava/lang/String;)[B
    .locals 10
    .parameter "string"

    .prologue
    const/16 v9, 0x22

    const/4 v8, 0x0

    .line 314
    if-nez p0, :cond_0

    .line 315
    sget-object v6, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->JSON_NULL:[B

    .line 367
    :goto_0
    return-object v6

    .line 319
    :cond_0
    sget-object v6, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, length:I
    const/4 v4, -0x1

    .line 322
    .local v4, pos:I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v3, :cond_1

    .line 364
    sget-object v6, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    :try_start_0
    sget-object v6, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 371
    sget-object v7, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 324
    .local v0, ch:C
    sparse-switch v0, :sswitch_data_0

    .line 348
    if-ltz v0, :cond_2

    const/16 v6, 0x1f

    if-le v0, v6, :cond_4

    :cond_2
    const/16 v6, 0x7f

    if-lt v0, v6, :cond_3

    const/16 v6, 0x9f

    if-le v0, v6, :cond_4

    :cond_3
    const/16 v6, 0x2000

    if-lt v0, v6, :cond_6

    const/16 v6, 0x20ff

    if-gt v0, v6, :cond_6

    .line 349
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, intString:Ljava/lang/String;
    sget-object v6, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v7, "\\u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v1, v6, 0x4

    .line 352
    .local v1, intLength:I
    const/4 v5, 0x0

    .local v5, zero:I
    :goto_2
    if-lt v5, v1, :cond_5

    .line 355
    sget-object v6, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 326
    .end local v1           #intLength:I
    .end local v2           #intString:Ljava/lang/String;
    .end local v5           #zero:I
    :sswitch_0
    sget-object v6, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v7, "\\\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 329
    :sswitch_1
    sget-object v6, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v7, "\\\\"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 332
    :sswitch_2
    sget-object v6, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v7, "\\b"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 335
    :sswitch_3
    sget-object v6, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v7, "\\f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 338
    :sswitch_4
    sget-object v6, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v7, "\\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 341
    :sswitch_5
    sget-object v6, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v7, "\\r"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 344
    :sswitch_6
    sget-object v6, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v7, "\\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 353
    .restart local v1       #intLength:I
    .restart local v2       #intString:Ljava/lang/String;
    .restart local v5       #zero:I
    :cond_5
    sget-object v6, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 357
    .end local v1           #intLength:I
    .end local v2           #intString:Ljava/lang/String;
    .end local v5           #zero:I
    :cond_6
    sget-object v6, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 368
    .end local v0           #ch:C
    :catchall_0
    move-exception v6

    .line 371
    sget-object v7, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 372
    throw v6

    .line 324
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_6
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_5
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private writeMetaData(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "os"
    .parameter "name"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x2c

    const/16 v1, 0x3a

    .line 289
    sget-object v0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->STREAM_NAME:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 290
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 291
    invoke-static {p2}, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 292
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 295
    sget-object v0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->STREAM_TYPE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 296
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 297
    invoke-static {p3}, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 298
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 301
    sget-object v0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->STREAM_CONTENTS:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 302
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 303
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 304
    return-void
.end method

.method private writeToFromFile(Ljava/io/OutputStream;Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;)V
    .locals 8
    .parameter "os"
    .parameter "wrapper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    iget-object v5, p2, Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v6}, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->writeMetaData(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/4 v2, 0x0

    .local v2, bytesWritten:I
    iget-object v5, p2, Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v4, v6

    .line 264
    .local v4, totalSize:I
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v5, p2, Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 268
    .local v3, in:Ljava/io/FileInputStream;
    new-instance v0, Lcom/mechat/loopj/android/http/Base64OutputStream;

    const/16 v5, 0x12

    invoke-direct {v0, p1, v5}, Lcom/mechat/loopj/android/http/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 271
    .local v0, bos:Lcom/mechat/loopj/android/http/Base64OutputStream;
    :goto_0
    iget-object v5, p0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->buffer:[B

    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 278
    invoke-static {v0}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    .line 281
    invoke-direct {p0, p1}, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->endMetaData(Ljava/io/OutputStream;)V

    .line 284
    invoke-static {v3}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 285
    return-void

    .line 272
    :cond_0
    iget-object v5, p0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->buffer:[B

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v1}, Lcom/mechat/loopj/android/http/Base64OutputStream;->write([BII)V

    .line 273
    add-int/2addr v2, v1

    .line 274
    iget-object v5, p0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->progressHandler:Lcom/mechat/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v5, v2, v4}, Lcom/mechat/loopj/android/http/ResponseHandlerInterface;->sendProgressMessage(II)V

    goto :goto_0
.end method

.method private writeToFromStream(Ljava/io/OutputStream;Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;)V
    .locals 4
    .parameter "os"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v2, p2, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    iget-object v3, p2, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->writeMetaData(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance v0, Lcom/mechat/loopj/android/http/Base64OutputStream;

    const/16 v2, 0x12

    invoke-direct {v0, p1, v2}, Lcom/mechat/loopj/android/http/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 238
    .local v0, bos:Lcom/mechat/loopj/android/http/Base64OutputStream;
    :goto_0
    iget-object v2, p2, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->buffer:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 243
    invoke-static {v0}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    .line 246
    invoke-direct {p0, p1}, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->endMetaData(Ljava/io/OutputStream;)V

    .line 249
    iget-boolean v2, p2, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;->autoClose:Z

    if-eqz v2, :cond_0

    .line 251
    iget-object v2, p2, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 253
    :cond_0
    return-void

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->buffer:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/mechat/loopj/android/http/Base64OutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public consumeContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 132
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 136
    sget-object v0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->ERR_UNSUPPORTED:Ljava/lang/UnsupportedOperationException;

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->contentEncoding:Lorg/apache/http/Header;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 117
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->HEADER_JSON_CONTENT:Lorg/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 14
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Output stream cannot be null."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 146
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 150
    .local v6, now:J
    iget-object v9, p0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->contentEncoding:Lorg/apache/http/Header;

    if-eqz v9, :cond_2

    .line 151
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    const/16 v9, 0x1000

    invoke-direct {v5, p1, v9}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 155
    .local v5, os:Ljava/io/OutputStream;
    :goto_0
    const/16 v9, 0x7b

    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write(I)V

    .line 158
    iget-object v9, p0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 163
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 213
    sget-object v9, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->STREAM_ELAPSED:[B

    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write([B)V

    .line 214
    const/16 v9, 0x3a

    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write(I)V

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v0, v10, v6

    .line 216
    .local v0, elapsedTime:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write([B)V

    .line 218
    const-string v9, "JsonStreamerEntity"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Uploaded JSON in "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v12, 0x3e8

    div-long v12, v0, v12

    long-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " seconds"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 222
    invoke-static {v5}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    .line 223
    return-void

    .end local v0           #elapsedTime:J
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #os:Ljava/io/OutputStream;
    :cond_2
    move-object v5, p1

    .line 152
    goto :goto_0

    .line 163
    .restart local v4       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5       #os:Ljava/io/OutputStream;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 165
    .local v3, key:Ljava/lang/String;
    iget-object v9, p0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 168
    .local v8, value:Ljava/lang/Object;
    if-eqz v8, :cond_1

    .line 173
    invoke-static {v3}, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write([B)V

    .line 174
    const/16 v9, 0x3a

    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write(I)V

    .line 177
    instance-of v2, v8, Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;

    .line 180
    .local v2, isFileWrapper:Z
    if-nez v2, :cond_4

    instance-of v9, v8, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;

    if-eqz v9, :cond_6

    .line 182
    :cond_4
    const/16 v9, 0x7b

    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write(I)V

    .line 185
    if-eqz v2, :cond_5

    .line 186
    check-cast v8, Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;

    .end local v8           #value:Ljava/lang/Object;
    invoke-direct {p0, v5, v8}, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->writeToFromFile(Ljava/io/OutputStream;Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;)V

    .line 192
    :goto_2
    const/16 v9, 0x7d

    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write(I)V

    .line 207
    :goto_3
    const/16 v9, 0x2c

    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_1

    .line 188
    .restart local v8       #value:Ljava/lang/Object;
    :cond_5
    check-cast v8, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;

    .end local v8           #value:Ljava/lang/Object;
    invoke-direct {p0, v5, v8}, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->writeToFromStream(Ljava/io/OutputStream;Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;)V

    goto :goto_2

    .line 193
    .restart local v8       #value:Ljava/lang/Object;
    :cond_6
    instance-of v9, v8, Ljava/lang/Boolean;

    if-eqz v9, :cond_8

    .line 194
    check-cast v8, Ljava/lang/Boolean;

    .end local v8           #value:Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v9, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->JSON_TRUE:[B

    :goto_4
    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    :cond_7
    sget-object v9, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->JSON_FALSE:[B

    goto :goto_4

    .line 195
    .restart local v8       #value:Ljava/lang/Object;
    :cond_8
    instance-of v9, v8, Ljava/lang/Long;

    if-eqz v9, :cond_9

    .line 196
    new-instance v9, Ljava/lang/StringBuilder;

    check-cast v8, Ljava/lang/Number;

    .end local v8           #value:Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    .line 197
    .restart local v8       #value:Ljava/lang/Object;
    :cond_9
    instance-of v9, v8, Ljava/lang/Double;

    if-eqz v9, :cond_a

    .line 198
    new-instance v9, Ljava/lang/StringBuilder;

    check-cast v8, Ljava/lang/Number;

    .end local v8           #value:Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    .line 199
    .restart local v8       #value:Ljava/lang/Object;
    :cond_a
    instance-of v9, v8, Ljava/lang/Float;

    if-eqz v9, :cond_b

    .line 200
    new-instance v9, Ljava/lang/StringBuilder;

    check-cast v8, Ljava/lang/Number;

    .end local v8           #value:Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    .line 201
    .restart local v8       #value:Ljava/lang/Object;
    :cond_b
    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_c

    .line 202
    new-instance v9, Ljava/lang/StringBuilder;

    check-cast v8, Ljava/lang/Number;

    .end local v8           #value:Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_3

    .line 204
    .restart local v8       #value:Ljava/lang/Object;
    :cond_c
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_3
.end method
