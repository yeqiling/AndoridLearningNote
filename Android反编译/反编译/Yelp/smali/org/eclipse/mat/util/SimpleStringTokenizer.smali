.class public final Lorg/eclipse/mat/util/SimpleStringTokenizer;
.super Ljava/lang/Object;
.source "SimpleStringTokenizer.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private delim:C

.field private subject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;C)V
    .locals 0
    .parameter "subject"
    .parameter "delim"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer;->subject:Ljava/lang/String;

    .line 26
    iput-char p2, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer;->delim:C

    .line 27
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/mat/util/SimpleStringTokenizer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer;->subject:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/eclipse/mat/util/SimpleStringTokenizer;)C
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-char v0, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer;->delim:C

    return v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 4
    .parameter "subject"
    .parameter "delim"

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, answer:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lorg/eclipse/mat/util/SimpleStringTokenizer;

    invoke-direct {v3, p0, p1}, Lorg/eclipse/mat/util/SimpleStringTokenizer;-><init>(Ljava/lang/String;C)V

    invoke-virtual {v3}, Lorg/eclipse/mat/util/SimpleStringTokenizer;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lorg/eclipse/mat/util/SimpleStringTokenizer$1;

    invoke-direct {v0, p0}, Lorg/eclipse/mat/util/SimpleStringTokenizer$1;-><init>(Lorg/eclipse/mat/util/SimpleStringTokenizer;)V

    return-object v0
.end method
