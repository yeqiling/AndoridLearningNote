.class public final Lorg/eclipse/mat/parser/model/XGCRootInfo;
.super Lorg/eclipse/mat/snapshot/model/GCRootInfo;
.source "XGCRootInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(JJI)V
    .locals 1
    .parameter "objectAddress"
    .parameter "contextAddress"
    .parameter "type"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p5}, Lorg/eclipse/mat/snapshot/model/GCRootInfo;-><init>(JJI)V

    .line 22
    return-void
.end method


# virtual methods
.method public setContextId(I)V
    .locals 0
    .parameter "objectId"

    .prologue
    .line 29
    iput p1, p0, Lorg/eclipse/mat/parser/model/XGCRootInfo;->contextId:I

    .line 30
    return-void
.end method

.method public setObjectId(I)V
    .locals 0
    .parameter "objectId"

    .prologue
    .line 25
    iput p1, p0, Lorg/eclipse/mat/parser/model/XGCRootInfo;->objectId:I

    .line 26
    return-void
.end method
