.class Lorg/eclipse/mat/parser/index/IndexManager$2;
.super Lorg/eclipse/mat/parser/index/IndexManager$Visitor;
.source "IndexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/mat/parser/index/IndexManager;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/mat/parser/index/IndexManager;


# direct methods
.method constructor <init>(Lorg/eclipse/mat/parser/index/IndexManager;)V
    .locals 1
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lorg/eclipse/mat/parser/index/IndexManager$2;->this$0:Lorg/eclipse/mat/parser/index/IndexManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/mat/parser/index/IndexManager$Visitor;-><init>(Lorg/eclipse/mat/parser/index/IndexManager;Lorg/eclipse/mat/parser/index/IndexManager$1;)V

    return-void
.end method


# virtual methods
.method visit(Lorg/eclipse/mat/parser/index/IndexManager$Index;Lorg/eclipse/mat/parser/index/IIndexReader;)V
    .locals 2
    .parameter "index"
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    if-nez p2, :cond_0

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-interface {p2}, Lorg/eclipse/mat/parser/index/IIndexReader;->close()V

    .line 152
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexManager$2;->this$0:Lorg/eclipse/mat/parser/index/IndexManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/mat/parser/index/IndexManager;->setReader(Lorg/eclipse/mat/parser/index/IndexManager$Index;Lorg/eclipse/mat/parser/index/IIndexReader;)V

    goto :goto_0
.end method
