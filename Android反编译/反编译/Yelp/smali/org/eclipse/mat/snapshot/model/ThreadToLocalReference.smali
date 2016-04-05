.class public Lorg/eclipse/mat/snapshot/model/ThreadToLocalReference;
.super Lorg/eclipse/mat/snapshot/model/PseudoReference;
.source "ThreadToLocalReference.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private gcRootInfo:[Lorg/eclipse/mat/snapshot/model/GCRootInfo;

.field private localObjectId:I


# direct methods
.method public constructor <init>(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/String;I[Lorg/eclipse/mat/snapshot/model/GCRootInfo;)V
    .locals 0
    .parameter "snapshot"
    .parameter "address"
    .parameter "name"
    .parameter "localObjectId"
    .parameter "gcRootInfo"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/mat/snapshot/model/PseudoReference;-><init>(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/String;)V

    .line 30
    iput p5, p0, Lorg/eclipse/mat/snapshot/model/ThreadToLocalReference;->localObjectId:I

    .line 31
    iput-object p6, p0, Lorg/eclipse/mat/snapshot/model/ThreadToLocalReference;->gcRootInfo:[Lorg/eclipse/mat/snapshot/model/GCRootInfo;

    .line 32
    return-void
.end method


# virtual methods
.method public getGcRootInfo()[Lorg/eclipse/mat/snapshot/model/GCRootInfo;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/model/ThreadToLocalReference;->gcRootInfo:[Lorg/eclipse/mat/snapshot/model/GCRootInfo;

    return-object v0
.end method

.method public getObjectId()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lorg/eclipse/mat/snapshot/model/ThreadToLocalReference;->localObjectId:I

    return v0
.end method
