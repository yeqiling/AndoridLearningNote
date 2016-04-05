.class public Lcom/boohee/utils/DateFormatUtils;
.super Ljava/lang/Object;
.source "DateFormatUtils.java"


# static fields
.field private static final D:I = 0x2

.field private static final DAYS_P_MONTH_CY:[I = null

.field private static final DAYS_P_MONTH_LY:[I = null

.field public static final DD:Ljava/lang/String; = "dd"

.field private static final M:I = 0x1

.field public static final MM:Ljava/lang/String; = "MM"

.field public static final M_D:Ljava/lang/String; = "M-d"

.field public static final M_D_CN:Ljava/lang/String; = "M\u6708d\u65e5"

.field public static final M_D_SLASH:Ljava/lang/String; = "M/d"

.field private static final Y:I = 0x0

.field public static final YYYY:Ljava/lang/String; = "yyyy"

.field public static final YYYYMM:Ljava/lang/String; = "yyyyMM"

.field public static final YYYYMMDD:Ljava/lang/String; = "yyyyMMdd"

.field public static final YYYY_MM_DD:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final YYYY_MM_DD_HH_MM:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field public static final YYYY_MM_DD_HH_MM_SS:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static final YYYY_MM_DD_T_HH_MM_SS:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field public static final YYYY_M_CN:Ljava/lang/String; = "yyyy\u5e74M\u6708"

.field public static final YYYY_M_D_CN:Ljava/lang/String; = "yyyy\u5e74M\u6708d\u65e5"

.field private static transient gregorianCutoverYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 40
    const/16 v0, 0x62e

    sput v0, Lcom/boohee/utils/DateFormatUtils;->gregorianCutoverYear:I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/boohee/utils/DateFormatUtils;->DAYS_P_MONTH_LY:[I

    .line 50
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/boohee/utils/DateFormatUtils;->DAYS_P_MONTH_CY:[I

    return-void

    .line 45
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

    .line 50
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

    .line 219
    invoke-static {p0}, Lcom/boohee/utils/DateFormatUtils;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    add-int/lit8 p2, p2, 0x1

    .line 221
    sget-object v1, Lcom/boohee/utils/DateFormatUtils;->DAYS_P_MONTH_LY:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    if-le p2, v1, :cond_1

    .line 222
    add-int/lit8 p1, p1, 0x1

    .line 223
    if-le p1, v3, :cond_0

    .line 224
    add-int/lit8 p0, p0, 0x1

    .line 225
    const/4 p1, 0x1

    .line 227
    :cond_0
    const/4 p2, 0x1

    .line 240
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

    .line 241
    .local v0, ymd:[I
    return-object v0

    .line 230
    .end local v0           #ymd:[I
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 231
    sget-object v1, Lcom/boohee/utils/DateFormatUtils;->DAYS_P_MONTH_CY:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    if-le p2, v1, :cond_1

    .line 232
    add-int/lit8 p1, p1, 0x1

    .line 233
    if-le p1, v3, :cond_3

    .line 234
    add-int/lit8 p0, p0, 0x1

    .line 235
    const/4 p1, 0x1

    .line 237
    :cond_3
    const/4 p2, 0x1

    goto :goto_0
.end method

.method public static countDay(Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 276
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 278
    .local v5, format:Ljava/text/SimpleDateFormat;
    const-wide/16 v2, 0x0

    .line 280
    .local v2, day:J
    :try_start_0
    invoke-virtual {v5, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 281
    .local v0, beginDate:Ljava/util/Date;
    invoke-virtual {v5, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 282
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

    .line 286
    .end local v0           #beginDate:Ljava/util/Date;
    .end local v4           #endDate:Ljava/util/Date;
    :goto_0
    return-wide v2

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static currentTimeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static date2date(Ljava/util/Date;Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .parameter "date"
    .parameter "formatStr"

    .prologue
    .line 66
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, str:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 73
    .end local p0
    :goto_0
    return-object p0

    .line 70
    .restart local p0
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "date"
    .parameter "formatStr"

    .prologue
    .line 92
    const-string v1, ""

    .line 93
    .local v1, strDate:Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 95
    return-object v1
.end method

.method public static dateString2String(Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .parameter "dateString"

    .prologue
    .line 505
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v20, "yyyy-MM-dd"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 507
    .local v10, format:Ljava/text/SimpleDateFormat;
    const-wide/16 v14, 0x0

    .line 509
    .local v14, time:J
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 510
    .local v4, beginDate:Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 514
    .end local v4           #beginDate:Ljava/util/Date;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v14

    const-wide/16 v22, 0x3e8

    div-long v6, v20, v22

    .line 515
    .local v6, between:J
    const-wide/32 v20, 0x1da9c00

    div-long v18, v6, v20

    .line 516
    .local v18, year:J
    const-wide/32 v20, 0x278d00

    div-long v12, v6, v20

    .line 517
    .local v12, month:J
    const-wide/32 v20, 0x93a80

    div-long v16, v6, v20

    .line 518
    .local v16, week:J
    const-wide/32 v20, 0x15180

    div-long v8, v6, v20

    .line 523
    .local v8, day:J
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 524
    .local v11, sb:Ljava/lang/StringBuffer;
    const-wide/16 v20, 0x0

    cmp-long v20, v18, v20

    if-eqz v20, :cond_0

    .line 525
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u5e74"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u524d"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 555
    :goto_1
    return-object v20

    .line 511
    .end local v6           #between:J
    .end local v8           #day:J
    .end local v11           #sb:Ljava/lang/StringBuffer;
    .end local v12           #month:J
    .end local v16           #week:J
    .end local v18           #year:J
    :catch_0
    move-exception v5

    .line 512
    .local v5, e:Ljava/text/ParseException;
    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 528
    .end local v5           #e:Ljava/text/ParseException;
    .restart local v6       #between:J
    .restart local v8       #day:J
    .restart local v11       #sb:Ljava/lang/StringBuffer;
    .restart local v12       #month:J
    .restart local v16       #week:J
    .restart local v18       #year:J
    :cond_0
    const-wide/16 v20, 0x0

    cmp-long v20, v12, v20

    if-eqz v20, :cond_1

    .line 529
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u4e2a\u6708"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u524d"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto :goto_1

    .line 533
    :cond_1
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-eqz v20, :cond_2

    .line 534
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u5468"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u524d"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto :goto_1

    .line 538
    :cond_2
    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-eqz v20, :cond_3

    .line 539
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u5929"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u524d"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_1

    .line 555
    :cond_3
    const-string v20, ""

    goto/16 :goto_1
.end method

.method public static formatMonthDay(I)Ljava/lang/String;
    .locals 4
    .parameter "decimal"

    .prologue
    .line 251
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 252
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
    .line 262
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 263
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
    .line 367
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 368
    .local v0, cal:Ljava/util/Calendar;
    const-string v1, "yyyy-MM-dd"

    invoke-static {p0, v1}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 369
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 370
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getDifference(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .parameter "start_at"
    .parameter "end_at"

    .prologue
    .line 454
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    .line 457
    :goto_0
    return-wide v2

    .line 455
    :cond_0
    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {p0, v2}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 456
    .local v1, date_start:Ljava/util/Date;
    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {p1, v2}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 457
    .local v0, date_end:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    goto :goto_0
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

    .line 317
    invoke-static {p0, p1}, Lcom/boohee/utils/DateFormatUtils;->countDay(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 318
    .local v0, days:J
    invoke-static {p0}, Lcom/boohee/utils/DateFormatUtils;->splitYMD(Ljava/lang/String;)[I

    move-result-object v4

    .line 319
    .local v4, ymd:[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v2, everyDays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 321
    const-string v5, "yyyy-MM-dd"

    invoke-static {p0, v5}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    const-string v6, "M/d"

    invoke-static {v5, v6}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    int-to-long v6, v3

    cmp-long v5, v6, v0

    if-gez v5, :cond_1

    .line 325
    const/4 v5, 0x0

    aget v5, v4, v5

    aget v6, v4, v8

    aget v7, v4, v9

    invoke-static {v5, v6, v7}, Lcom/boohee/utils/DateFormatUtils;->addOneDay(III)[I

    move-result-object v4

    .line 326
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

    .line 324
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 328
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

    .line 297
    invoke-static {p0, p1}, Lcom/boohee/utils/DateFormatUtils;->countDay(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 298
    .local v0, days:J
    invoke-static {p0}, Lcom/boohee/utils/DateFormatUtils;->splitYMD(Ljava/lang/String;)[I

    move-result-object v4

    .line 299
    .local v4, ymd:[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v2, everyDays:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    int-to-long v6, v3

    cmp-long v5, v6, v0

    if-gez v5, :cond_0

    .line 302
    aget v5, v4, v8

    aget v6, v4, v9

    aget v7, v4, v10

    invoke-static {v5, v6, v7}, Lcom/boohee/utils/DateFormatUtils;->addOneDay(III)[I

    move-result-object v4

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget v6, v4, v8

    invoke-static {v6}, Lcom/boohee/utils/DateFormatUtils;->formatYear(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v4, v9

    invoke-static {v6}, Lcom/boohee/utils/DateFormatUtils;->formatMonthDay(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v4, v10

    invoke-static {v6}, Lcom/boohee/utils/DateFormatUtils;->formatMonthDay(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 305
    :cond_0
    return-object v2
.end method

.method public static getMonth(Ljava/lang/String;I)Ljava/util/Date;
    .locals 2
    .parameter "dateString"
    .parameter "monthNum"

    .prologue
    .line 395
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 396
    .local v0, cal:Ljava/util/Calendar;
    const-string v1, "yyyy-MM-dd"

    invoke-static {p0, v1}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 397
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 398
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getNextMonthFirstDay(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "record_on"

    .prologue
    const/4 v4, 0x1

    .line 564
    const-string v2, "yyyyMM"

    invoke-static {p0, v2}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/utils/DateHelper;->getYear(Ljava/util/Date;)I

    move-result v1

    .line 565
    .local v1, year:I
    const-string v2, "yyyyMM"

    invoke-static {p0, v2}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/utils/DateHelper;->getMonth(Ljava/util/Date;)I

    move-result v0

    .line 566
    .local v0, month:I
    const/16 v2, 0xc

    if-ne v2, v0, :cond_0

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Lcom/boohee/utils/DateFormatUtils;->formatYear(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/boohee/utils/DateFormatUtils;->formatMonthDay(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/boohee/utils/DateFormatUtils;->formatMonthDay(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 569
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/boohee/utils/DateFormatUtils;->formatYear(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Lcom/boohee/utils/DateFormatUtils;->formatMonthDay(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/boohee/utils/DateFormatUtils;->formatMonthDay(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getRemainTime(J)Ljava/lang/String;
    .locals 18
    .parameter "time"

    .prologue
    .line 468
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 469
    .local v12, stringBuffer:Ljava/lang/StringBuffer;
    const-wide/32 v14, 0x15180

    div-long v0, p0, v14

    .line 470
    .local v0, day:J
    const-wide/32 v14, 0x15180

    rem-long v14, p0, v14

    const-wide/16 v16, 0xe10

    div-long v4, v14, v16

    .line 471
    .local v4, hours:J
    const-wide/32 v14, 0x15180

    rem-long v14, p0, v14

    const-wide/16 v16, 0xe10

    rem-long v14, v14, v16

    const-wide/16 v16, 0x3c

    div-long v6, v14, v16

    .line 472
    .local v6, minutes:J
    const-wide/32 v14, 0x15180

    rem-long v14, p0, v14

    const-wide/16 v16, 0xe10

    rem-long v14, v14, v16

    const-wide/16 v16, 0x3c

    rem-long v10, v14, v16

    .line 473
    .local v10, second:J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, dayStr:Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/boohee/utils/DateFormatUtils;->timeStrFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 475
    .local v3, hoursStr:Ljava/lang/String;
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/boohee/utils/DateFormatUtils;->timeStrFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 476
    .local v8, minutesStr:Ljava/lang/String;
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/boohee/utils/DateFormatUtils;->timeStrFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 477
    .local v9, secondStr:Ljava/lang/String;
    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "\u5929"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 478
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method public static getTimeFiled()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x12

    const/16 v4, 0xd

    const/16 v3, 0x9

    const/16 v2, 0xb

    .line 168
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 169
    .local v0, hour:I
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    if-ge v0, v3, :cond_0

    .line 170
    const-string v1, "\u65e9\u9910"

    .line 180
    :goto_0
    return-object v1

    .line 171
    :cond_0
    if-lt v0, v3, :cond_1

    if-ge v0, v2, :cond_1

    .line 172
    const-string v1, "\u4e0a\u5348\u52a0\u9910"

    goto :goto_0

    .line 173
    :cond_1
    if-lt v0, v2, :cond_2

    if-ge v0, v4, :cond_2

    .line 174
    const-string v1, "\u5348\u9910"

    goto :goto_0

    .line 175
    :cond_2
    if-lt v0, v4, :cond_3

    if-ge v0, v5, :cond_3

    .line 176
    const-string v1, "\u4e0b\u5348\u52a0\u9910"

    goto :goto_0

    .line 177
    :cond_3
    if-lt v0, v5, :cond_4

    const/16 v1, 0x15

    if-ge v0, v1, :cond_4

    .line 178
    const-string v1, "\u665a\u9910"

    goto :goto_0

    .line 180
    :cond_4
    const-string v1, "\u665a\u4e0a\u52a0\u9910"

    goto :goto_0
.end method

.method public static getWeek(Ljava/lang/String;I)Ljava/util/Date;
    .locals 2
    .parameter "dateString"
    .parameter "weekNum"

    .prologue
    .line 423
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 424
    .local v0, cal:Ljava/util/Calendar;
    const-string v1, "yyyy-MM-dd"

    invoke-static {p0, v1}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 425
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 426
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getWeekOfDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "dateString"

    .prologue
    const/4 v5, 0x7

    .line 436
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    .line 443
    :goto_0
    return-object v3

    .line 437
    :cond_0
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u5468\u65e5"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u5468\u4e00"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u5468\u4e8c"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "\u5468\u4e09"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "\u5468\u56db"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "\u5468\u4e94"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "\u5468\u516d"

    aput-object v4, v2, v3

    .line 438
    .local v2, weekDays:[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 439
    .local v0, cal:Ljava/util/Calendar;
    const-string v3, "yyyy-MM-dd"

    invoke-static {p0, v3}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 440
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 441
    .local v1, w:I
    if-gez v1, :cond_1

    .line 442
    const/4 v1, 0x0

    .line 443
    :cond_1
    aget-object v3, v2, v1

    goto :goto_0
.end method

.method public static getYM(Ljava/lang/String;I)Ljava/util/Date;
    .locals 2
    .parameter "yyyyMM"
    .parameter "monthNum"

    .prologue
    .line 409
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 410
    .local v0, cal:Ljava/util/Calendar;
    const-string v1, "yyyyMM"

    invoke-static {p0, v1}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 411
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 412
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getYear(Ljava/lang/String;I)Ljava/util/Date;
    .locals 2
    .parameter "dateString"
    .parameter "yearNum"

    .prologue
    .line 381
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 382
    .local v0, cal:Ljava/util/Calendar;
    const-string v1, "yyyy-MM-dd"

    invoke-static {p0, v1}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 383
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 384
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

    .line 206
    sget v2, Lcom/boohee/utils/DateFormatUtils;->gregorianCutoverYear:I

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
    .line 338
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, todayString:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    const/4 v1, 0x1

    .line 342
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isYeterday(Ljava/lang/String;)Z
    .locals 3
    .parameter "date"

    .prologue
    .line 352
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->getDay(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, yesterdayString:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    const/4 v1, 0x1

    .line 356
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .parameter "dateString"
    .parameter "format"

    .prologue
    .line 156
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 158
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 160
    :goto_0
    return-object v2

    .line 159
    :catch_0
    move-exception v1

    .line 160
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

    .line 191
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 192
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 193
    .local v0, ymd:[I
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    .line 194
    const/4 v1, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 195
    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 196
    return-object v0

    .line 192
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
    .line 125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 126
    .local v3, result:Ljava/util/Calendar;
    const/4 v1, 0x0

    .line 128
    .local v1, format:Ljava/text/DateFormat;
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1           #format:Ljava/text/DateFormat;
    .local v2, format:Ljava/text/DateFormat;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    const/4 v1, 0x0

    .line 135
    .end local v2           #format:Ljava/text/DateFormat;
    .restart local v1       #format:Ljava/text/DateFormat;
    :goto_0
    return-object v3

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/text/ParseException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    const/4 v1, 0x0

    .line 134
    goto :goto_0

    .line 133
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

    .line 130
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
    .line 146
    const-string v0, "yyyy-MM-dd"

    invoke-static {p0, v0}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .parameter "dateString"
    .parameter "formatStr"

    .prologue
    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, formateDate:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, format:Ljava/text/DateFormat;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 114
    :goto_0
    return-object v3

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/text/ParseException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static timeStrFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "timeStr"

    .prologue
    .line 488
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 493
    :goto_0
    return-object p0

    .line 490
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 488
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static timezoneFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "dateString"
    .parameter "outputFormat"

    .prologue
    .line 150
    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {p0, v2}, Lcom/boohee/utils/DateFormatUtils;->parseFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 151
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 152
    .local v1, df:Ljava/text/DateFormat;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
