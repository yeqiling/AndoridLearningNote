.class public Llecho/lib/hellocharts/model/SelectedValue;
.super Ljava/lang/Object;
.source "SelectedValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llecho/lib/hellocharts/model/SelectedValue$SelectedType;,
        Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;
    }
.end annotation


# instance fields
.field private firstIndex:I

.field private secondIndex:I

.field private selectedType:I

.field private type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->NONE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    iput-object v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    .line 29
    invoke-virtual {p0}, Llecho/lib/hellocharts/model/SelectedValue;->clear()V

    .line 30
    return-void
.end method

.method public constructor <init>(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;)V
    .locals 1
    .parameter "firstIndex"
    .parameter "secondIndex"
    .parameter "type"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->NONE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    iput-object v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Llecho/lib/hellocharts/model/SelectedValue;->set(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;)V

    .line 34
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/high16 v1, -0x8000

    .line 70
    sget-object v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->NONE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-virtual {p0, v1, v1, v0}, Llecho/lib/hellocharts/model/SelectedValue;->set(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;)V

    .line 71
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    if-ne p0, p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v1

    .line 152
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 153
    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 155
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 156
    check-cast v0, Llecho/lib/hellocharts/model/SelectedValue;

    .line 157
    .local v0, other:Llecho/lib/hellocharts/model/SelectedValue;
    iget v3, p0, Llecho/lib/hellocharts/model/SelectedValue;->firstIndex:I

    iget v4, v0, Llecho/lib/hellocharts/model/SelectedValue;->firstIndex:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 158
    goto :goto_0

    .line 159
    :cond_4
    iget v3, p0, Llecho/lib/hellocharts/model/SelectedValue;->secondIndex:I

    iget v4, v0, Llecho/lib/hellocharts/model/SelectedValue;->secondIndex:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 160
    goto :goto_0

    .line 161
    :cond_5
    iget-object v3, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    iget-object v4, v0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 162
    goto :goto_0
.end method

.method public getFirstIndex()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->firstIndex:I

    return v0
.end method

.method public getSecondIndex()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->secondIndex:I

    return v0
.end method

.method public getSelectedType()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->selectedType:I

    return v0
.end method

.method public getType()Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 140
    const/16 v0, 0x1f

    .line 141
    .local v0, prime:I
    const/4 v1, 0x1

    .line 142
    .local v1, result:I
    iget v2, p0, Llecho/lib/hellocharts/model/SelectedValue;->firstIndex:I

    add-int/lit8 v1, v2, 0x1f

    .line 143
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Llecho/lib/hellocharts/model/SelectedValue;->secondIndex:I

    add-int v1, v2, v3

    .line 144
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 145
    return v1

    .line 144
    :cond_0
    iget-object v2, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isSet()Z
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->firstIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->secondIndex:I

    if-ltz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;)V
    .locals 1
    .parameter "firstIndex"
    .parameter "secondIndex"
    .parameter "type"

    .prologue
    .line 37
    iput p1, p0, Llecho/lib/hellocharts/model/SelectedValue;->firstIndex:I

    .line 38
    iput p2, p0, Llecho/lib/hellocharts/model/SelectedValue;->secondIndex:I

    .line 39
    if-eqz p3, :cond_0

    .line 40
    iput-object p3, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    sget-object v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->NONE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    iput-object v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    goto :goto_0
.end method

.method public set(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;I)V
    .locals 1
    .parameter "firstIndex"
    .parameter "secondIndex"
    .parameter "type"
    .parameter "selectedType"

    .prologue
    .line 47
    iput p1, p0, Llecho/lib/hellocharts/model/SelectedValue;->firstIndex:I

    .line 48
    iput p2, p0, Llecho/lib/hellocharts/model/SelectedValue;->secondIndex:I

    .line 49
    if-eqz p3, :cond_0

    .line 50
    iput-object p3, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    .line 54
    :goto_0
    iput p4, p0, Llecho/lib/hellocharts/model/SelectedValue;->selectedType:I

    .line 57
    return-void

    .line 52
    :cond_0
    sget-object v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->NONE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    iput-object v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    goto :goto_0
.end method

.method public set(Llecho/lib/hellocharts/model/SelectedValue;)V
    .locals 1
    .parameter "selectedValue"

    .prologue
    .line 60
    iget v0, p1, Llecho/lib/hellocharts/model/SelectedValue;->firstIndex:I

    iput v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->firstIndex:I

    .line 61
    iget v0, p1, Llecho/lib/hellocharts/model/SelectedValue;->secondIndex:I

    iput v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->secondIndex:I

    .line 62
    iget-object v0, p1, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    iput-object v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    .line 63
    iget v0, p1, Llecho/lib/hellocharts/model/SelectedValue;->selectedType:I

    iput v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->selectedType:I

    .line 67
    return-void
.end method

.method public setFirstIndex(I)V
    .locals 0
    .parameter "firstIndex"

    .prologue
    .line 92
    iput p1, p0, Llecho/lib/hellocharts/model/SelectedValue;->firstIndex:I

    .line 93
    return-void
.end method

.method public setSecondIndex(I)V
    .locals 0
    .parameter "secondIndex"

    .prologue
    .line 103
    iput p1, p0, Llecho/lib/hellocharts/model/SelectedValue;->secondIndex:I

    .line 104
    return-void
.end method

.method public setSelectedType(I)V
    .locals 0
    .parameter "selectedType"

    .prologue
    .line 119
    iput p1, p0, Llecho/lib/hellocharts/model/SelectedValue;->selectedType:I

    .line 120
    return-void
.end method

.method public setType(Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 111
    iput-object p1, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectedValue [firstIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llecho/lib/hellocharts/model/SelectedValue;->firstIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llecho/lib/hellocharts/model/SelectedValue;->secondIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
