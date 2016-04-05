.class Lorg/eclipse/mat/parser/index/IndexManager$1;
.super Lorg/eclipse/mat/parser/index/IndexManager$Visitor;
.source "IndexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/mat/parser/index/IndexManager;->init(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/mat/parser/index/IndexManager;

.field final synthetic val$prefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/eclipse/mat/parser/index/IndexManager;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lorg/eclipse/mat/parser/index/IndexManager$1;->this$0:Lorg/eclipse/mat/parser/index/IndexManager;

    iput-object p2, p0, Lorg/eclipse/mat/parser/index/IndexManager$1;->val$prefix:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/mat/parser/index/IndexManager$Visitor;-><init>(Lorg/eclipse/mat/parser/index/IndexManager;Lorg/eclipse/mat/parser/index/IndexManager$1;)V

    return-void
.end method


# virtual methods
.method visit(Lorg/eclipse/mat/parser/index/IndexManager$Index;Lorg/eclipse/mat/parser/index/IIndexReader;)V
    .locals 12
    .parameter "index"
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 80
    if-eqz p2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    :try_start_0
    iget-object v6, p0, Lorg/eclipse/mat/parser/index/IndexManager$1;->val$prefix:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lorg/eclipse/mat/parser/index/IndexManager$Index;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 84
    .local v4, indexFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 85
    iget-object v6, p1, Lorg/eclipse/mat/parser/index/IndexManager$Index;->impl:Ljava/lang/Class;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/io/File;

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 86
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/eclipse/mat/parser/index/IIndexReader;

    move-object p2, v0

    .line 87
    iget-object v6, p0, Lorg/eclipse/mat/parser/index/IndexManager$1;->this$0:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v6, p1, p2}, Lorg/eclipse/mat/parser/index/IndexManager;->setReader(Lorg/eclipse/mat/parser/index/IndexManager$Index;Lorg/eclipse/mat/parser/index/IIndexReader;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 89
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v4           #indexFile:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 90
    .local v3, e:Ljava/lang/NoSuchMethodException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 91
    .end local v3           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 92
    .local v3, e:Ljava/lang/InstantiationException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 93
    .end local v3           #e:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v3

    .line 94
    .local v3, e:Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 95
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    .line 96
    .local v3, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 97
    .local v1, cause:Ljava/lang/Throwable;
    const-string v6, "{0}: {1}"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, msg:Ljava/lang/String;
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 100
    .end local v1           #cause:Ljava/lang/Throwable;
    .end local v3           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v5           #msg:Ljava/lang/String;
    :catch_4
    move-exception v3

    .line 103
    .local v3, e:Ljava/lang/RuntimeException;
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method
