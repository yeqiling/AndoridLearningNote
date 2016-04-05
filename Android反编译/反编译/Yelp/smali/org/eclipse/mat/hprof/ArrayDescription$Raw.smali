.class Lorg/eclipse/mat/hprof/ArrayDescription$Raw;
.super Lorg/eclipse/mat/hprof/ArrayDescription;
.source "ArrayDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/hprof/ArrayDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Raw"
.end annotation


# instance fields
.field content:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .parameter "content"

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/eclipse/mat/hprof/ArrayDescription;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/eclipse/mat/hprof/ArrayDescription$Raw;->content:[B

    .line 63
    return-void
.end method


# virtual methods
.method public getContent()[B
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/eclipse/mat/hprof/ArrayDescription$Raw;->content:[B

    return-object v0
.end method
