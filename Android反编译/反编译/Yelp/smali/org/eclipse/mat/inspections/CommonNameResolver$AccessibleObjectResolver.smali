.class public Lorg/eclipse/mat/inspections/CommonNameResolver$AccessibleObjectResolver;
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
    name = "AccessibleObjectResolver"
.end annotation

.annotation runtime Lorg/eclipse/mat/snapshot/extension/Subject;
    value = "java.lang.reflect.AccessibleObject"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected addClassName(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/StringBuilder;)V
    .locals 4
    .parameter "snapshot"
    .parameter "addr"
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-interface {p1, p2, p3}, Lorg/eclipse/mat/snapshot/ISnapshot;->mapAddressToId(J)I

    move-result v1

    .line 166
    .local v1, id:I
    invoke-interface {p1, v1}, Lorg/eclipse/mat/snapshot/ISnapshot;->getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v2

    .line 167
    .local v2, ox:Lorg/eclipse/mat/snapshot/model/IObject;
    instance-of v3, v2, Lorg/eclipse/mat/snapshot/model/IClass;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 168
    check-cast v0, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 169
    .local v0, cls:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {v0}, Lorg/eclipse/mat/snapshot/model/IClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .end local v0           #cls:Lorg/eclipse/mat/snapshot/model/IClass;
    :cond_0
    return-void
.end method

.method public resolve(Lorg/eclipse/mat/snapshot/model/IObject;)Ljava/lang/String;
    .locals 6
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v0, r:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lorg/eclipse/mat/snapshot/model/IObject;->getSnapshot()Lorg/eclipse/mat/snapshot/ISnapshot;

    move-result-object v2

    .line 149
    .local v2, snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;
    const-string v4, "modifiers"

    invoke-interface {p1, v4}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 150
    .local v3, val:Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 151
    check-cast v3, Ljava/lang/Integer;

    .end local v3           #val:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    :cond_0
    const-string v4, "clazz"

    invoke-interface {p1, v4}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/mat/snapshot/model/IObject;

    .line 155
    .local v1, ref:Lorg/eclipse/mat/snapshot/model/IObject;
    if-eqz v1, :cond_1

    .line 156
    invoke-interface {v1}, Lorg/eclipse/mat/snapshot/model/IObject;->getObjectAddress()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5, v0}, Lorg/eclipse/mat/inspections/CommonNameResolver$AccessibleObjectResolver;->addClassName(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/StringBuilder;)V

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    .line 158
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
