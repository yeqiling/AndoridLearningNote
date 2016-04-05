.class public final Lcom/squareup/leakcanary/ExcludedRefs$Builder;
.super Ljava/lang/Object;
.source "ExcludedRefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/ExcludedRefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final excludeFieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final excludeStaticFieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final excludedThreads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->excludeFieldMap:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->excludeStaticFieldMap:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->excludedThreads:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public build()Lcom/squareup/leakcanary/ExcludedRefs;
    .locals 5

    .prologue
    .line 86
    new-instance v0, Lcom/squareup/leakcanary/ExcludedRefs;

    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->excludeFieldMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->excludeStaticFieldMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->excludedThreads:Ljava/util/Set;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/squareup/leakcanary/ExcludedRefs;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/squareup/leakcanary/ExcludedRefs$1;)V

    return-object v0
.end method

.method public instanceField(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 2
    .parameter "className"
    .parameter "fieldName"

    .prologue
    .line 56
    const-string v1, "className"

    invoke-static {p1, v1}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    const-string v1, "fieldName"

    invoke-static {p2, v1}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->excludeFieldMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 59
    .local v0, excludedFields:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/util/LinkedHashSet;

    .end local v0           #excludedFields:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 61
    .restart local v0       #excludedFields:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->excludeFieldMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    return-object p0
.end method

.method public staticField(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 2
    .parameter "className"
    .parameter "fieldName"

    .prologue
    .line 68
    const-string v1, "className"

    invoke-static {p1, v1}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    const-string v1, "fieldName"

    invoke-static {p2, v1}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->excludeStaticFieldMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 71
    .local v0, excludedFields:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/LinkedHashSet;

    .end local v0           #excludedFields:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 73
    .restart local v0       #excludedFields:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->excludeStaticFieldMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    return-object p0
.end method

.method public thread(Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 1
    .parameter "threadName"

    .prologue
    .line 80
    const-string v0, "threadName"

    invoke-static {p1, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->excludedThreads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    return-object p0
.end method
