.class public Lcom/easemob/util/TextFormater;
.super Ljava/lang/Object;


# static fields
.field private static final GB_SP_DIFF:I = 0xa0

.field private static final firstLetter:[C

.field private static final secPosvalueList:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/easemob/util/TextFormater;->secPosvalueList:[I

    const/16 v0, 0x17

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/easemob/util/TextFormater;->firstLetter:[C

    return-void

    nop

    :array_0
    .array-data 0x4
        0x41t 0x6t 0x0t 0x0t
        0x65t 0x6t 0x0t 0x0t
        0x29t 0x7t 0x0t 0x0t
        0x1et 0x8t 0x0t 0x0t
        0xe2t 0x8t 0x0t 0x0t
        0xfet 0x8t 0x0t 0x0t
        0x81t 0x9t 0x0t 0x0t
        0x22t 0xat 0x0t 0x0t
        0xe3t 0xat 0x0t 0x0t
        0x22t 0xct 0x0t 0x0t
        0x8ct 0xct 0x0t 0x0t
        0x90t 0xdt 0x0t 0x0t
        0x33t 0xet 0x0t 0x0t
        0x8at 0xet 0x0t 0x0t
        0x92t 0xet 0x0t 0x0t
        0x12t 0xft 0x0t 0x0t
        0xbbt 0xft 0x0t 0x0t
        0xf6t 0xft 0x0t 0x0t
        0x26t 0x11t 0x0t 0x0t
        0xcet 0x11t 0x0t 0x0t
        0x4ct 0x12t 0x0t 0x0t
        0x3dt 0x13t 0x0t 0x0t
        0x81t 0x14t 0x0t 0x0t
        0xe0t 0x15t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x2
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convert([B)C
    .locals 5

    const/4 v1, 0x0

    const/16 v2, 0x2d

    move v0, v1

    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    aget-byte v0, p0, v1

    mul-int/lit8 v0, v0, 0x64

    const/4 v3, 0x1

    aget-byte v3, p0, v3

    add-int/2addr v0, v3

    :goto_1
    const/16 v3, 0x17

    if-lt v1, v3, :cond_1

    move v0, v2

    :goto_2
    return v0

    :cond_0
    aget-byte v3, p0, v0

    add-int/lit16 v3, v3, -0xa0

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/easemob/util/TextFormater;->secPosvalueList:[I

    aget v3, v3, v1

    if-lt v0, v3, :cond_2

    sget-object v3, Lcom/easemob/util/TextFormater;->secPosvalueList:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    if-ge v0, v3, :cond_2

    sget-object v0, Lcom/easemob/util/TextFormater;->firstLetter:[C

    aget-char v0, v0, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static formatStr(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataSize(J)Ljava/lang/String;
    .locals 6

    const/high16 v4, 0x4480

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x400

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v1, p0, v2

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    long-to-float v2, p0

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "KB"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x40000000

    cmp-long v1, p0, v2

    if-gez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    long-to-float v2, p0

    div-float/2addr v2, v4

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "MB"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-gez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    long-to-float v2, p0

    div-float/2addr v2, v4

    div-float/2addr v2, v4

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "GB"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "error"

    goto :goto_0
.end method

.method public static getFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    new-array v5, v8, [C

    aput-char v4, v5, v1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aget-byte v6, v4, v1

    const/16 v7, 0x80

    if-ge v6, v7, :cond_1

    aget-byte v6, v4, v1

    if-lez v6, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lcom/easemob/util/TextFormater;->convert([B)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static getKBDataSize(J)Ljava/lang/String;
    .locals 6

    const/high16 v4, 0x4480

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x400

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v1, p0, v2

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    long-to-float v2, p0

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "MB"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x40000000

    cmp-long v1, p0, v2

    if-gez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    long-to-float v2, p0

    div-float/2addr v2, v4

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "GB"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "error"

    goto :goto_0
.end method
