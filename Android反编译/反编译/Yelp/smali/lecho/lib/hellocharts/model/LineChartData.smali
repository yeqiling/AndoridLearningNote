.class public Llecho/lib/hellocharts/model/LineChartData;
.super Llecho/lib/hellocharts/model/AbstractChartData;
.source "LineChartData.java"


# static fields
.field public static final DEFAULT_BASE_VALUE:F


# instance fields
.field private baseValue:F

.field protected imgRadius:F

.field private lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/Line;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/LineChartData;->lines:Ljava/util/List;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Llecho/lib/hellocharts/model/LineChartData;->baseValue:F

    .line 17
    const/high16 v0, 0x4170

    iput v0, p0, Llecho/lib/hellocharts/model/LineChartData;->imgRadius:F

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/Line;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, lines:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/Line;>;"
    invoke-direct {p0}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/LineChartData;->lines:Ljava/util/List;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Llecho/lib/hellocharts/model/LineChartData;->baseValue:F

    .line 17
    const/high16 v0, 0x4170

    iput v0, p0, Llecho/lib/hellocharts/model/LineChartData;->imgRadius:F

    .line 24
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/LineChartData;->setLines(Ljava/util/List;)Llecho/lib/hellocharts/model/LineChartData;

    .line 25
    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/LineChartData;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>(Llecho/lib/hellocharts/model/AbstractChartData;)V

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Llecho/lib/hellocharts/model/LineChartData;->lines:Ljava/util/List;

    .line 13
    const/4 v2, 0x0

    iput v2, p0, Llecho/lib/hellocharts/model/LineChartData;->baseValue:F

    .line 17
    const/high16 v2, 0x4170

    iput v2, p0, Llecho/lib/hellocharts/model/LineChartData;->imgRadius:F

    .line 32
    iget v2, p1, Llecho/lib/hellocharts/model/LineChartData;->baseValue:F

    iput v2, p0, Llecho/lib/hellocharts/model/LineChartData;->baseValue:F

    .line 34
    iget-object v2, p1, Llecho/lib/hellocharts/model/LineChartData;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/Line;

    .line 35
    .local v1, line:Llecho/lib/hellocharts/model/Line;
    iget-object v2, p0, Llecho/lib/hellocharts/model/LineChartData;->lines:Ljava/util/List;

    new-instance v3, Llecho/lib/hellocharts/model/Line;

    invoke-direct {v3, v1}, Llecho/lib/hellocharts/model/Line;-><init>(Llecho/lib/hellocharts/model/Line;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    .end local v1           #line:Llecho/lib/hellocharts/model/Line;
    :cond_0
    return-void
.end method

.method public static generateDummyData()Llecho/lib/hellocharts/model/LineChartData;
    .locals 10

    .prologue
    const/high16 v9, 0x4080

    const/high16 v8, 0x4040

    const/high16 v7, 0x4000

    .line 40
    const/4 v3, 0x4

    .line 41
    .local v3, numValues:I
    new-instance v0, Llecho/lib/hellocharts/model/LineChartData;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/LineChartData;-><init>()V

    .line 42
    .local v0, data:Llecho/lib/hellocharts/model/LineChartData;
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .local v4, values:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/PointValue;>;"
    new-instance v5, Llecho/lib/hellocharts/model/PointValue;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v7}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v5, Llecho/lib/hellocharts/model/PointValue;

    const/high16 v6, 0x3f80

    invoke-direct {v5, v6, v9}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v5, Llecho/lib/hellocharts/model/PointValue;

    invoke-direct {v5, v7, v8}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v5, Llecho/lib/hellocharts/model/PointValue;

    invoke-direct {v5, v8, v9}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Llecho/lib/hellocharts/model/Line;

    invoke-direct {v1, v4}, Llecho/lib/hellocharts/model/Line;-><init>(Ljava/util/List;)V

    .line 48
    .local v1, line:Llecho/lib/hellocharts/model/Line;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .local v2, lines:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/Line;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/LineChartData;->setLines(Ljava/util/List;)Llecho/lib/hellocharts/model/LineChartData;

    .line 51
    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 63
    iget-object v2, p0, Llecho/lib/hellocharts/model/LineChartData;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/Line;

    .line 64
    .local v1, line:Llecho/lib/hellocharts/model/Line;
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Line;->finish()V

    goto :goto_0

    .line 66
    .end local v1           #line:Llecho/lib/hellocharts/model/Line;
    :cond_0
    return-void
.end method

.method public getBaseValue()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Llecho/lib/hellocharts/model/LineChartData;->baseValue:F

    return v0
.end method

.method public getImgRadius()F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Llecho/lib/hellocharts/model/LineChartData;->imgRadius:F

    return v0
.end method

.method public getLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/Line;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Llecho/lib/hellocharts/model/LineChartData;->lines:Ljava/util/List;

    return-object v0
.end method

.method public setBaseValue(F)Llecho/lib/hellocharts/model/LineChartData;
    .locals 0
    .parameter "baseValue"

    .prologue
    .line 93
    iput p1, p0, Llecho/lib/hellocharts/model/LineChartData;->baseValue:F

    .line 94
    return-object p0
.end method

.method public setImgRadius(F)V
    .locals 0
    .parameter "imgRadius"

    .prologue
    .line 102
    iput p1, p0, Llecho/lib/hellocharts/model/LineChartData;->imgRadius:F

    .line 103
    return-void
.end method

.method public setLines(Ljava/util/List;)Llecho/lib/hellocharts/model/LineChartData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/Line;",
            ">;)",
            "Llecho/lib/hellocharts/model/LineChartData;"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, lines:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/Line;>;"
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/LineChartData;->lines:Ljava/util/List;

    .line 78
    :goto_0
    return-object p0

    .line 76
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/model/LineChartData;->lines:Ljava/util/List;

    goto :goto_0
.end method

.method public update(F)V
    .locals 3
    .parameter "scale"

    .prologue
    .line 56
    iget-object v2, p0, Llecho/lib/hellocharts/model/LineChartData;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/Line;

    .line 57
    .local v1, line:Llecho/lib/hellocharts/model/Line;
    invoke-virtual {v1, p1}, Llecho/lib/hellocharts/model/Line;->update(F)V

    goto :goto_0

    .line 59
    .end local v1           #line:Llecho/lib/hellocharts/model/Line;
    :cond_0
    return-void
.end method
