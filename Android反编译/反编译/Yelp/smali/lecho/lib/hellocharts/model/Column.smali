.class public Llecho/lib/hellocharts/model/Column;
.super Ljava/lang/Object;
.source "Column.java"


# instance fields
.field private formatter:Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;

.field private hasLabels:Z

.field private hasLabelsOnlyForSelected:Z

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/SubcolumnValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Column;->hasLabels:Z

    .line 19
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Column;->hasLabelsOnlyForSelected:Z

    .line 20
    new-instance v0, Llecho/lib/hellocharts/formatter/SimpleColumnChartValueFormatter;

    invoke-direct {v0}, Llecho/lib/hellocharts/formatter/SimpleColumnChartValueFormatter;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Column;->formatter:Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Column;->values:Ljava/util/List;

    .line 26
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
            "Llecho/lib/hellocharts/model/SubcolumnValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/SubcolumnValue;>;"
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Column;->hasLabels:Z

    .line 19
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Column;->hasLabelsOnlyForSelected:Z

    .line 20
    new-instance v0, Llecho/lib/hellocharts/formatter/SimpleColumnChartValueFormatter;

    invoke-direct {v0}, Llecho/lib/hellocharts/formatter/SimpleColumnChartValueFormatter;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Column;->formatter:Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Column;->values:Ljava/util/List;

    .line 29
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/Column;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Column;

    .line 30
    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/Column;)V
    .locals 4
    .parameter "column"

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v2, p0, Llecho/lib/hellocharts/model/Column;->hasLabels:Z

    .line 19
    iput-boolean v2, p0, Llecho/lib/hellocharts/model/Column;->hasLabelsOnlyForSelected:Z

    .line 20
    new-instance v2, Llecho/lib/hellocharts/formatter/SimpleColumnChartValueFormatter;

    invoke-direct {v2}, Llecho/lib/hellocharts/formatter/SimpleColumnChartValueFormatter;-><init>()V

    iput-object v2, p0, Llecho/lib/hellocharts/model/Column;->formatter:Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Llecho/lib/hellocharts/model/Column;->values:Ljava/util/List;

    .line 33
    iget-boolean v2, p1, Llecho/lib/hellocharts/model/Column;->hasLabels:Z

    iput-boolean v2, p0, Llecho/lib/hellocharts/model/Column;->hasLabels:Z

    .line 34
    iget-boolean v2, p1, Llecho/lib/hellocharts/model/Column;->hasLabelsOnlyForSelected:Z

    iput-boolean v2, p0, Llecho/lib/hellocharts/model/Column;->hasLabelsOnlyForSelected:Z

    .line 35
    iget-object v2, p1, Llecho/lib/hellocharts/model/Column;->formatter:Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;

    iput-object v2, p0, Llecho/lib/hellocharts/model/Column;->formatter:Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;

    .line 37
    iget-object v2, p1, Llecho/lib/hellocharts/model/Column;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 38
    .local v0, columnValue:Llecho/lib/hellocharts/model/SubcolumnValue;
    iget-object v2, p0, Llecho/lib/hellocharts/model/Column;->values:Ljava/util/List;

    new-instance v3, Llecho/lib/hellocharts/model/SubcolumnValue;

    invoke-direct {v3, v0}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(Llecho/lib/hellocharts/model/SubcolumnValue;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    .end local v0           #columnValue:Llecho/lib/hellocharts/model/SubcolumnValue;
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 50
    iget-object v2, p0, Llecho/lib/hellocharts/model/Column;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 51
    .local v1, value:Llecho/lib/hellocharts/model/SubcolumnValue;
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->finish()V

    goto :goto_0

    .line 53
    .end local v1           #value:Llecho/lib/hellocharts/model/SubcolumnValue;
    :cond_0
    return-void
.end method

.method public getFormatter()Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Llecho/lib/hellocharts/model/Column;->formatter:Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/SubcolumnValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Llecho/lib/hellocharts/model/Column;->values:Ljava/util/List;

    return-object v0
.end method

.method public hasLabels()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Column;->hasLabels:Z

    return v0
.end method

.method public hasLabelsOnlyForSelected()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Column;->hasLabelsOnlyForSelected:Z

    return v0
.end method

.method public setFormatter(Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;)Llecho/lib/hellocharts/model/Column;
    .locals 0
    .parameter "formatter"

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    iput-object p1, p0, Llecho/lib/hellocharts/model/Column;->formatter:Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;

    .line 107
    :cond_0
    return-object p0
.end method

.method public setHasLabels(Z)Llecho/lib/hellocharts/model/Column;
    .locals 1
    .parameter "hasLabels"

    .prologue
    .line 73
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Column;->hasLabels:Z

    .line 74
    if-eqz p1, :cond_0

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Column;->hasLabelsOnlyForSelected:Z

    .line 77
    :cond_0
    return-object p0
.end method

.method public setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/Column;
    .locals 1
    .parameter "hasLabelsOnlyForSelected"

    .prologue
    .line 92
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Column;->hasLabelsOnlyForSelected:Z

    .line 93
    if-eqz p1, :cond_0

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Column;->hasLabels:Z

    .line 96
    :cond_0
    return-object p0
.end method

.method public setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Column;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/SubcolumnValue;",
            ">;)",
            "Llecho/lib/hellocharts/model/Column;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/SubcolumnValue;>;"
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Column;->values:Ljava/util/List;

    .line 65
    :goto_0
    return-object p0

    .line 63
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/model/Column;->values:Ljava/util/List;

    goto :goto_0
.end method

.method public update(F)V
    .locals 3
    .parameter "scale"

    .prologue
    .line 43
    iget-object v2, p0, Llecho/lib/hellocharts/model/Column;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 44
    .local v1, value:Llecho/lib/hellocharts/model/SubcolumnValue;
    invoke-virtual {v1, p1}, Llecho/lib/hellocharts/model/SubcolumnValue;->update(F)V

    goto :goto_0

    .line 47
    .end local v1           #value:Llecho/lib/hellocharts/model/SubcolumnValue;
    :cond_0
    return-void
.end method
