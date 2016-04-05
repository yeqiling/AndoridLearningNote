.class public Lorg/eclipse/mat/snapshot/model/PseudoReference;
.super Lorg/eclipse/mat/snapshot/model/NamedReference;
.source "PseudoReference.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/String;)V
    .locals 0
    .parameter "snapshot"
    .parameter "address"
    .parameter "name"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/mat/snapshot/model/NamedReference;-><init>(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/String;)V

    .line 28
    return-void
.end method
