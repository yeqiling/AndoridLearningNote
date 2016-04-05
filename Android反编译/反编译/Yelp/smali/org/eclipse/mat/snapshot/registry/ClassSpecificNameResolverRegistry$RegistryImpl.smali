.class Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;
.super Ljava/lang/Object;
.source "ClassSpecificNameResolverRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegistryImpl"
.end annotation


# instance fields
.field private resolvers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;->resolvers:Ljava/util/Map;

    .line 45
    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;Lorg/eclipse/mat/snapshot/model/IObject;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;->doResolve(Lorg/eclipse/mat/snapshot/model/IObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doResolve(Lorg/eclipse/mat/snapshot/model/IObject;)Ljava/lang/String;
    .locals 10
    .parameter "object"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 49
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/mat/snapshot/model/IObject;->getClazz()Lorg/eclipse/mat/snapshot/model/IClass;

    move-result-object v0

    .line 50
    .local v0, clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    :goto_0
    if-eqz v0, :cond_0

    .line 51
    iget-object v4, p0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;->resolvers:Ljava/util/Map;

    invoke-interface {v0}, Lorg/eclipse/mat/snapshot/model/IClass;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;

    .line 52
    .local v2, resolver:Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;
    if-eqz v2, :cond_1

    .line 53
    invoke-interface {v2, p1}, Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;->resolve(Lorg/eclipse/mat/snapshot/model/IObject;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .end local v0           #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    .end local v2           #resolver:Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;
    :cond_0
    :goto_1
    return-object v3

    .line 55
    .restart local v0       #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    .restart local v2       #resolver:Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;
    :cond_1
    invoke-interface {v0}, Lorg/eclipse/mat/snapshot/model/IClass;->getSuperClass()Lorg/eclipse/mat/snapshot/model/IClass;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/eclipse/mat/SnapshotException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 56
    goto :goto_0

    .line 58
    .end local v0           #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    .end local v2           #resolver:Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;
    :catch_0
    move-exception v1

    .line 59
    .local v1, e:Ljava/lang/RuntimeException;
    const-class v4, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v6, Lorg/eclipse/mat/hprof/Messages;->ClassSpecificNameResolverRegistry_ErrorMsg_DuringResolving:Lorg/eclipse/mat/hprof/Messages;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/eclipse/mat/snapshot/model/IObject;->getTechnicalName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 64
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 65
    .local v1, e:Lorg/eclipse/mat/SnapshotException;
    const-class v4, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v6, Lorg/eclipse/mat/hprof/Messages;->ClassSpecificNameResolverRegistry_ErrorMsg_DuringResolving:Lorg/eclipse/mat/hprof/Messages;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/eclipse/mat/snapshot/model/IObject;->getTechnicalName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private extractSubjects(Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;)[Ljava/lang/String;
    .locals 5
    .parameter "instance"

    .prologue
    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/eclipse/mat/snapshot/extension/Subjects;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/eclipse/mat/snapshot/extension/Subjects;

    .line 83
    .local v1, subjects:Lorg/eclipse/mat/snapshot/extension/Subjects;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/eclipse/mat/snapshot/extension/Subjects;->value()[Ljava/lang/String;

    move-result-object v2

    .line 86
    :goto_0
    return-object v2

    .line 85
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/eclipse/mat/snapshot/extension/Subject;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/snapshot/extension/Subject;

    .line 86
    .local v0, subject:Lorg/eclipse/mat/snapshot/extension/Subject;
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0}, Lorg/eclipse/mat/snapshot/extension/Subject;->value()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public registerResolver(Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;)V
    .locals 4
    .parameter "resolver"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;->extractSubjects(Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;)[Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, subjects:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 76
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 77
    invoke-static {}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->instance()Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;

    move-result-object v2

    #getter for: Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->registry:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;
    invoke-static {v2}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->access$000(Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;)Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;->resolvers:Ljava/util/Map;

    aget-object v3, v1, v0

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v0           #ii:I
    :cond_0
    return-void
.end method
