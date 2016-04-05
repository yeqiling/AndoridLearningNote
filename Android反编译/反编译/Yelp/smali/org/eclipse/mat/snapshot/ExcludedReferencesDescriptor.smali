.class public final Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;
.super Ljava/lang/Object;
.source "ExcludedReferencesDescriptor.java"


# instance fields
.field private fields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private objectIds:[I


# direct methods
.method public constructor <init>([ILjava/util/Set;)V
    .locals 1
    .parameter "objectIds"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, fields:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;->fields:Ljava/util/Set;

    .line 25
    iput-object p1, p0, Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;->objectIds:[I

    .line 26
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;->objectIds:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 27
    return-void
.end method

.method public varargs constructor <init>([I[Ljava/lang/String;)V
    .locals 2
    .parameter "objectIds"
    .parameter "fields"

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0}, Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;-><init>([ILjava/util/Set;)V

    .line 31
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1
    .parameter "objectId"

    .prologue
    .line 38
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;->objectIds:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;->fields:Ljava/util/Set;

    return-object v0
.end method

.method public getObjectIds()[I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;->objectIds:[I

    return-object v0
.end method
