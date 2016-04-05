.class public Llecho/lib/hellocharts/model/ColumnChartData;
.super Llecho/lib/hellocharts/model/AbstractChartData;
.source "ColumnChartData.java"


# static fields
.field public static final DEFAULT_BASE_VALUE:F = 0.0f

.field public static final DEFAULT_FILL_RATIO:F = 0.75f


# instance fields
.field private baseValue:F

.field private columns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/Column;",
            ">;"
        }
    .end annotation
.end field

.field private fillRatio:F

.field private isStacked:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>()V

    .line 15
    const/high16 v0, 0x3f40

    iput v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->fillRatio:F

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->baseValue:F

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->columns:Ljava/util/List;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked:Z

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
            "Llecho/lib/hellocharts/model/Column;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, columns:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/Column;>;"
    invoke-direct {p0}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>()V

    .line 15
    const/high16 v0, 0x3f40

    iput v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->fillRatio:F

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->baseValue:F

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->columns:Ljava/util/List;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked:Z

    .line 24
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/ColumnChartData;->setColumns(Ljava/util/List;)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 25
    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/ColumnChartData;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>(Llecho/lib/hellocharts/model/AbstractChartData;)V

    .line 15
    const/high16 v2, 0x3f40

    iput v2, p0, Llecho/lib/hellocharts/model/ColumnChartData;->fillRatio:F

    .line 16
    const/4 v2, 0x0

    iput v2, p0, Llecho/lib/hellocharts/model/ColumnChartData;->baseValue:F

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Llecho/lib/hellocharts/model/ColumnChartData;->columns:Ljava/util/List;

    .line 18
    const/4 v2, 0x0

    iput-boolean v2, p0, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked:Z

    .line 32
    iget-boolean v2, p1, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked:Z

    iput-boolean v2, p0, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked:Z

    .line 33
    iget v2, p1, Llecho/lib/hellocharts/model/ColumnChartData;->fillRatio:F

    iput v2, p0, Llecho/lib/hellocharts/model/ColumnChartData;->fillRatio:F

    .line 35
    iget-object v2, p1, Llecho/lib/hellocharts/model/ColumnChartData;->columns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/Column;

    .line 36
    .local v0, column:Llecho/lib/hellocharts/model/Column;
    iget-object v2, p0, Llecho/lib/hellocharts/model/ColumnChartData;->columns:Ljava/util/List;

    new-instance v3, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v3, v0}, Llecho/lib/hellocharts/model/Column;-><init>(Llecho/lib/hellocharts/model/Column;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    .end local v0           #column:Llecho/lib/hellocharts/model/Column;
    :cond_0
    return-void
.end method

.method public static generateDummyData()Llecho/lib/hellocharts/model/ColumnChartData;
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 41
    const/4 v4, 0x4

    .line 42
    .local v4, numColumns:I
    new-instance v2, Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-direct {v2}, Llecho/lib/hellocharts/model/ColumnChartData;-><init>()V

    .line 43
    .local v2, data:Llecho/lib/hellocharts/model/ColumnChartData;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .local v1, columns:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/Column;>;"
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    if-gt v3, v8, :cond_0

    .line 47
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .local v5, values:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/SubcolumnValue;>;"
    new-instance v6, Llecho/lib/hellocharts/model/SubcolumnValue;

    int-to-float v7, v3

    invoke-direct {v6, v7}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(F)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v0, v5}, Llecho/lib/hellocharts/model/Column;-><init>(Ljava/util/List;)V

    .line 50
    .local v0, column:Llecho/lib/hellocharts/model/Column;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    .end local v0           #column:Llecho/lib/hellocharts/model/Column;
    .end local v5           #values:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/SubcolumnValue;>;"
    :cond_0
    invoke-virtual {v2, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setColumns(Ljava/util/List;)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 54
    return-object v2
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 67
    iget-object v2, p0, Llecho/lib/hellocharts/model/ColumnChartData;->columns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/Column;

    .line 68
    .local v0, column:Llecho/lib/hellocharts/model/Column;
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Column;->finish()V

    goto :goto_0

    .line 70
    .end local v0           #column:Llecho/lib/hellocharts/model/Column;
    :cond_0
    return-void
.end method

.method public getBaseValue()F
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->baseValue:F

    return v0
.end method

.method public getColumns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/Column;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->columns:Ljava/util/List;

    return-object v0
.end method

.method public getFillRatio()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->fillRatio:F

    return v0
.end method

.method public isStacked()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked:Z

    return v0
.end method

.method public setBaseValue(F)Llecho/lib/hellocharts/model/ColumnChartData;
    .locals 0
    .parameter "baseValue"

    .prologue
    .line 133
    iput p1, p0, Llecho/lib/hellocharts/model/ColumnChartData;->baseValue:F

    .line 134
    return-object p0
.end method

.method public setColumns(Ljava/util/List;)Llecho/lib/hellocharts/model/ColumnChartData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/Column;",
            ">;)",
            "Llecho/lib/hellocharts/model/ColumnChartData;"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, columns:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/Column;>;"
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->columns:Ljava/util/List;

    .line 82
    :goto_0
    return-object p0

    .line 80
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/model/ColumnChartData;->columns:Ljava/util/List;

    goto :goto_0
.end method

.method public setFillRatio(F)Llecho/lib/hellocharts/model/ColumnChartData;
    .locals 1
    .parameter "fillRatio"

    .prologue
    .line 112
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 113
    const/4 p1, 0x0

    .line 115
    :cond_0
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 116
    const/high16 p1, 0x3f80

    .line 118
    :cond_1
    iput p1, p0, Llecho/lib/hellocharts/model/ColumnChartData;->fillRatio:F

    .line 119
    return-object p0
.end method

.method public setStacked(Z)Llecho/lib/hellocharts/model/ColumnChartData;
    .locals 0
    .parameter "isStacked"

    .prologue
    .line 96
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked:Z

    .line 97
    return-object p0
.end method

.method public update(F)V
    .locals 3
    .parameter "scale"

    .prologue
    .line 59
    iget-object v2, p0, Llecho/lib/hellocharts/model/ColumnChartData;->columns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/Column;

    .line 60
    .local v0, column:Llecho/lib/hellocharts/model/Column;
    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/model/Column;->update(F)V

    goto :goto_0

    .line 63
    .end local v0           #column:Llecho/lib/hellocharts/model/Column;
    :cond_0
    return-void
.end method
