.class Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;
.super Ljava/lang/Object;
.source "BufferedRandomAccessInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Page"
.end annotation


# instance fields
.field buf_end:I

.field buffer:[B

.field real_pos_start:J

.field final synthetic this$0:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;


# direct methods
.method public constructor <init>(Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;->this$0:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iget v0, p1, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->bufsize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;->buffer:[B

    .line 31
    return-void
.end method
