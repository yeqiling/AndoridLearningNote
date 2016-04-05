.class Lorg/eclipse/mat/util/SimpleStringTokenizer$1;
.super Ljava/lang/Object;
.source "SimpleStringTokenizer.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/mat/util/SimpleStringTokenizer;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field maxPosition:I

.field position:I

.field final synthetic this$0:Lorg/eclipse/mat/util/SimpleStringTokenizer;


# direct methods
.method constructor <init>(Lorg/eclipse/mat/util/SimpleStringTokenizer;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer$1;->this$0:Lorg/eclipse/mat/util/SimpleStringTokenizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer$1;->position:I

    .line 32
    iget-object v0, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer$1;->this$0:Lorg/eclipse/mat/util/SimpleStringTokenizer;

    #getter for: Lorg/eclipse/mat/util/SimpleStringTokenizer;->subject:Ljava/lang/String;
    invoke-static {v0}, Lorg/eclipse/mat/util/SimpleStringTokenizer;->access$000(Lorg/eclipse/mat/util/SimpleStringTokenizer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer$1;->maxPosition:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 35
    iget v0, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer$1;->position:I

    iget v1, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer$1;->maxPosition:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/eclipse/mat/util/SimpleStringTokenizer$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 6

    .prologue
    .line 39
    iget v3, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer$1;->position:I

    iget v4, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer$1;->maxPosition:I

    if-lt v3, v4, :cond_0

    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 43
    :cond_0
    iget-object v3, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer$1;->this$0:Lorg/eclipse/mat/util/SimpleStringTokenizer;

    #getter for: Lorg/eclipse/mat/util/SimpleStringTokenizer;->subject:Ljava/lang/String;
    invoke-static {v3}, Lorg/eclipse/mat/util/SimpleStringTokenizer;->access$000(Lorg/eclipse/mat/util/SimpleStringTokenizer;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer$1;->this$0:Lorg/eclipse/mat/util/SimpleStringTokenizer;

    #getter for: Lorg/eclipse/mat/util/SimpleStringTokenizer;->delim:C
    invoke-static {v4}, Lorg/eclipse/mat/util/SimpleStringTokenizer;->access$100(Lorg/eclipse/mat/util/SimpleStringTokenizer;)C

    move-result v4

    iget v5, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer$1;->position:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 45
    .local v2, p:I
    if-gez v2, :cond_1

    .line 46
    iget-object v3, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer$1;->this$0:Lorg/eclipse/mat/util/SimpleStringTokenizer;

    #getter for: Lorg/eclipse/mat/util/SimpleStringTokenizer;->subject:Ljava/lang/String;
    invoke-static {v3}, Lorg/eclipse/mat/util/SimpleStringTokenizer;->access$000(Lorg/eclipse/mat/util/SimpleStringTokenizer;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer$1;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, answer:Ljava/lang/String;
    iget v3, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer$1;->maxPosition:I

    iput v3, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer$1;->position:I

    move-object v1, v0

    .line 54
    .end local v0           #answer:Ljava/lang/String;
    .local v1, answer:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 50
    .end local v1           #answer:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer$1;->this$0:Lorg/eclipse/mat/util/SimpleStringTokenizer;

    #getter for: Lorg/eclipse/mat/util/SimpleStringTokenizer;->subject:Ljava/lang/String;
    invoke-static {v3}, Lorg/eclipse/mat/util/SimpleStringTokenizer;->access$000(Lorg/eclipse/mat/util/SimpleStringTokenizer;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer$1;->position:I

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 51
    .restart local v0       #answer:Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/mat/util/SimpleStringTokenizer$1;->position:I

    move-object v1, v0

    .line 54
    .end local v0           #answer:Ljava/lang/String;
    .restart local v1       #answer:Ljava/lang/String;
    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
