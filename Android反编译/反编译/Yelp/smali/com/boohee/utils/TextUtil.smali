.class public Lcom/boohee/utils/TextUtil;
.super Ljava/lang/Object;
.source "TextUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addComma(F)Ljava/lang/String;
    .locals 2
    .parameter "f"

    .prologue
    .line 76
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, fm1:Ljava/text/Format;
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static checkId(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "url"

    .prologue
    .line 86
    const-string v3, "id="

    .line 87
    .local v3, id:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 99
    .end local p0
    :goto_0
    return-object p0

    .line 88
    .restart local p0
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v4, result:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int v0, v5, v6

    .line 91
    .local v0, begin:I
    move v2, v0

    .local v2, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 92
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 93
    .local v1, ch:C
    const/16 v5, 0x30

    if-gt v5, v1, :cond_1

    const/16 v5, 0x39

    if-gt v1, v5, :cond_1

    .line 94
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 99
    .end local v1           #ch:C
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 4
    .parameter "strEmail"

    .prologue
    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    const/4 v3, 0x0

    .line 46
    :goto_0
    return v3

    .line 43
    :cond_0
    const-string v2, "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$"

    .line 44
    .local v2, strPattern:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 45
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 46
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    goto :goto_0
.end method

.method public static varargs isEmpty([Ljava/lang/CharSequence;)Z
    .locals 5
    .parameter "strs"

    .prologue
    .line 20
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/CharSequence;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 21
    .local v3, str:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 22
    const/4 v4, 0x1

    .line 25
    .end local v3           #str:Ljava/lang/CharSequence;
    :goto_1
    return v4

    .line 20
    .restart local v3       #str:Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    .end local v3           #str:Ljava/lang/CharSequence;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isNull(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 29
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "srtPhone"

    .prologue
    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/boohee/utility/RegularUtils;->checkCellPhone(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static m2(F)Ljava/lang/String;
    .locals 4
    .parameter "f"

    .prologue
    .line 65
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-nez v1, :cond_0

    .line 66
    const-string v1, "0.00"

    .line 72
    :goto_0
    return-object v1

    .line 68
    :cond_0
    const/high16 v1, 0x3f80

    cmpg-float v1, p0, v1

    if-gez v1, :cond_1

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, df:Ljava/text/DecimalFormat;
    float-to-double v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
