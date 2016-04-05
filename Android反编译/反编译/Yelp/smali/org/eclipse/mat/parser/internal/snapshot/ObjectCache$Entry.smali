.class Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;
.super Ljava/lang/Object;
.source "ObjectCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field key:I

.field numUsages:I

.field object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    .local p0, this:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;,"Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
