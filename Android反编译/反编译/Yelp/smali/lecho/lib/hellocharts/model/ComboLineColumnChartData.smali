.class public Llecho/lib/hellocharts/model/ComboLineColumnChartData;
.super Llecho/lib/hellocharts/model/AbstractChartData;
.source "ComboLineColumnChartData.java"


# instance fields
.field private columnChartData:Llecho/lib/hellocharts/model/ColumnChartData;

.field private lineChartData:Llecho/lib/hellocharts/model/LineChartData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>()V

    .line 12
    new-instance v0, Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/ColumnChartData;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->columnChartData:Llecho/lib/hellocharts/model/ColumnChartData;

    .line 13
    new-instance v0, Llecho/lib/hellocharts/model/LineChartData;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/LineChartData;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->lineChartData:Llecho/lib/hellocharts/model/LineChartData;

    .line 14
    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/ColumnChartData;Llecho/lib/hellocharts/model/LineChartData;)V
    .locals 0
    .parameter "columnChartData"
    .parameter "lineChartData"

    .prologue
    .line 16
    invoke-direct {p0}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 18
    invoke-virtual {p0, p2}, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->setLineChartData(Llecho/lib/hellocharts/model/LineChartData;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/ComboLineColumnChartData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>(Llecho/lib/hellocharts/model/AbstractChartData;)V

    .line 24
    new-instance v0, Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v1

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/ColumnChartData;-><init>(Llecho/lib/hellocharts/model/ColumnChartData;)V

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 25
    new-instance v0, Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v1

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/LineChartData;-><init>(Llecho/lib/hellocharts/model/LineChartData;)V

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->setLineChartData(Llecho/lib/hellocharts/model/LineChartData;)V

    .line 26
    return-void
.end method

.method public static generateDummyData()Llecho/lib/hellocharts/model/ComboLineColumnChartData;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Llecho/lib/hellocharts/model/ComboLineColumnChartData;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/ComboLineColumnChartData;-><init>()V

    .line 30
    .local v0, data:Llecho/lib/hellocharts/model/ComboLineColumnChartData;
    invoke-static {}, Llecho/lib/hellocharts/model/ColumnChartData;->generateDummyData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 31
    invoke-static {}, Llecho/lib/hellocharts/model/LineChartData;->generateDummyData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->setLineChartData(Llecho/lib/hellocharts/model/LineChartData;)V

    .line 32
    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->columnChartData:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->finish()V

    .line 44
    iget-object v0, p0, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->lineChartData:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/LineChartData;->finish()V

    .line 45
    return-void
.end method

.method public getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->columnChartData:Llecho/lib/hellocharts/model/ColumnChartData;

    return-object v0
.end method

.method public getLineChartData()Llecho/lib/hellocharts/model/LineChartData;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->lineChartData:Llecho/lib/hellocharts/model/LineChartData;

    return-object v0
.end method

.method public setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V
    .locals 1
    .parameter "columnChartData"

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/ColumnChartData;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->columnChartData:Llecho/lib/hellocharts/model/ColumnChartData;

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->columnChartData:Llecho/lib/hellocharts/model/ColumnChartData;

    goto :goto_0
.end method

.method public setLineChartData(Llecho/lib/hellocharts/model/LineChartData;)V
    .locals 1
    .parameter "lineChartData"

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Llecho/lib/hellocharts/model/LineChartData;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/LineChartData;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->lineChartData:Llecho/lib/hellocharts/model/LineChartData;

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->lineChartData:Llecho/lib/hellocharts/model/LineChartData;

    goto :goto_0
.end method

.method public update(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 37
    iget-object v0, p0, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->columnChartData:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/model/ColumnChartData;->update(F)V

    .line 38
    iget-object v0, p0, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->lineChartData:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/model/LineChartData;->update(F)V

    .line 39
    return-void
.end method
