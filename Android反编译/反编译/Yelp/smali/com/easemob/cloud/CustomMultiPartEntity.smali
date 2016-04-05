.class Lcom/easemob/cloud/CustomMultiPartEntity;
.super Linternal/org/apache/http/entity/mime/MultipartEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/cloud/CustomMultiPartEntity$CountingOutputStream;,
        Lcom/easemob/cloud/CustomMultiPartEntity$ProgressListener;
    }
.end annotation


# instance fields
.field private final a:Lcom/easemob/cloud/CustomMultiPartEntity$ProgressListener;


# direct methods
.method public constructor <init>(Lcom/easemob/cloud/CustomMultiPartEntity$ProgressListener;)V
    .locals 0

    invoke-direct {p0}, Linternal/org/apache/http/entity/mime/MultipartEntity;-><init>()V

    iput-object p1, p0, Lcom/easemob/cloud/CustomMultiPartEntity;->a:Lcom/easemob/cloud/CustomMultiPartEntity$ProgressListener;

    return-void
.end method

.method public constructor <init>(Linternal/org/apache/http/entity/mime/HttpMultipartMode;Lcom/easemob/cloud/CustomMultiPartEntity$ProgressListener;)V
    .locals 0

    invoke-direct {p0, p1}, Linternal/org/apache/http/entity/mime/MultipartEntity;-><init>(Linternal/org/apache/http/entity/mime/HttpMultipartMode;)V

    iput-object p2, p0, Lcom/easemob/cloud/CustomMultiPartEntity;->a:Lcom/easemob/cloud/CustomMultiPartEntity$ProgressListener;

    return-void
.end method

.method public constructor <init>(Linternal/org/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;Lcom/easemob/cloud/CustomMultiPartEntity$ProgressListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Linternal/org/apache/http/entity/mime/MultipartEntity;-><init>(Linternal/org/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    iput-object p4, p0, Lcom/easemob/cloud/CustomMultiPartEntity;->a:Lcom/easemob/cloud/CustomMultiPartEntity$ProgressListener;

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/easemob/cloud/CustomMultiPartEntity$CountingOutputStream;

    iget-object v1, p0, Lcom/easemob/cloud/CustomMultiPartEntity;->a:Lcom/easemob/cloud/CustomMultiPartEntity$ProgressListener;

    invoke-direct {v0, p1, v1}, Lcom/easemob/cloud/CustomMultiPartEntity$CountingOutputStream;-><init>(Ljava/io/OutputStream;Lcom/easemob/cloud/CustomMultiPartEntity$ProgressListener;)V

    invoke-super {p0, v0}, Linternal/org/apache/http/entity/mime/MultipartEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
