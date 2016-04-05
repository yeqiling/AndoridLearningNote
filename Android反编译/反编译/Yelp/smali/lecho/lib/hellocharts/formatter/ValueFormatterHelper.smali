.class public Llecho/lib/hellocharts/formatter/ValueFormatterHelper;
.super Ljava/lang/Object;
.source "ValueFormatterHelper.java"


# static fields
.field public static final DEFAULT_DIGITS_NUMBER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ValueFormatterHelper"


# instance fields
.field private appendedText:[C

.field private decimalDigitsNumber:I

.field private decimalSeparator:C

.field private prependedText:[C


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/high16 v0, -0x8000

    iput v0, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->decimalDigitsNumber:I

    .line 16
    new-array v0, v1, [C

    iput-object v0, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->appendedText:[C

    .line 17
    new-array v0, v1, [C

    iput-object v0, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->prependedText:[C

    .line 18
    const/16 v0, 0x2e

    iput-char v0, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->decimalSeparator:C

    return-void
.end method


# virtual methods
.method public appendText([C)V
    .locals 4
    .parameter "formattedValue"

    .prologue
    .line 121
    iget-object v0, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->appendedText:[C

    array-length v0, v0

    if-lez v0, :cond_0

    .line 122
    iget-object v0, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->appendedText:[C

    const/4 v1, 0x0

    array-length v2, p1

    iget-object v3, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->appendedText:[C

    array-length v3, v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->appendedText:[C

    array-length v3, v3

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    :cond_0
    return-void
.end method

.method public determineDecimalSeparator()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 22
    .local v0, numberFormat:Ljava/text/NumberFormat;
    instance-of v1, v0, Ljava/text/DecimalFormat;

    if-eqz v1, :cond_0

    .line 23
    check-cast v0, Ljava/text/DecimalFormat;

    .end local v0           #numberFormat:Ljava/text/NumberFormat;
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v1

    iput-char v1, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->decimalSeparator:C

    .line 25
    :cond_0
    return-void
.end method

.method public formatFloatValue([CFI)I
    .locals 2
    .parameter "formattedValue"
    .parameter "value"
    .parameter "decimalDigitsNumber"

    .prologue
    .line 115
    array-length v0, p1

    iget-object v1, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->appendedText:[C

    array-length v1, v1

    sub-int/2addr v0, v1

    iget-char v1, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->decimalSeparator:C

    invoke-static {p1, p2, v0, p3, v1}, Llecho/lib/hellocharts/util/FloatUtils;->formatFloat([CFIIC)I

    move-result v0

    return v0
.end method

.method public formatFloatValueWithPrependedAndAppendedText([CFI)I
    .locals 1
    .parameter "formattedValue"
    .parameter "value"
    .parameter "defaultDigitsNumber"

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->formatFloatValueWithPrependedAndAppendedText([CFI[C)I

    move-result v0

    return v0
.end method

.method public formatFloatValueWithPrependedAndAppendedText([CFI[C)I
    .locals 5
    .parameter "formattedValue"
    .parameter "value"
    .parameter "defaultDigitsNumber"
    .parameter "label"

    .prologue
    .line 80
    if-eqz p4, :cond_1

    .line 83
    array-length v2, p4

    .line 84
    .local v2, labelLength:I
    array-length v3, p1

    if-le v2, v3, :cond_0

    .line 85
    const-string v3, "ValueFormatterHelper"

    const-string v4, "Label length is larger than buffer size(64chars), some chars will be skipped!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    array-length v2, p1

    .line 88
    :cond_0
    const/4 v3, 0x0

    array-length v4, p1

    sub-int/2addr v4, v2

    invoke-static {p4, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    .end local v2           #labelLength:I
    :goto_0
    return v2

    .line 92
    :cond_1
    invoke-virtual {p0, p3}, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->getAppliedDecimalDigitsNumber(I)I

    move-result v0

    .line 93
    .local v0, appliedDigitsNumber:I
    invoke-virtual {p0, p1, p2, v0}, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->formatFloatValue([CFI)I

    move-result v1

    .line 94
    .local v1, charsNumber:I
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->appendText([C)V

    .line 95
    invoke-virtual {p0, p1, v1}, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->prependText([CI)V

    .line 96
    invoke-virtual {p0}, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->getPrependedText()[C

    move-result-object v3

    array-length v3, v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->getAppendedText()[C

    move-result-object v4

    array-length v4, v4

    add-int v2, v3, v4

    goto :goto_0
.end method

.method public formatFloatValueWithPrependedAndAppendedText([CF[C)I
    .locals 1
    .parameter "formattedValue"
    .parameter "value"
    .parameter "label"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->formatFloatValueWithPrependedAndAppendedText([CFI[C)I

    move-result v0

    return v0
.end method

.method public getAppendedText()[C
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->appendedText:[C

    return-object v0
.end method

.method public getAppliedDecimalDigitsNumber(I)I
    .locals 2
    .parameter "defaultDigitsNumber"

    .prologue
    .line 136
    iget v1, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->decimalDigitsNumber:I

    if-gez v1, :cond_0

    .line 139
    move v0, p1

    .line 143
    .local v0, appliedDecimalDigitsNumber:I
    :goto_0
    return v0

    .line 141
    .end local v0           #appliedDecimalDigitsNumber:I
    :cond_0
    iget v0, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->decimalDigitsNumber:I

    .restart local v0       #appliedDecimalDigitsNumber:I
    goto :goto_0
.end method

.method public getDecimalDigitsNumber()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->decimalDigitsNumber:I

    return v0
.end method

.method public getDecimalSeparator()C
    .locals 1

    .prologue
    .line 59
    iget-char v0, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->decimalSeparator:C

    return v0
.end method

.method public getPrependedText()[C
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->prependedText:[C

    return-object v0
.end method

.method public prependText([CI)V
    .locals 4
    .parameter "formattedValue"
    .parameter "charsNumber"

    .prologue
    .line 128
    iget-object v0, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->prependedText:[C

    array-length v0, v0

    if-lez v0, :cond_0

    .line 129
    iget-object v0, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->prependedText:[C

    const/4 v1, 0x0

    array-length v2, p1

    sub-int/2addr v2, p2

    iget-object v3, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->appendedText:[C

    array-length v3, v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->prependedText:[C

    array-length v3, v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->prependedText:[C

    array-length v3, v3

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    :cond_0
    return-void
.end method

.method public setAppendedText([C)Llecho/lib/hellocharts/formatter/ValueFormatterHelper;
    .locals 0
    .parameter "appendedText"

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    iput-object p1, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->appendedText:[C

    .line 44
    :cond_0
    return-object p0
.end method

.method public setDecimalDigitsNumber(I)Llecho/lib/hellocharts/formatter/ValueFormatterHelper;
    .locals 0
    .parameter "decimalDigitsNumber"

    .prologue
    .line 32
    iput p1, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->decimalDigitsNumber:I

    .line 33
    return-object p0
.end method

.method public setDecimalSeparator(C)Llecho/lib/hellocharts/formatter/ValueFormatterHelper;
    .locals 1
    .parameter "decimalSeparator"

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, nullChar:C
    if-eq v0, p1, :cond_0

    .line 65
    iput-char p1, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->decimalSeparator:C

    .line 67
    :cond_0
    return-object p0
.end method

.method public setPrependedText([C)Llecho/lib/hellocharts/formatter/ValueFormatterHelper;
    .locals 0
    .parameter "prependedText"

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    iput-object p1, p0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->prependedText:[C

    .line 55
    :cond_0
    return-object p0
.end method
