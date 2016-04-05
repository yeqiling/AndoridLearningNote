.class public Lcom/easemob/cloud/CustomMultiPartEntity$CountingOutputStream;
.super Ljava/io/FilterOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/cloud/CustomMultiPartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountingOutputStream"
.end annotation


# instance fields
.field private final listener:Lcom/easemob/cloud/CustomMultiPartEntity$ProgressListener;

.field private transferred:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/easemob/cloud/CustomMultiPartEntity$ProgressListener;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p2, p0, Lcom/easemob/cloud/CustomMultiPartEntity$CountingOutputStream;->listener:Lcom/easemob/cloud/CustomMultiPartEntity$ProgressListener;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/easemob/cloud/CustomMultiPartEntity$CountingOutputStream;->transferred:J

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/cloud/CustomMultiPartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-wide v0, p0, Lcom/easemob/cloud/CustomMultiPartEntity$CountingOutputStream;->transferred:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/easemob/cloud/CustomMultiPartEntity$CountingOutputStream;->transferred:J

    iget-object v0, p0, Lcom/easemob/cloud/CustomMultiPartEntity$CountingOutputStream;->listener:Lcom/easemob/cloud/CustomMultiPartEntity$ProgressListener;

    iget-wide v2, p0, Lcom/easemob/cloud/CustomMultiPartEntity$CountingOutputStream;->transferred:J

    invoke-interface {v0, v2, v3}, Lcom/easemob/cloud/CustomMultiPartEntity$ProgressListener;->transferred(J)V

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/cloud/CustomMultiPartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v0, p0, Lcom/easemob/cloud/CustomMultiPartEntity$CountingOutputStream;->transferred:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/easemob/cloud/CustomMultiPartEntity$CountingOutputStream;->transferred:J

    iget-object v0, p0, Lcom/easemob/cloud/CustomMultiPartEntity$CountingOutputStream;->listener:Lcom/easemob/cloud/CustomMultiPartEntity$ProgressListener;

    iget-wide v2, p0, Lcom/easemob/cloud/CustomMultiPartEntity$CountingOutputStream;->transferred:J

    invoke-interface {v0, v2, v3}, Lcom/easemob/cloud/CustomMultiPartEntity$ProgressListener;->transferred(J)V

    return-void
.end method
