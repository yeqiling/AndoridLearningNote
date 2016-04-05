.class public Lorg/eclipse/mat/inspections/CommonNameResolver$ConstructorResolver;
.super Lorg/eclipse/mat/inspections/CommonNameResolver$AccessibleObjectResolver;
.source "CommonNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/inspections/CommonNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConstructorResolver"
.end annotation

.annotation runtime Lorg/eclipse/mat/snapshot/extension/Subject;
    value = "java.lang.reflect.Constructor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Lorg/eclipse/mat/inspections/CommonNameResolver$AccessibleObjectResolver;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Lorg/eclipse/mat/snapshot/model/IObject;)Ljava/lang/String;
    .locals 12
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v4, r:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lorg/eclipse/mat/snapshot/model/IObject;->getSnapshot()Lorg/eclipse/mat/snapshot/ISnapshot;

    move-result-object v7

    .line 273
    .local v7, snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;
    const-string v9, "modifiers"

    invoke-interface {p1, v9}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 274
    .local v8, val:Ljava/lang/Object;
    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_0

    .line 275
    check-cast v8, Ljava/lang/Integer;

    .end local v8           #val:Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_0

    const/16 v9, 0x20

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    :cond_0
    const-string v9, "clazz"

    invoke-interface {p1, v9}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/mat/snapshot/model/IObject;

    .line 279
    .local v5, ref:Lorg/eclipse/mat/snapshot/model/IObject;
    if-eqz v5, :cond_2

    .line 280
    invoke-interface {v5}, Lorg/eclipse/mat/snapshot/model/IObject;->getObjectAddress()J

    move-result-wide v10

    invoke-virtual {p0, v7, v10, v11, v4}, Lorg/eclipse/mat/inspections/CommonNameResolver$ConstructorResolver;->addClassName(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/StringBuilder;)V

    .line 285
    const/16 v9, 0x28

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    const-string v9, "parameterTypes"

    invoke-interface {p1, v9}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #ref:Lorg/eclipse/mat/snapshot/model/IObject;
    check-cast v5, Lorg/eclipse/mat/snapshot/model/IObject;

    .line 287
    .restart local v5       #ref:Lorg/eclipse/mat/snapshot/model/IObject;
    instance-of v9, v5, Lorg/eclipse/mat/snapshot/model/IObjectArray;

    if-eqz v9, :cond_3

    move-object v3, v5

    .line 288
    check-cast v3, Lorg/eclipse/mat/snapshot/model/IObjectArray;

    .line 289
    .local v3, orefa:Lorg/eclipse/mat/snapshot/model/IObjectArray;
    invoke-interface {v3}, Lorg/eclipse/mat/snapshot/model/IObjectArray;->getReferenceArray()[J

    move-result-object v6

    .line 290
    .local v6, refs:[J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v3}, Lorg/eclipse/mat/snapshot/model/IObjectArray;->getLength()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 291
    if-lez v2, :cond_1

    const/16 v9, 0x2c

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    :cond_1
    aget-wide v0, v6, v2

    .line 293
    .local v0, addr:J
    invoke-virtual {p0, v7, v0, v1, v4}, Lorg/eclipse/mat/inspections/CommonNameResolver$ConstructorResolver;->addClassName(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/StringBuilder;)V

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    .end local v0           #addr:J
    .end local v2           #i:I
    .end local v3           #orefa:Lorg/eclipse/mat/snapshot/model/IObjectArray;
    .end local v6           #refs:[J
    :cond_2
    const/4 v9, 0x0

    .line 297
    :goto_1
    return-object v9

    .line 296
    :cond_3
    const/16 v9, 0x29

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1
.end method
