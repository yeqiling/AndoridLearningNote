.class public final enum Lorg/eclipse/mat/parser/index/IndexManager$Index;
.super Ljava/lang/Enum;
.source "IndexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Index"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/eclipse/mat/parser/index/IndexManager$Index;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/mat/parser/index/IndexManager$Index;

.field public static final enum A2SIZE:Lorg/eclipse/mat/parser/index/IndexManager$Index;

.field public static final enum DOMINATED:Lorg/eclipse/mat/parser/index/IndexManager$Index;

.field public static final enum DOMINATOR:Lorg/eclipse/mat/parser/index/IndexManager$Index;

.field public static final enum IDENTIFIER:Lorg/eclipse/mat/parser/index/IndexManager$Index;

.field public static final enum INBOUND:Lorg/eclipse/mat/parser/index/IndexManager$Index;

.field public static final enum O2CLASS:Lorg/eclipse/mat/parser/index/IndexManager$Index;

.field public static final enum O2RETAINED:Lorg/eclipse/mat/parser/index/IndexManager$Index;

.field public static final enum OUTBOUND:Lorg/eclipse/mat/parser/index/IndexManager$Index;


# instance fields
.field public filename:Ljava/lang/String;

.field impl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/eclipse/mat/parser/index/IIndexReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 23
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexManager$Index;

    const-string v1, "INBOUND"

    const-string v2, "inbound"

    const-class v3, Lorg/eclipse/mat/parser/index/IndexReader$InboundReader;

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/eclipse/mat/parser/index/IndexManager$Index;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/eclipse/mat/parser/index/IndexManager$Index;->INBOUND:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    .line 24
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexManager$Index;

    const-string v1, "OUTBOUND"

    const-string v2, "outbound"

    const-class v3, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NSortedReader;

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/eclipse/mat/parser/index/IndexManager$Index;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/eclipse/mat/parser/index/IndexManager$Index;->OUTBOUND:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    .line 25
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexManager$Index;

    const-string v1, "O2CLASS"

    const-string v2, "o2c"

    const-class v3, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/eclipse/mat/parser/index/IndexManager$Index;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/eclipse/mat/parser/index/IndexManager$Index;->O2CLASS:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    .line 26
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexManager$Index;

    const-string v1, "IDENTIFIER"

    const-string v2, "idx"

    const-class v3, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/eclipse/mat/parser/index/IndexManager$Index;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/eclipse/mat/parser/index/IndexManager$Index;->IDENTIFIER:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    .line 27
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexManager$Index;

    const-string v1, "A2SIZE"

    const-string v2, "a2s"

    const-class v3, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/eclipse/mat/parser/index/IndexManager$Index;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/eclipse/mat/parser/index/IndexManager$Index;->A2SIZE:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    .line 28
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexManager$Index;

    const-string v1, "DOMINATED"

    const/4 v2, 0x5

    const-string v3, "domOut"

    const-class v4, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/mat/parser/index/IndexManager$Index;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/eclipse/mat/parser/index/IndexManager$Index;->DOMINATED:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    .line 29
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexManager$Index;

    const-string v1, "O2RETAINED"

    const/4 v2, 0x6

    const-string v3, "o2ret"

    const-class v4, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/mat/parser/index/IndexManager$Index;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/eclipse/mat/parser/index/IndexManager$Index;->O2RETAINED:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    .line 30
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexManager$Index;

    const-string v1, "DOMINATOR"

    const/4 v2, 0x7

    const-string v3, "domIn"

    const-class v4, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/mat/parser/index/IndexManager$Index;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/eclipse/mat/parser/index/IndexManager$Index;->DOMINATOR:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/eclipse/mat/parser/index/IndexManager$Index;

    sget-object v1, Lorg/eclipse/mat/parser/index/IndexManager$Index;->INBOUND:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    aput-object v1, v0, v5

    sget-object v1, Lorg/eclipse/mat/parser/index/IndexManager$Index;->OUTBOUND:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    aput-object v1, v0, v6

    sget-object v1, Lorg/eclipse/mat/parser/index/IndexManager$Index;->O2CLASS:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    aput-object v1, v0, v7

    sget-object v1, Lorg/eclipse/mat/parser/index/IndexManager$Index;->IDENTIFIER:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    aput-object v1, v0, v8

    sget-object v1, Lorg/eclipse/mat/parser/index/IndexManager$Index;->A2SIZE:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lorg/eclipse/mat/parser/index/IndexManager$Index;->DOMINATED:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/eclipse/mat/parser/index/IndexManager$Index;->O2RETAINED:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/eclipse/mat/parser/index/IndexManager$Index;->DOMINATOR:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/mat/parser/index/IndexManager$Index;->$VALUES:[Lorg/eclipse/mat/parser/index/IndexManager$Index;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter
    .parameter "filename"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/eclipse/mat/parser/index/IIndexReader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p4, impl:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/eclipse/mat/parser/index/IIndexReader;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lorg/eclipse/mat/parser/index/IndexManager$Index;->filename:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lorg/eclipse/mat/parser/index/IndexManager$Index;->impl:Ljava/lang/Class;

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/mat/parser/index/IndexManager$Index;
    .locals 1
    .parameter "name"

    .prologue
    .line 22
    const-class v0, Lorg/eclipse/mat/parser/index/IndexManager$Index;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/parser/index/IndexManager$Index;

    return-object v0
.end method

.method public static values()[Lorg/eclipse/mat/parser/index/IndexManager$Index;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/eclipse/mat/parser/index/IndexManager$Index;->$VALUES:[Lorg/eclipse/mat/parser/index/IndexManager$Index;

    invoke-virtual {v0}, [Lorg/eclipse/mat/parser/index/IndexManager$Index;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/mat/parser/index/IndexManager$Index;

    return-object v0
.end method


# virtual methods
.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "prefix"

    .prologue
    .line 41
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexManager$Index;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
