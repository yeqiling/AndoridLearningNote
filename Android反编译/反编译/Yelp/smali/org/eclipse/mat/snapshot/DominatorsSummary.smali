.class public final Lorg/eclipse/mat/snapshot/DominatorsSummary;
.super Ljava/lang/Object;
.source "DominatorsSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;,
        Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;
    }
.end annotation


# static fields
.field public static final COMPARE_BY_DOMINATED:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMPARE_BY_DOMINATED_HEAP_SIZE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMPARE_BY_DOMINATED_RETAINED_HEAP_SIZE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMPARE_BY_DOMINATORS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMPARE_BY_DOMINATOR_HEAP_SIZE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMPARE_BY_DOMINATOR_RETAINED_HEAP_SIZE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMPARE_BY_NAME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private classDominatorRecords:[Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;

.field private classloaderDominatorRecords:[Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;

.field private data:Ljava/lang/Object;

.field private snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 379
    new-instance v0, Lorg/eclipse/mat/snapshot/DominatorsSummary$1;

    invoke-direct {v0}, Lorg/eclipse/mat/snapshot/DominatorsSummary$1;-><init>()V

    sput-object v0, Lorg/eclipse/mat/snapshot/DominatorsSummary;->COMPARE_BY_NAME:Ljava/util/Comparator;

    .line 394
    new-instance v0, Lorg/eclipse/mat/snapshot/DominatorsSummary$2;

    invoke-direct {v0}, Lorg/eclipse/mat/snapshot/DominatorsSummary$2;-><init>()V

    sput-object v0, Lorg/eclipse/mat/snapshot/DominatorsSummary;->COMPARE_BY_DOMINATORS:Ljava/util/Comparator;

    .line 414
    new-instance v0, Lorg/eclipse/mat/snapshot/DominatorsSummary$3;

    invoke-direct {v0}, Lorg/eclipse/mat/snapshot/DominatorsSummary$3;-><init>()V

    sput-object v0, Lorg/eclipse/mat/snapshot/DominatorsSummary;->COMPARE_BY_DOMINATED:Ljava/util/Comparator;

    .line 434
    new-instance v0, Lorg/eclipse/mat/snapshot/DominatorsSummary$4;

    invoke-direct {v0}, Lorg/eclipse/mat/snapshot/DominatorsSummary$4;-><init>()V

    sput-object v0, Lorg/eclipse/mat/snapshot/DominatorsSummary;->COMPARE_BY_DOMINATED_HEAP_SIZE:Ljava/util/Comparator;

    .line 454
    new-instance v0, Lorg/eclipse/mat/snapshot/DominatorsSummary$5;

    invoke-direct {v0}, Lorg/eclipse/mat/snapshot/DominatorsSummary$5;-><init>()V

    sput-object v0, Lorg/eclipse/mat/snapshot/DominatorsSummary;->COMPARE_BY_DOMINATOR_HEAP_SIZE:Ljava/util/Comparator;

    .line 472
    new-instance v0, Lorg/eclipse/mat/snapshot/DominatorsSummary$6;

    invoke-direct {v0}, Lorg/eclipse/mat/snapshot/DominatorsSummary$6;-><init>()V

    sput-object v0, Lorg/eclipse/mat/snapshot/DominatorsSummary;->COMPARE_BY_DOMINATED_RETAINED_HEAP_SIZE:Ljava/util/Comparator;

    .line 492
    new-instance v0, Lorg/eclipse/mat/snapshot/DominatorsSummary$7;

    invoke-direct {v0}, Lorg/eclipse/mat/snapshot/DominatorsSummary$7;-><init>()V

    sput-object v0, Lorg/eclipse/mat/snapshot/DominatorsSummary;->COMPARE_BY_DOMINATOR_RETAINED_HEAP_SIZE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>([Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;Lorg/eclipse/mat/snapshot/ISnapshot;)V
    .locals 4
    .parameter "classDominatorRecords"
    .parameter "snapshot"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary;->classDominatorRecords:[Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;

    .line 42
    iput-object p2, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary;->snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;

    .line 44
    move-object v0, p1

    .local v0, arr$:[Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 45
    .local v3, record:Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;
    iput-object p0, v3, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->summary:Lorg/eclipse/mat/snapshot/DominatorsSummary;

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v3           #record:Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;
    :cond_0
    return-void
.end method

.method private load(Ljava/lang/Class;)[Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;",
            ">;)[",
            "Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, factoryClass:Ljava/lang/Class;,"Ljava/lang/Class<Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;>;"
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;>;"
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary;->classDominatorRecords:[Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;

    .local v0, arr$:[Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v7, v0, v3

    .line 100
    .local v7, record:Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;
    invoke-virtual {v7}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->getClassloaderId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;

    .line 101
    .local v1, clr:Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;
    if-nez v1, :cond_0

    .line 102
    invoke-virtual {v7}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->getClassloaderId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #clr:Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;
    check-cast v1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;

    .restart local v1       #clr:Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;
    invoke-interface {v5, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v7}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->getClassloaderId()I

    move-result v8

    invoke-virtual {v1, v8}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->setId(I)V

    .line 106
    invoke-virtual {v1}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 107
    const-string v8, "<ROOT>"

    iput-object v8, v1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->name:Ljava/lang/String;

    .line 115
    :cond_0
    :goto_1
    iget v8, v1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->dominated:I

    invoke-virtual {v7}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->getDominatedCount()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->dominated:I

    .line 116
    iget v8, v1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->dominator:I

    invoke-virtual {v7}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->getDominatorCount()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->dominator:I

    .line 117
    iget-wide v8, v1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->dominatedNetSize:J

    invoke-virtual {v7}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->getDominatedNetSize()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->dominatedNetSize:J

    .line 118
    iget-wide v8, v1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->dominatorNetSize:J

    invoke-virtual {v7}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->getDominatorNetSize()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->dominatorNetSize:J

    .line 120
    iget-object v8, v1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->records:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    :cond_1
    iget-object v8, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary;->snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;

    iget v9, v1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->id:I

    invoke-interface {v8, v9}, Lorg/eclipse/mat/snapshot/ISnapshot;->getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v6

    .line 110
    .local v6, object:Lorg/eclipse/mat/snapshot/model/IObject;
    invoke-interface {v6}, Lorg/eclipse/mat/snapshot/model/IObject;->getClassSpecificName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->name:Ljava/lang/String;

    .line 111
    iget-object v8, v1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->name:Ljava/lang/String;

    if-nez v8, :cond_0

    invoke-interface {v6}, Lorg/eclipse/mat/snapshot/model/IObject;->getTechnicalName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 124
    .end local v0           #arr$:[Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;
    .end local v1           #clr:Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;>;"
    .end local v6           #object:Lorg/eclipse/mat/snapshot/model/IObject;
    .end local v7           #record:Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;
    :catch_0
    move-exception v2

    .line 125
    .local v2, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 123
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;>;"
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v9

    new-array v9, v9, [Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;

    invoke-interface {v8, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v8
.end method

.method public static reverseComparator(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/Object;>;"
    new-instance v0, Lorg/eclipse/mat/snapshot/DominatorsSummary$8;

    invoke-direct {v0, p0}, Lorg/eclipse/mat/snapshot/DominatorsSummary$8;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public getClassDominatorRecords()[Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary;->classDominatorRecords:[Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;

    return-object v0
.end method

.method public getClassloaderDominatorRecords()[Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;
    .locals 1

    .prologue
    .line 80
    const-class v0, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;

    invoke-virtual {p0, v0}, Lorg/eclipse/mat/snapshot/DominatorsSummary;->getClassloaderDominatorRecords(Ljava/lang/Class;)[Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;

    move-result-object v0

    return-object v0
.end method

.method public getClassloaderDominatorRecords(Ljava/lang/Class;)[Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;",
            ">(",
            "Ljava/lang/Class",
            "<TC;>;)[TC;"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, factoryClass:Ljava/lang/Class;,"Ljava/lang/Class<TC;>;"
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary;->classloaderDominatorRecords:[Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0, p1}, Lorg/eclipse/mat/snapshot/DominatorsSummary;->load(Ljava/lang/Class;)[Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary;->classloaderDominatorRecords:[Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;

    .line 90
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary;->classloaderDominatorRecords:[Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;

    check-cast v0, [Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 61
    iput-object p1, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary;->data:Ljava/lang/Object;

    .line 62
    return-void
.end method
