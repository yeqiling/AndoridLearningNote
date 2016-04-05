.class public Llecho/lib/hellocharts/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static final D:I = 0x2

.field private static final DAYS_P_MONTH_CY:[I = null

.field private static final DAYS_P_MONTH_LY:[I = null

.field public static final DD:Ljava/lang/String; = "dd"

.field private static final M:I = 0x1

.field public static final MM:Ljava/lang/String; = "MM"

.field public static final M_D_CN:Ljava/lang/String; = "M\u6708d\u65e5"

.field public static final M_D_SLASH:Ljava/lang/String; = "M/d"

.field private static final Y:I = 0x0

.field public static final YYYY:Ljava/lang/String; = "yyyy"

.field public static final YYYYMMMDD:Ljava/lang/String; = "yyyyMMdd"

.field public static final YYYY_MM_DD:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final YYYY_MM_DD_HH_MM:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field public static final YYYY_MM_DD_HH_MM_SS:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static transient gregorianCutoverYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 35
    const/16 v0, 0x62e

    sput v0, Llecho/lib/hellocharts/util/DateUtils;->gregorianCutoverYear:I

    .line 40
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Llecho/lib/hellocharts/util/DateUtils;->DAYS_P_MONTH_LY:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Llecho/lib/hellocharts/util/DateUtils;->DAYS_P_MONTH_CY:[I

    return-void

    .line 40
    nop

    :array_0
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    .line 45
    :array_1
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addOneDay(III)[I
    .locals 4
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    const/16 v3, 0xc

    .line 206
    invoke-static {p0}, Llecho/lib/hellocharts/util/DateUtils;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    add-int/lit8 p2, p2, 0x1

    .line 208
    sget-object v1, Llecho/lib/hellocharts/util/DateUtils;->DAYS_P_MONTH_LY:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    if-le p2, v1, :cond_1

    .line 209
    add-int/lit8 p1, p1, 0x1

    .line 210
    if-le p1, v3, :cond_0

    .line 211
    add-int/lit8 p0, p0, 0x1

    .line 212
    const/4 p1, 0x1

    .line 214
    :cond_0
    const/4 p2, 0x1

    .line 227
    :cond_1
    :goto_0
    const/4 v1, 0x3

    new-array v0, v1, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    .line 228
    .local v0, ymd:[I
    return-object v0

    .line 217
    .end local v0           #ymd:[I
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 218
    sget-object v1, Llecho/lib/hellocharts/util/DateUtils;->DAYS_P_MONTH_CY:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    if-le p2, v1, :cond_1

    .line 219
    add-int/lit8 p1, p1, 0x1

    .line 220
    if-le p1, v3, :cond_3

    .line 221
    add-int/lit8 p0, p0, 0x1

    .line 222
    const/4 p1, 0x1

    .line 224
    :cond_3
    const/4 p2, 0x1

    goto :goto_0
.end method

.method public static countDay(Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 263
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 265
    .local v5, format:Ljava/text/SimpleDateFormat;
    const-wide/16 v2, 0x0

    .line 267
    .local v2, day:J
    :try_start_0
    invoke-virtual {v5, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 268
    .local v0, beginDate:Ljava/util/Date;
    invoke-virtual {v5, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 269
    .local v4, endDate:Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x5265c00

    div-long v2, v6, v8
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v0           #beginDate:Ljava/util/Date;
    .end local v4           #endDate:Ljava/util/Date;
    :goto_0
    return-wide v2

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static date2date(Ljava/util/Date;Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .parameter "date"
    .parameter "formatStr"

    .prologue
    .line 61
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, str:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 68
    .end local p0
    :goto_0
    return-object p0

    .line 65
    .restart local p0
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "date"
    .parameter "formatStr"

    .prologue
    .line 79
    const-string v1, ""

    .line 80
    .local v1, strDate:Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 82
    return-object v1
.end method

.method public static formatMonthDay(I)Ljava/lang/String;
    .locals 4
    .parameter "decimal"

    .prologue
    .line 238
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, df:Ljava/text/DecimalFormat;
    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatYear(I)Ljava/lang/String;
    .locals 4
    .parameter "decimal"

    .prologue
    .line 249
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, df:Ljava/text/DecimalFormat;
    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDay(Ljava/lang/String;I)Ljava/util/Date;
    .locals 2
    .parameter "dateString"
    .parameter "dayNum"

    .prologue
    .line 340
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 341
    .local v0, cal:Ljava/util/Calendar;
    const-string v1, "yyyy-MM-dd"

    invoke-static {p0, v1}, Llecho/lib/hellocharts/util/DateUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 342
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 343
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getEveryMonthDay(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter "beginDate"
    .parameter "endDate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 304
    invoke-static {p0, p1}, Llecho/lib/hellocharts/util/DateUtils;->countDay(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 305
    .local v0, days:J
    invoke-static {p0}, Llecho/lib/hellocharts/util/DateUtils;->splitYMD(Ljava/lang/String;)[I

    move-result-object v4

    .line 306
    .local v4, ymd:[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v2, everyDays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 308
    const-string v5, "yyyy-MM-dd"

    invoke-static {p0, v5}, Llecho/lib/hellocharts/util/DateUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    const-string v6, "M/d"

    invoke-static {v5, v6}, Llecho/lib/hellocharts/util/DateUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    int-to-long v6, v3

    cmp-long v5, v6, v0

    if-gez v5, :cond_1

    .line 312
    const/4 v5, 0x0

    aget v5, v4, v5

    aget v6, v4, v8

    aget v7, v4, v9

    invoke-static {v5, v6, v7}, Llecho/lib/hellocharts/util/DateUtils;->addOneDay(III)[I

    move-result-object v4

    .line 313
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget v6, v4, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v4, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 315
    :cond_1
    return-object v2
.end method

.method public static getEveryday(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter "beginDate"
    .parameter "endDate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 284
    invoke-static {p0, p1}, Llecho/lib/hellocharts/util/DateUtils;->countDay(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 285
    .local v0, days:J
    invoke-static {p0}, Llecho/lib/hellocharts/util/DateUtils;->splitYMD(Ljava/lang/String;)[I

    move-result-object v4

    .line 286
    .local v4, ymd:[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v2, everyDays:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    int-to-long v6, v3

    cmp-long v5, v6, v0

    if-gez v5, :cond_0

    .line 289
    aget v5, v4, v8

    aget v6, v4, v9

    aget v7, v4, v10

    invoke-static {v5, v6, v7}, Llecho/lib/hellocharts/util/DateUtils;->addOneDay(III)[I

    move-result-object v4

    .line 290
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget v6, v4, v8

    invoke-static {v6}, Llecho/lib/hellocharts/util/DateUtils;->formatYear(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v4, v9

    invoke-static {v6}, Llecho/lib/hellocharts/util/DateUtils;->formatMonthDay(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v4, v10

    invoke-static {v6}, Llecho/lib/hellocharts/util/DateUtils;->formatMonthDay(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 292
    :cond_0
    return-object v2
.end method

.method public static getMonth(Ljava/lang/String;I)Ljava/util/Date;
    .locals 2
    .parameter "dateString"
    .parameter "monthNum"

    .prologue
    .line 368
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 369
    .local v0, cal:Ljava/util/Calendar;
    const-string v1, "yyyy-MM-dd"

    invoke-static {p0, v1}, Llecho/lib/hellocharts/util/DateUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 370
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 371
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getTimeFiled()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x12

    const/16 v4, 0xd

    const/16 v3, 0x9

    const/16 v2, 0xb

    .line 155
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 156
    .local v0, hour:I
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    if-ge v0, v3, :cond_0

    .line 157
    const-string v1, "\u65e9\u9910"

    .line 167
    :goto_0
    return-object v1

    .line 158
    :cond_0
    if-lt v0, v3, :cond_1

    if-ge v0, v2, :cond_1

    .line 159
    const-string v1, "\u4e0a\u5348\u52a0\u9910"

    goto :goto_0

    .line 160
    :cond_1
    if-lt v0, v2, :cond_2

    if-ge v0, v4, :cond_2

    .line 161
    const-string v1, "\u5348\u9910"

    goto :goto_0

    .line 162
    :cond_2
    if-lt v0, v4, :cond_3

    if-ge v0, v5, :cond_3

    .line 163
    const-string v1, "\u4e0b\u5348\u52a0\u9910"

    goto :goto_0

    .line 164
    :cond_3
    if-lt v0, v5, :cond_4

    const/16 v1, 0x15

    if-ge v0, v1, :cond_4

    .line 165
    const-string v1, "\u665a\u9910"

    goto :goto_0

    .line 167
    :cond_4
    const-string v1, "\u665a\u4e0a\u52a0\u9910"

    goto :goto_0
.end method

.method public static getWeek(Ljava/lang/String;I)Ljava/util/Date;
    .locals 2
    .parameter "dateString"
    .parameter "weekNum"

    .prologue
    .line 382
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 383
    .local v0, cal:Ljava/util/Calendar;
    const-string v1, "yyyy-MM-dd"

    invoke-static {p0, v1}, Llecho/lib/hellocharts/util/DateUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 384
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 385
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getYear(Ljava/lang/String;I)Ljava/util/Date;
    .locals 2
    .parameter "dateString"
    .parameter "yearNum"

    .prologue
    .line 354
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 355
    .local v0, cal:Ljava/util/Calendar;
    const-string v1, "yyyy-MM-dd"

    invoke-static {p0, v1}, Llecho/lib/hellocharts/util/DateUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 356
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 357
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static isLeapYear(I)Z
    .locals 3
    .parameter "year"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    sget v2, Llecho/lib/hellocharts/util/DateUtils;->gregorianCutoverYear:I

    if-lt p0, v2, :cond_2

    rem-int/lit8 v2, p0, 0x4

    if-nez v2, :cond_1

    rem-int/lit8 v2, p0, 0x64

    if-nez v2, :cond_0

    rem-int/lit16 v2, p0, 0x190

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    rem-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isToday(Ljava/lang/String;)Z
    .locals 3
    .parameter "date"

    .prologue
    .line 325
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Llecho/lib/hellocharts/util/DateUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, todayString:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    const/4 v1, 0x1

    .line 329
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTodayBeforeDate(Ljava/lang/String;)Z
    .locals 6
    .parameter "dateString"

    .prologue
    const/4 v3, 0x0

    .line 393
    :try_start_0
    const-string v4, "yyyyMMdd"

    invoke-static {p0, v4}, Llecho/lib/hellocharts/util/DateUtils;->string2String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, targetString:Ljava/lang/String;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    const-string v5, "yyyyMMdd"

    invoke-static {v4, v5}, Llecho/lib/hellocharts/util/DateUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, todayString:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ge v4, v5, :cond_0

    const/4 v3, 0x1

    .line 398
    .end local v1           #targetString:Ljava/lang/String;
    .end local v2           #todayString:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static parseFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .parameter "dateString"
    .parameter "format"

    .prologue
    .line 143
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 145
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 147
    :goto_0
    return-object v2

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, e:Ljava/text/ParseException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static splitYMD(Ljava/lang/String;)[I
    .locals 6
    .parameter "date"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 178
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 179
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 180
    .local v0, ymd:[I
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    .line 181
    const/4 v1, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 182
    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 183
    return-object v0

    .line 179
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static string2Calendar(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 5
    .parameter "dateString"
    .parameter "formatStr"

    .prologue
    .line 112
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 113
    .local v3, result:Ljava/util/Calendar;
    const/4 v1, 0x0

    .line 115
    .local v1, format:Ljava/text/DateFormat;
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1           #format:Ljava/text/DateFormat;
    .local v2, format:Ljava/text/DateFormat;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    const/4 v1, 0x0

    .line 122
    .end local v2           #format:Ljava/text/DateFormat;
    .restart local v1       #format:Ljava/text/DateFormat;
    :goto_0
    return-object v3

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/text/ParseException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    const/4 v1, 0x0

    .line 121
    goto :goto_0

    .line 120
    .end local v0           #e:Ljava/text/ParseException;
    :catchall_0
    move-exception v4

    :goto_2
    const/4 v1, 0x0

    throw v4

    .end local v1           #format:Ljava/text/DateFormat;
    .restart local v2       #format:Ljava/text/DateFormat;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #format:Ljava/text/DateFormat;
    .restart local v1       #format:Ljava/text/DateFormat;
    goto :goto_2

    .line 117
    .end local v1           #format:Ljava/text/DateFormat;
    .restart local v2       #format:Ljava/text/DateFormat;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #format:Ljava/text/DateFormat;
    .restart local v1       #format:Ljava/text/DateFormat;
    goto :goto_1
.end method

.method public static string2String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "dateString"
    .parameter "formatStr"

    .prologue
    .line 133
    const-string v0, "yyyy-MM-dd"

    invoke-static {p0, v0}, Llecho/lib/hellocharts/util/DateUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p1}, Llecho/lib/hellocharts/util/DateUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .parameter "dateString"
    .parameter "formatStr"

    .prologue
    .line 94
    const/4 v2, 0x0

    .line 95
    .local v2, formateDate:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, format:Ljava/text/DateFormat;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 101
    :goto_0
    return-object v3

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/text/ParseException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static timezoneFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "dateString"
    .parameter "outputFormat"

    .prologue
    .line 137
    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {p0, v2}, Llecho/lib/hellocharts/util/DateUtils;->parseFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 138
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 139
    .local v1, df:Ljava/text/DateFormat;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
