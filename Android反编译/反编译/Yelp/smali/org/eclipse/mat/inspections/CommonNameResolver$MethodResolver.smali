.class public Lorg/eclipse/mat/inspections/CommonNameResolver$MethodResolver;
.super Lorg/eclipse/mat/inspections/CommonNameResolver$AccessibleObjectResolver;
.source "CommonNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/inspections/CommonNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodResolver"
.end annotation

.annotation runtime Lorg/eclipse/mat/snapshot/extension/Subject;
    value = "java.lang.reflect.Method"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Lorg/eclipse/mat/inspections/CommonNameResolver$AccessibleObjectResolver;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Lorg/eclipse/mat/snapshot/model/IObject;)Ljava/lang/String;
    .locals 13
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x20

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v4, r:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lorg/eclipse/mat/snapshot/model/IObject;->getSnapshot()Lorg/eclipse/mat/snapshot/ISnapshot;

    move-result-object v7

    .line 224
    .local v7, snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;
    const-string v9, "modifiers"

    invoke-interface {p1, v9}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 225
    .local v8, val:Ljava/lang/Object;
    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_0

    .line 226
    check-cast v8, Ljava/lang/Integer;

    .end local v8           #val:Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    :cond_0
    const-string v9, "returnType"

    invoke-interface {p1, v9}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/mat/snapshot/model/IObject;

    .line 230
    .local v5, ref:Lorg/eclipse/mat/snapshot/model/IObject;
    if-eqz v5, :cond_1

    .line 231
    invoke-interface {v5}, Lorg/eclipse/mat/snapshot/model/IObject;->getObjectAddress()J

    move-result-wide v10

    invoke-virtual {p0, v7, v10, v11, v4}, Lorg/eclipse/mat/inspections/CommonNameResolver$MethodResolver;->addClassName(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/StringBuilder;)V

    .line 232
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    :cond_1
    const-string v9, "clazz"

    invoke-interface {p1, v9}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #ref:Lorg/eclipse/mat/snapshot/model/IObject;
    check-cast v5, Lorg/eclipse/mat/snapshot/model/IObject;

    .line 235
    .restart local v5       #ref:Lorg/eclipse/mat/snapshot/model/IObject;
    if-eqz v5, :cond_2

    .line 236
    invoke-interface {v5}, Lorg/eclipse/mat/snapshot/model/IObject;->getObjectAddress()J

    move-result-wide v10

    invoke-virtual {p0, v7, v10, v11, v4}, Lorg/eclipse/mat/inspections/CommonNameResolver$MethodResolver;->addClassName(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/StringBuilder;)V

    .line 237
    const/16 v9, 0x2e

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    :cond_2
    const-string v9, "name"

    invoke-interface {p1, v9}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #ref:Lorg/eclipse/mat/snapshot/model/IObject;
    check-cast v5, Lorg/eclipse/mat/snapshot/model/IObject;

    .line 240
    .restart local v5       #ref:Lorg/eclipse/mat/snapshot/model/IObject;
    if-eqz v5, :cond_4

    .line 241
    invoke-interface {v5}, Lorg/eclipse/mat/snapshot/model/IObject;->getClassSpecificName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const/16 v9, 0x28

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    const-string v9, "parameterTypes"

    invoke-interface {p1, v9}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #ref:Lorg/eclipse/mat/snapshot/model/IObject;
    check-cast v5, Lorg/eclipse/mat/snapshot/model/IObject;

    .line 248
    .restart local v5       #ref:Lorg/eclipse/mat/snapshot/model/IObject;
    instance-of v9, v5, Lorg/eclipse/mat/snapshot/model/IObjectArray;

    if-eqz v9, :cond_5

    move-object v3, v5

    .line 249
    check-cast v3, Lorg/eclipse/mat/snapshot/model/IObjectArray;

    .line 250
    .local v3, orefa:Lorg/eclipse/mat/snapshot/model/IObjectArray;
    invoke-interface {v3}, Lorg/eclipse/mat/snapshot/model/IObjectArray;->getReferenceArray()[J

    move-result-object v6

    .line 251
    .local v6, refs:[J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v3}, Lorg/eclipse/mat/snapshot/model/IObjectArray;->getLength()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 252
    if-lez v2, :cond_3

    const/16 v9, 0x2c

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    :cond_3
    aget-wide v0, v6, v2

    .line 254
    .local v0, addr:J
    invoke-virtual {p0, v7, v0, v1, v4}, Lorg/eclipse/mat/inspections/CommonNameResolver$MethodResolver;->addClassName(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/StringBuilder;)V

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v0           #addr:J
    .end local v2           #i:I
    .end local v3           #orefa:Lorg/eclipse/mat/snapshot/model/IObjectArray;
    .end local v6           #refs:[J
    :cond_4
    const/4 v9, 0x0

    .line 258
    :goto_1
    return-object v9

    .line 257
    :cond_5
    const/16 v9, 0x29

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1
.end method
