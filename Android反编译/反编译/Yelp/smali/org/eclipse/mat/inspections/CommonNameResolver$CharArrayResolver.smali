.class public Lorg/eclipse/mat/inspections/CommonNameResolver$CharArrayResolver;
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
    name = "CharArrayResolver"
.end annotation

.annotation runtime Lorg/eclipse/mat/snapshot/extension/Subject;
    value = "char[]"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Lorg/eclipse/mat/snapshot/model/IObject;)Ljava/lang/String;
    .locals 4
    .parameter "heapObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p1

    check-cast v0, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;

    .line 86
    .local v0, charArray:Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;
    const/4 v1, 0x0

    invoke-interface {v0}, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->getLength()I

    move-result v2

    const/16 v3, 0x400

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/mat/snapshot/model/PrettyPrinter;->arrayAsString(Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;III)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
