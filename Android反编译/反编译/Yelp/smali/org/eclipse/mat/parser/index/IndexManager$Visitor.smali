.class abstract Lorg/eclipse/mat/parser/index/IndexManager$Visitor;
.super Ljava/lang/Object;
.source "IndexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Visitor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/mat/parser/index/IndexManager;


# direct methods
.method private constructor <init>(Lorg/eclipse/mat/parser/index/IndexManager;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lorg/eclipse/mat/parser/index/IndexManager$Visitor;->this$0:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/mat/parser/index/IndexManager;Lorg/eclipse/mat/parser/index/IndexManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lorg/eclipse/mat/parser/index/IndexManager$Visitor;-><init>(Lorg/eclipse/mat/parser/index/IndexManager;)V

    return-void
.end method


# virtual methods
.method doIt()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    :try_start_0
    invoke-static {}, Lorg/eclipse/mat/parser/index/IndexManager$Index;->values()[Lorg/eclipse/mat/parser/index/IndexManager$Index;

    move-result-object v0

    .local v0, arr$:[Lorg/eclipse/mat/parser/index/IndexManager$Index;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 176
    .local v3, index:Lorg/eclipse/mat/parser/index/IndexManager$Index;
    iget-object v6, p0, Lorg/eclipse/mat/parser/index/IndexManager$Visitor;->this$0:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v6, v3}, Lorg/eclipse/mat/parser/index/IndexManager;->getReader(Lorg/eclipse/mat/parser/index/IndexManager$Index;)Lorg/eclipse/mat/parser/index/IIndexReader;

    move-result-object v5

    .line 177
    .local v5, reader:Lorg/eclipse/mat/parser/index/IIndexReader;
    invoke-virtual {p0, v3, v5}, Lorg/eclipse/mat/parser/index/IndexManager$Visitor;->visit(Lorg/eclipse/mat/parser/index/IndexManager$Index;Lorg/eclipse/mat/parser/index/IIndexReader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    .end local v0           #arr$:[Lorg/eclipse/mat/parser/index/IndexManager$Index;
    .end local v2           #i$:I
    .end local v3           #index:Lorg/eclipse/mat/parser/index/IndexManager$Index;
    .end local v4           #len$:I
    .end local v5           #reader:Lorg/eclipse/mat/parser/index/IIndexReader;
    :catch_0
    move-exception v1

    .line 180
    .local v1, e:Ljava/io/IOException;
    throw v1

    .line 181
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 182
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 184
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Lorg/eclipse/mat/parser/index/IndexManager$Index;
    .restart local v2       #i$:I
    .restart local v4       #len$:I
    :cond_0
    return-void
.end method

.method abstract visit(Lorg/eclipse/mat/parser/index/IndexManager$Index;Lorg/eclipse/mat/parser/index/IIndexReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
