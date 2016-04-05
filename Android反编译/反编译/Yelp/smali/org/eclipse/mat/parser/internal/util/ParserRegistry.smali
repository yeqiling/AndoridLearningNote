.class public Lorg/eclipse/mat/parser/internal/util/ParserRegistry;
.super Ljava/lang/Object;
.source "ParserRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;
    }
.end annotation


# static fields
.field public static final INDEX_BUILDER:Ljava/lang/String; = "indexBuilder"

.field public static final OBJECT_READER:Ljava/lang/String; = "objectReader"

.field private static instance:Lorg/eclipse/mat/parser/internal/util/ParserRegistry;


# instance fields
.field public parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 28
    new-instance v0, Lorg/eclipse/mat/parser/internal/util/ParserRegistry;

    invoke-direct {v0}, Lorg/eclipse/mat/parser/internal/util/ParserRegistry;-><init>()V

    sput-object v0, Lorg/eclipse/mat/parser/internal/util/ParserRegistry;->instance:Lorg/eclipse/mat/parser/internal/util/ParserRegistry;

    .line 31
    const-string v0, "hprof"

    const-string v1, "hprof"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hprof"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "bin"

    aput-object v4, v2, v3

    new-instance v3, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;

    invoke-direct {v3}, Lorg/eclipse/mat/hprof/HprofHeapObjectReader;-><init>()V

    new-instance v4, Lorg/eclipse/mat/hprof/HprofIndexBuilder;

    invoke-direct {v4}, Lorg/eclipse/mat/hprof/HprofIndexBuilder;-><init>()V

    invoke-static {v0, v1, v2, v3, v4}, Lorg/eclipse/mat/parser/internal/util/ParserRegistry;->addParser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/eclipse/mat/parser/IObjectReader;Lorg/eclipse/mat/parser/IIndexBuilder;)V

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/util/ParserRegistry;->parsers:Ljava/util/List;

    .line 81
    return-void
.end method

.method public static addParser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/eclipse/mat/parser/IObjectReader;Lorg/eclipse/mat/parser/IIndexBuilder;)V
    .locals 3
    .parameter "id"
    .parameter "snapshotFormat"
    .parameter "extensions"
    .parameter "objectReader"
    .parameter "indexBuilder"

    .prologue
    .line 85
    new-instance v1, Lorg/eclipse/mat/snapshot/SnapshotFormat;

    invoke-direct {v1, p1, p2}, Lorg/eclipse/mat/snapshot/SnapshotFormat;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 86
    .local v1, sf:Lorg/eclipse/mat/snapshot/SnapshotFormat;
    new-instance v0, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;

    invoke-direct {v0, p0, v1, p3, p4}, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;-><init>(Ljava/lang/String;Lorg/eclipse/mat/snapshot/SnapshotFormat;Lorg/eclipse/mat/parser/IObjectReader;Lorg/eclipse/mat/parser/IIndexBuilder;)V

    .line 87
    .local v0, p:Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;
    sget-object v2, Lorg/eclipse/mat/parser/internal/util/ParserRegistry;->instance:Lorg/eclipse/mat/parser/internal/util/ParserRegistry;

    iget-object v2, v2, Lorg/eclipse/mat/parser/internal/util/ParserRegistry;->parsers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public static allParsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    sget-object v0, Lorg/eclipse/mat/parser/internal/util/ParserRegistry;->instance:Lorg/eclipse/mat/parser/internal/util/ParserRegistry;

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/util/ParserRegistry;->parsers:Ljava/util/List;

    return-object v0
.end method

.method public static lookupParser(Ljava/lang/String;)Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;
    .locals 3
    .parameter "uniqueIdentifier"

    .prologue
    .line 91
    sget-object v2, Lorg/eclipse/mat/parser/internal/util/ParserRegistry;->instance:Lorg/eclipse/mat/parser/internal/util/ParserRegistry;

    iget-object v2, v2, Lorg/eclipse/mat/parser/internal/util/ParserRegistry;->parsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;

    .line 92
    .local v1, p:Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;
    invoke-virtual {v1}, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    .end local v1           #p:Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static matchParser(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, answer:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;>;"
    sget-object v7, Lorg/eclipse/mat/parser/internal/util/ParserRegistry;->instance:Lorg/eclipse/mat/parser/internal/util/ParserRegistry;

    iget-object v7, v7, Lorg/eclipse/mat/parser/internal/util/ParserRegistry;->parsers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;

    .line 99
    .local v5, p:Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;
    #getter for: Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;->patterns:[Ljava/util/regex/Pattern;
    invoke-static {v5}, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;->access$000(Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;)[Ljava/util/regex/Pattern;

    move-result-object v1

    .local v1, arr$:[Ljava/util/regex/Pattern;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v6, v1, v3

    .line 100
    .local v6, regex:Ljava/util/regex/Pattern;
    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 101
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 107
    .end local v1           #arr$:[Ljava/util/regex/Pattern;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #p:Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;
    .end local v6           #regex:Ljava/util/regex/Pattern;
    :cond_2
    return-object v0
.end method
