.class public Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;
.super Ljava/lang/Object;
.source "ParserRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/internal/util/ParserRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private indexBuilder:Lorg/eclipse/mat/parser/IIndexBuilder;

.field private objectReader:Lorg/eclipse/mat/parser/IObjectReader;

.field private patterns:[Ljava/util/regex/Pattern;

.field private snapshotFormat:Lorg/eclipse/mat/snapshot/SnapshotFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/mat/snapshot/SnapshotFormat;Lorg/eclipse/mat/parser/IObjectReader;Lorg/eclipse/mat/parser/IIndexBuilder;)V
    .locals 4
    .parameter "id"
    .parameter "snapshotFormat"
    .parameter "objectReader"
    .parameter "indexBuilder"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;->id:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;->snapshotFormat:Lorg/eclipse/mat/snapshot/SnapshotFormat;

    .line 49
    invoke-virtual {p2}, Lorg/eclipse/mat/snapshot/SnapshotFormat;->getFileExtensions()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Ljava/util/regex/Pattern;

    iput-object v1, p0, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;->patterns:[Ljava/util/regex/Pattern;

    .line 50
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/mat/snapshot/SnapshotFormat;->getFileExtensions()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;->patterns:[Ljava/util/regex/Pattern;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(.*\\.)((?i)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/eclipse/mat/snapshot/SnapshotFormat;->getFileExtensions()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")(\\.[0-9]*)?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    iput-object p3, p0, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;->objectReader:Lorg/eclipse/mat/parser/IObjectReader;

    .line 55
    iput-object p4, p0, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;->indexBuilder:Lorg/eclipse/mat/parser/IIndexBuilder;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;)[Ljava/util/regex/Pattern;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;->patterns:[Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexBuilder()Lorg/eclipse/mat/parser/IIndexBuilder;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;->indexBuilder:Lorg/eclipse/mat/parser/IIndexBuilder;

    return-object v0
.end method

.method public getObjectReader()Lorg/eclipse/mat/parser/IObjectReader;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;->objectReader:Lorg/eclipse/mat/parser/IObjectReader;

    return-object v0
.end method

.method public getSnapshotFormat()Lorg/eclipse/mat/snapshot/SnapshotFormat;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;->snapshotFormat:Lorg/eclipse/mat/snapshot/SnapshotFormat;

    return-object v0
.end method

.method public getUniqueIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;->id:Ljava/lang/String;

    return-object v0
.end method
