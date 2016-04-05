.class public final Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;
.super Ljava/lang/Object;
.source "ClassSpecificNameResolverRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;
    }
.end annotation


# static fields
.field private static instance:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;


# instance fields
.field private registry:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;

    invoke-direct {v0}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;-><init>()V

    sput-object v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->instance:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;

    .line 94
    sget-object v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->instance:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;

    iget-object v0, v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->registry:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;

    new-instance v1, Lorg/eclipse/mat/inspections/CommonNameResolver$StringResolver;

    invoke-direct {v1}, Lorg/eclipse/mat/inspections/CommonNameResolver$StringResolver;-><init>()V

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;->registerResolver(Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;)V

    .line 96
    sget-object v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->instance:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;

    iget-object v0, v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->registry:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;

    new-instance v1, Lorg/eclipse/mat/inspections/CommonNameResolver$StringBufferResolver;

    invoke-direct {v1}, Lorg/eclipse/mat/inspections/CommonNameResolver$StringBufferResolver;-><init>()V

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;->registerResolver(Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;)V

    .line 98
    sget-object v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->instance:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;

    iget-object v0, v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->registry:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;

    new-instance v1, Lorg/eclipse/mat/inspections/CommonNameResolver$ThreadResolver;

    invoke-direct {v1}, Lorg/eclipse/mat/inspections/CommonNameResolver$ThreadResolver;-><init>()V

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;->registerResolver(Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;)V

    .line 100
    sget-object v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->instance:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;

    iget-object v0, v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->registry:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;

    new-instance v1, Lorg/eclipse/mat/inspections/CommonNameResolver$ThreadGroupResolver;

    invoke-direct {v1}, Lorg/eclipse/mat/inspections/CommonNameResolver$ThreadGroupResolver;-><init>()V

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;->registerResolver(Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;)V

    .line 102
    sget-object v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->instance:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;

    iget-object v0, v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->registry:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;

    new-instance v1, Lorg/eclipse/mat/inspections/CommonNameResolver$ValueResolver;

    invoke-direct {v1}, Lorg/eclipse/mat/inspections/CommonNameResolver$ValueResolver;-><init>()V

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;->registerResolver(Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;)V

    .line 104
    sget-object v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->instance:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;

    iget-object v0, v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->registry:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;

    new-instance v1, Lorg/eclipse/mat/inspections/CommonNameResolver$CharArrayResolver;

    invoke-direct {v1}, Lorg/eclipse/mat/inspections/CommonNameResolver$CharArrayResolver;-><init>()V

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;->registerResolver(Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;)V

    .line 106
    sget-object v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->instance:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;

    iget-object v0, v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->registry:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;

    new-instance v1, Lorg/eclipse/mat/inspections/CommonNameResolver$ByteArrayResolver;

    invoke-direct {v1}, Lorg/eclipse/mat/inspections/CommonNameResolver$ByteArrayResolver;-><init>()V

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;->registerResolver(Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;)V

    .line 108
    sget-object v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->instance:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;

    iget-object v0, v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->registry:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;

    new-instance v1, Lorg/eclipse/mat/inspections/CommonNameResolver$URLResolver;

    invoke-direct {v1}, Lorg/eclipse/mat/inspections/CommonNameResolver$URLResolver;-><init>()V

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;->registerResolver(Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;)V

    .line 110
    sget-object v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->instance:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;

    iget-object v0, v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->registry:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;

    new-instance v1, Lorg/eclipse/mat/inspections/CommonNameResolver$AccessibleObjectResolver;

    invoke-direct {v1}, Lorg/eclipse/mat/inspections/CommonNameResolver$AccessibleObjectResolver;-><init>()V

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;->registerResolver(Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;)V

    .line 112
    sget-object v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->instance:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;

    iget-object v0, v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->registry:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;

    new-instance v1, Lorg/eclipse/mat/inspections/CommonNameResolver$FieldResolver;

    invoke-direct {v1}, Lorg/eclipse/mat/inspections/CommonNameResolver$FieldResolver;-><init>()V

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;->registerResolver(Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;)V

    .line 114
    sget-object v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->instance:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;

    iget-object v0, v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->registry:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;

    new-instance v1, Lorg/eclipse/mat/inspections/CommonNameResolver$MethodResolver;

    invoke-direct {v1}, Lorg/eclipse/mat/inspections/CommonNameResolver$MethodResolver;-><init>()V

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;->registerResolver(Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;)V

    .line 116
    sget-object v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->instance:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;

    iget-object v0, v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->registry:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;

    new-instance v1, Lorg/eclipse/mat/inspections/CommonNameResolver$ConstructorResolver;

    invoke-direct {v1}, Lorg/eclipse/mat/inspections/CommonNameResolver$ConstructorResolver;-><init>()V

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;->registerResolver(Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;)V

    .line 126
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;

    invoke-direct {v0}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->registry:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;)Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->registry:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;

    return-object v0
.end method

.method public static instance()Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->instance:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;

    return-object v0
.end method

.method public static resolve(Lorg/eclipse/mat/snapshot/model/IObject;)Ljava/lang/String;
    .locals 2
    .parameter "object"

    .prologue
    .line 150
    if-nez p0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    sget-object v1, Lorg/eclipse/mat/hprof/Messages;->ClassSpecificNameResolverRegistry_Error_MissingObject:Lorg/eclipse/mat/hprof/Messages;

    iget-object v1, v1, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    invoke-static {}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->instance()Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->registry:Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;

    #calls: Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;->doResolve(Lorg/eclipse/mat/snapshot/model/IObject;)Ljava/lang/String;
    invoke-static {v0, p0}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;->access$100(Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry$RegistryImpl;Lorg/eclipse/mat/snapshot/model/IObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
