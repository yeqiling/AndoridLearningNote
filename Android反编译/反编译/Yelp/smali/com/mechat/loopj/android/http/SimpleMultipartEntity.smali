.class Lcom/mechat/loopj/android/http/SimpleMultipartEntity;
.super Ljava/lang/Object;
.source "SimpleMultipartEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mechat/loopj/android/http/SimpleMultipartEntity$FilePart;
    }
.end annotation


# static fields
.field private static final CR_LF:[B = null

.field private static final LOG_TAG:Ljava/lang/String; = "SimpleMultipartEntity"

.field private static final MULTIPART_CHARS:[C = null

.field private static final STR_CR_LF:Ljava/lang/String; = "\r\n"

.field private static final TRANSFER_ENCODING_BINARY:[B


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final boundaryEnd:[B

.field private final boundaryLine:[B

.field private bytesWritten:I

.field private final fileParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mechat/loopj/android/http/SimpleMultipartEntity$FilePart;",
            ">;"
        }
    .end annotation
.end field

.field private isRepeatable:Z

.field private final out:Ljava/io/ByteArrayOutputStream;

.field private final progressHandler:Lcom/mechat/loopj/android/http/ResponseHandlerInterface;

.field private totalSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->CR_LF:[B

    .line 53
    const-string v0, "Content-Transfer-Encoding: binary\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 52
    sput-object v0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->TRANSFER_ENCODING_BINARY:[B

    .line 56
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 55
    sput-object v0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->MULTIPART_CHARS:[C

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)V
    .locals 5
    .parameter "progressHandler"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    .line 67
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v3, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, buf:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 78
    .local v2, rand:Ljava/util/Random;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x1e

    if-lt v1, v3, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->boundaryLine:[B

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->boundaryEnd:[B

    .line 86
    iput-object p1, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->progressHandler:Lcom/mechat/loopj/android/http/ResponseHandlerInterface;

    .line 87
    return-void

    .line 79
    :cond_0
    sget-object v3, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->MULTIPART_CHARS:[C

    sget-object v4, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->MULTIPART_CHARS:[C

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/mechat/loopj/android/http/SimpleMultipartEntity;)[B
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->boundaryLine:[B

    return-object v0
.end method

.method static synthetic access$1(Lcom/mechat/loopj/android/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/mechat/loopj/android/http/SimpleMultipartEntity;Ljava/lang/String;)[B
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->createContentType(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3()[B
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->TRANSFER_ENCODING_BINARY:[B

    return-object v0
.end method

.method static synthetic access$4()[B
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->CR_LF:[B

    return-object v0
.end method

.method static synthetic access$5(Lcom/mechat/loopj/android/http/SimpleMultipartEntity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->updateProgress(I)V

    return-void
.end method

.method private createContentDisposition(Ljava/lang/String;)[B
    .locals 2
    .parameter "key"

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 154
    return-object v0
.end method

.method private createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .parameter "key"
    .parameter "fileName"

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    const-string v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 160
    return-object v0
.end method

.method private createContentType(Ljava/lang/String;)[B
    .locals 3
    .parameter "type"

    .prologue
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content-Type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->normalizeContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, result:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private normalizeContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "type"

    .prologue
    .line 145
    if-nez p1, :cond_0

    const-string p1, "application/octet-stream"

    .end local p1
    :cond_0
    return-object p1
.end method

.method private updateProgress(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 167
    iget v0, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->bytesWritten:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->bytesWritten:I

    .line 168
    iget-object v0, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->progressHandler:Lcom/mechat/loopj/android/http/ResponseHandlerInterface;

    iget v1, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->bytesWritten:I

    iget v2, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->totalSize:I

    invoke-interface {v0, v1, v2}, Lcom/mechat/loopj/android/http/ResponseHandlerInterface;->sendProgressMessage(II)V

    .line 169
    return-void
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .parameter "key"
    .parameter "file"

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "file"
    .parameter "type"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    new-instance v1, Lcom/mechat/loopj/android/http/SimpleMultipartEntity$FilePart;

    invoke-direct {p0, p3}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->normalizeContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity$FilePart;-><init>(Lcom/mechat/loopj/android/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->addPartWithCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "streamName"
    .parameter "inputStream"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v2, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->boundaryLine:[B

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 126
    iget-object v2, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p1, p2}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 127
    iget-object v2, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p4}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->createContentType(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 128
    iget-object v2, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v3, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->TRANSFER_ENCODING_BINARY:[B

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 129
    iget-object v2, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v3, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->CR_LF:[B

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 132
    const/16 v2, 0x1000

    new-array v1, v2, [B

    .line 134
    .local v1, tmp:[B
    :goto_0
    invoke-virtual {p3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, l:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v3, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->CR_LF:[B

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 139
    iget-object v2, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 141
    iget-object v2, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-static {v2}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    .line 142
    return-void

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"
    .parameter "contentType"

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->boundaryLine:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 92
    iget-object v1, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p1}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->createContentDisposition(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 93
    iget-object v1, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p3}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->createContentType(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 94
    iget-object v1, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v2, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->CR_LF:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 95
    iget-object v1, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 96
    iget-object v1, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v2, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->CR_LF:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/io/IOException;
    const-string v1, "SimpleMultipartEntity"

    const-string v2, "addPart ByteArrayOutputStream exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addPartWithCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"
    .parameter "charset"

    .prologue
    .line 104
    if-nez p3, :cond_0

    const-string p3, "UTF-8"

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "text/plain; charset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public consumeContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 285
    const-string v1, "Streaming entity does not implement #consumeContent()"

    .line 284
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 292
    const-string v1, "getContent() is not supported. Use writeTo() instead."

    .line 291
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 8

    .prologue
    .line 224
    iget-object v3, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    int-to-long v0, v3

    .line 225
    .local v0, contentLen:J
    iget-object v3, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 232
    iget-object v3, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->boundaryEnd:[B

    array-length v3, v3

    int-to-long v6, v3

    add-long/2addr v0, v6

    move-wide v6, v0

    .line 233
    :goto_1
    return-wide v6

    .line 225
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mechat/loopj/android/http/SimpleMultipartEntity$FilePart;

    .line 226
    .local v2, filePart:Lcom/mechat/loopj/android/http/SimpleMultipartEntity$FilePart;
    invoke-virtual {v2}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity$FilePart;->getTotalLength()J

    move-result-wide v4

    .line 227
    .local v4, len:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    .line 228
    const-wide/16 v6, -0x1

    goto :goto_1

    .line 230
    :cond_1
    add-long/2addr v0, v4

    goto :goto_0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 4

    .prologue
    .line 238
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    .line 239
    const-string v1, "Content-Type"

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "multipart/form-data; boundary="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->isRepeatable:Z

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public setIsRepeatable(Z)V
    .locals 0
    .parameter "isRepeatable"

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->isRepeatable:Z

    .line 250
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    const/4 v1, 0x0

    iput v1, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->bytesWritten:I

    .line 265
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->totalSize:I

    .line 266
    iget-object v1, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 267
    iget-object v1, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->updateProgress(I)V

    .line 269
    iget-object v1, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    iget-object v1, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->boundaryEnd:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 273
    iget-object v1, p0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->boundaryEnd:[B

    array-length v1, v1

    invoke-direct {p0, v1}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->updateProgress(I)V

    .line 274
    return-void

    .line 269
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity$FilePart;

    .line 270
    .local v0, filePart:Lcom/mechat/loopj/android/http/SimpleMultipartEntity$FilePart;
    invoke-virtual {v0, p1}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity$FilePart;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0
.end method
