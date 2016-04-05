.class public Lorg/eclipse/mat/snapshot/model/NamedReference;
.super Lorg/eclipse/mat/snapshot/model/ObjectReference;
.source "NamedReference.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/String;)V
    .locals 0
    .parameter "snapshot"
    .parameter "address"
    .parameter "name"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/mat/snapshot/model/ObjectReference;-><init>(Lorg/eclipse/mat/snapshot/ISnapshot;J)V

    .line 27
    iput-object p4, p0, Lorg/eclipse/mat/snapshot/model/NamedReference;->name:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/model/NamedReference;->name:Ljava/lang/String;

    return-object v0
.end method
