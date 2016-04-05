.class Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;
.super Ljava/lang/Object;
.source "Pass1Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/hprof/Pass1Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JavaLocal"
.end annotation


# instance fields
.field final lineNumber:I

.field final objectId:J

.field final type:I


# direct methods
.method public constructor <init>(JII)V
    .locals 1
    .parameter "objectId"
    .parameter "lineNumber"
    .parameter "type"

    .prologue
    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    iput-wide p1, p0, Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;->objectId:J

    .line 629
    iput p3, p0, Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;->lineNumber:I

    .line 630
    iput p4, p0, Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;->type:I

    .line 631
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Lorg/eclipse/mat/hprof/Pass1Parser$JavaLocal;->type:I

    return v0
.end method
