.class public Lorg/eclipse/mat/inspections/CommonNameResolver$FieldResolver;
.super Lorg/eclipse/mat/inspections/CommonNameResolver$AccessibleObjectResolver;
.source "CommonNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/inspections/CommonNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldResolver"
.end annotation

.annotation runtime Lorg/eclipse/mat/snapshot/extension/Subject;
    value = "java.lang.reflect.Field"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lorg/eclipse/mat/inspections/CommonNameResolver$AccessibleObjectResolver;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Lorg/eclipse/mat/snapshot/model/IObject;)Ljava/lang/String;
    .locals 7
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v0, r:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lorg/eclipse/mat/snapshot/model/IObject;->getSnapshot()Lorg/eclipse/mat/snapshot/ISnapshot;

    move-result-object v2

    .line 185
    .local v2, snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;
    const-string v4, "modifiers"

    invoke-interface {p1, v4}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 186
    .local v3, val:Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 187
    check-cast v3, Ljava/lang/Integer;

    .end local v3           #val:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    :cond_0
    const-string v4, "type"

    invoke-interface {p1, v4}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/mat/snapshot/model/IObject;

    .line 191
    .local v1, ref:Lorg/eclipse/mat/snapshot/model/IObject;
    if-eqz v1, :cond_1

    .line 192
    invoke-interface {v1}, Lorg/eclipse/mat/snapshot/model/IObject;->getObjectAddress()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5, v0}, Lorg/eclipse/mat/inspections/CommonNameResolver$FieldResolver;->addClassName(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/StringBuilder;)V

    .line 193
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    :cond_1
    const-string v4, "clazz"

    invoke-interface {p1, v4}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ref:Lorg/eclipse/mat/snapshot/model/IObject;
    check-cast v1, Lorg/eclipse/mat/snapshot/model/IObject;

    .line 196
    .restart local v1       #ref:Lorg/eclipse/mat/snapshot/model/IObject;
    if-eqz v1, :cond_2

    .line 197
    invoke-interface {v1}, Lorg/eclipse/mat/snapshot/model/IObject;->getObjectAddress()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5, v0}, Lorg/eclipse/mat/inspections/CommonNameResolver$FieldResolver;->addClassName(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/StringBuilder;)V

    .line 198
    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    :cond_2
    const-string v4, "name"

    invoke-interface {p1, v4}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ref:Lorg/eclipse/mat/snapshot/model/IObject;
    check-cast v1, Lorg/eclipse/mat/snapshot/model/IObject;

    .line 201
    .restart local v1       #ref:Lorg/eclipse/mat/snapshot/model/IObject;
    if-eqz v1, :cond_3

    .line 202
    invoke-interface {v1}, Lorg/eclipse/mat/snapshot/model/IObject;->getClassSpecificName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    .line 205
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method
