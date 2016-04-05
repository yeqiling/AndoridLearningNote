.class public final Lorg/eclipse/mat/snapshot/model/PrettyPrinter;
.super Ljava/lang/Object;
.source "PrettyPrinter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static arrayAsString(Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;III)Ljava/lang/String;
    .locals 11
    .parameter "charArray"
    .parameter "offset"
    .parameter "count"
    .parameter "limit"

    .prologue
    const/4 v7, 0x0

    .line 42
    invoke-interface {p0}, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->getType()I

    move-result v6

    const/4 v8, 0x5

    if-eq v6, v8, :cond_0

    move-object v6, v7

    .line 68
    :goto_0
    return-object v6

    .line 44
    :cond_0
    invoke-interface {p0}, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->getLength()I

    move-result v2

    .line 46
    .local v2, length:I
    if-gt p2, p3, :cond_2

    move v0, p2

    .line 47
    .local v0, contentToRead:I
    :goto_1
    sub-int v6, v2, p1

    if-le v0, v6, :cond_1

    sub-int v0, v2, p1

    .line 50
    :cond_1
    if-nez p1, :cond_3

    if-ne v2, v0, :cond_3

    .line 51
    invoke-interface {p0}, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->getValueArray()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [C

    move-object v5, v6

    check-cast v5, [C

    .line 56
    .local v5, value:[C
    :goto_2
    if-nez v5, :cond_4

    move-object v6, v7

    goto :goto_0

    .end local v0           #contentToRead:I
    .end local v5           #value:[C
    :cond_2
    move v0, p3

    .line 46
    goto :goto_1

    .line 53
    .restart local v0       #contentToRead:I
    :cond_3
    invoke-interface {p0, p1, v0}, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->getValueArray(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [C

    move-object v5, v6

    check-cast v5, [C

    .restart local v5       #value:[C
    goto :goto_2

    .line 58
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v6, v5

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 59
    .local v3, result:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_3
    array-length v6, v5

    if-ge v1, v6, :cond_6

    .line 60
    aget-char v4, v5, v1

    .line 61
    .local v4, val:C
    const/16 v6, 0x20

    if-lt v4, v6, :cond_5

    const/16 v6, 0x7f

    if-ge v4, v6, :cond_5

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 64
    :cond_5
    const-string v6, "\\u"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%04x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const v10, 0xffff

    and-int/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 67
    .end local v4           #val:C
    :cond_6
    if-ge p3, p2, :cond_7

    const-string v6, "..."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static objectAsString(Lorg/eclipse/mat/snapshot/model/IObject;I)Ljava/lang/String;
    .locals 5
    .parameter "stringObject"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 25
    const-string v4, "count"

    invoke-interface {p0, v4}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 26
    .local v1, count:Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-object v3

    .line 27
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_2

    const-string v3, ""

    goto :goto_0

    .line 29
    :cond_2
    const-string v4, "value"

    invoke-interface {p0, v4}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;

    .line 30
    .local v0, charArray:Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;
    if-eqz v0, :cond_0

    .line 32
    const-string v4, "offset"

    invoke-interface {p0, v4}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 33
    .local v2, offset:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v3, v4, p1}, Lorg/eclipse/mat/snapshot/model/PrettyPrinter;->arrayAsString(Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;III)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
