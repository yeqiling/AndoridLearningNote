.class public Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;
.super Ljava/lang/Object;
.source "IHprofParserHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/hprof/IHprofParserHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeapObject"
.end annotation


# instance fields
.field public clazz:Lorg/eclipse/mat/parser/model/ClassImpl;

.field public isArray:Z

.field public objectAddress:J

.field public objectId:I

.field public references:Lorg/eclipse/mat/collect/ArrayLong;

.field public usedHeapSize:I


# direct methods
.method public constructor <init>(IJLorg/eclipse/mat/parser/model/ClassImpl;I)V
    .locals 2
    .parameter "objectId"
    .parameter "objectAddress"
    .parameter "clazz"
    .parameter "usedHeapSize"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/eclipse/mat/collect/ArrayLong;

    invoke-direct {v0}, Lorg/eclipse/mat/collect/ArrayLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->references:Lorg/eclipse/mat/collect/ArrayLong;

    .line 38
    iput-boolean v1, p0, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->isArray:Z

    .line 42
    iput p1, p0, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->objectId:I

    .line 43
    iput-wide p2, p0, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->objectAddress:J

    .line 44
    iput-object p4, p0, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->clazz:Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 45
    iput p5, p0, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->usedHeapSize:I

    .line 46
    iput-boolean v1, p0, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->isArray:Z

    .line 47
    return-void
.end method
