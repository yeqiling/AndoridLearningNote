.class public Lorg/eclipse/mat/inspections/CommonNameResolver$StringResolver;
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
    name = "StringResolver"
.end annotation

.annotation runtime Lorg/eclipse/mat/snapshot/extension/Subject;
    value = "java.lang.String"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Lorg/eclipse/mat/snapshot/model/IObject;)Ljava/lang/String;
    .locals 1
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 31
    const/16 v0, 0x400

    invoke-static {p1, v0}, Lorg/eclipse/mat/snapshot/model/PrettyPrinter;->objectAsString(Lorg/eclipse/mat/snapshot/model/IObject;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
