.class public Lorg/eclipse/mat/inspections/CommonNameResolver$ByteArrayResolver;
.super Ljava/lang/Object;
.source "CommonNameResolver.java"

# interfaces
.implements Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/inspections/CommonNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteArrayResolver"
.end annotation

.annotation runtime Lorg/eclipse/mat/snapshot/extension/Subject;
    value = "byte[]"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Lorg/eclipse/mat/snapshot/model/IObject;)Ljava/lang/String;
    .locals 7
    .parameter "heapObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p1

    check-cast v0, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;

    .line 93
    .local v0, arr:Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;
    const/4 v4, 0x0

    invoke-interface {v0}, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->getLength()I

    move-result v5

    const/16 v6, 0x400

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v0, v4, v5}, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->getValueArray(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v3, v4

    check-cast v3, [B

    .line 94
    .local v3, value:[B
    if-nez v3, :cond_0

    const/4 v4, 0x0

    .line 106
    :goto_0
    return-object v4

    .line 97
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v4, v3

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 98
    .local v2, r:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 100
    aget-byte v4, v3, v1

    const/16 v5, 0x20

    if-lt v4, v5, :cond_1

    aget-byte v4, v3, v1

    const/16 v5, 0x7e

    if-le v4, v5, :cond_2

    .line 101
    :cond_1
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    :cond_2
    aget-byte v4, v3, v1

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 106
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
