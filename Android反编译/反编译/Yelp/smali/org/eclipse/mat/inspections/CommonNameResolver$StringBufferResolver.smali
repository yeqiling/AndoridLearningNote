.class public Lorg/eclipse/mat/inspections/CommonNameResolver$StringBufferResolver;
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
    name = "StringBufferResolver"
.end annotation

.annotation runtime Lorg/eclipse/mat/snapshot/extension/Subjects;
    value = {
        "java.lang.StringBuffer",
        "java.lang.StringBuilder"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Lorg/eclipse/mat/snapshot/model/IObject;)Ljava/lang/String;
    .locals 5
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 40
    const-string v3, "count"

    invoke-interface {p1, v3}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 41
    .local v1, count:Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-object v2

    .line 42
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    const-string v2, ""

    goto :goto_0

    .line 44
    :cond_2
    const-string v3, "value"

    invoke-interface {p1, v3}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;

    .line 45
    .local v0, charArray:Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;
    if-eqz v0, :cond_0

    .line 47
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x400

    invoke-static {v0, v2, v3, v4}, Lorg/eclipse/mat/snapshot/model/PrettyPrinter;->arrayAsString(Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;III)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
