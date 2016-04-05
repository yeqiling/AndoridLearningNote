.class public Lcom/easemob/util/DateUtils;
.super Ljava/lang/Object;


# static fields
.field private static final INTERVAL_IN_MILLISECONDS:J = 0x7530L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static StringToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBeforeYesterdayStartAndEndTime()Lcom/easemob/util/TimeInfo;
    .locals 7

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v4, 0x5

    const/4 v3, -0x2

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    const/16 v3, 0x17

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0x3b

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    const/16 v4, 0x3b

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    const/16 v4, 0x3e7

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    new-instance v4, Lcom/easemob/util/TimeInfo;

    invoke-direct {v4}, Lcom/easemob/util/TimeInfo;-><init>()V

    invoke-virtual {v4, v0, v1}, Lcom/easemob/util/TimeInfo;->setStartTime(J)V

    invoke-virtual {v4, v2, v3}, Lcom/easemob/util/TimeInfo;->setEndTime(J)V

    return-object v4
.end method

.method public static getCurrentMonthStartAndEndTime()Lcom/easemob/util/TimeInfo;
    .locals 5

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    new-instance v4, Lcom/easemob/util/TimeInfo;

    invoke-direct {v4}, Lcom/easemob/util/TimeInfo;-><init>()V

    invoke-virtual {v4, v0, v1}, Lcom/easemob/util/TimeInfo;->setStartTime(J)V

    invoke-virtual {v4, v2, v3}, Lcom/easemob/util/TimeInfo;->setEndTime(J)V

    return-object v4
.end method

.method public static getLastMonthStartAndEndTime()Lcom/easemob/util/TimeInfo;
    .locals 7

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x5

    const/4 v5, -0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xb

    const/16 v4, 0x17

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    const/16 v4, 0x3b

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    const/16 v4, 0x3b

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    const/16 v4, 0x3e7

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2, v6, v5}, Ljava/util/Calendar;->roll(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    new-instance v4, Lcom/easemob/util/TimeInfo;

    invoke-direct {v4}, Lcom/easemob/util/TimeInfo;-><init>()V

    invoke-virtual {v4, v0, v1}, Lcom/easemob/util/TimeInfo;->setStartTime(J)V

    invoke-virtual {v4, v2, v3}, Lcom/easemob/util/TimeInfo;->setEndTime(J)V

    return-object v4
.end method

.method public static getTimestampStr()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimestampString(Ljava/util/Date;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x11

    const/16 v3, 0xb

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/easemob/util/DateUtils;->isSameDay(J)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-le v0, v4, :cond_0

    const-string v0, "\u665a\u4e0a hh:mm"

    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-ltz v0, :cond_1

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    const-string v0, "\u51cc\u6668 hh:mm"

    goto :goto_0

    :cond_1
    if-le v0, v3, :cond_2

    if-gt v0, v4, :cond_2

    const-string v0, "\u4e0b\u5348 hh:mm"

    goto :goto_0

    :cond_2
    const-string v0, "\u4e0a\u5348 hh:mm"

    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, Lcom/easemob/util/DateUtils;->isYesterday(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u6628\u5929 HH:mm"

    goto :goto_0

    :cond_4
    const-string v0, "M\u6708d\u65e5 HH:mm"

    goto :goto_0
.end method

.method public static getTodayStartAndEndTime()Lcom/easemob/util/TimeInfo;
    .locals 8

    const/16 v7, 0xe

    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0xb

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss S"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x17

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0x3b

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0x3b

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0x3e7

    invoke-virtual {v2, v7, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    new-instance v4, Lcom/easemob/util/TimeInfo;

    invoke-direct {v4}, Lcom/easemob/util/TimeInfo;-><init>()V

    invoke-virtual {v4, v0, v1}, Lcom/easemob/util/TimeInfo;->setStartTime(J)V

    invoke-virtual {v4, v2, v3}, Lcom/easemob/util/TimeInfo;->setEndTime(J)V

    return-object v4
.end method

.method public static getYesterdayStartAndEndTime()Lcom/easemob/util/TimeInfo;
    .locals 7

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v4, 0x5

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    const/16 v3, 0x17

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0x3b

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    const/16 v4, 0x3b

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    const/16 v4, 0x3e7

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    new-instance v4, Lcom/easemob/util/TimeInfo;

    invoke-direct {v4}, Lcom/easemob/util/TimeInfo;-><init>()V

    invoke-virtual {v4, v0, v1}, Lcom/easemob/util/TimeInfo;->setStartTime(J)V

    invoke-virtual {v4, v2, v3}, Lcom/easemob/util/TimeInfo;->setEndTime(J)V

    return-object v4
.end method

.method public static isCloseEnough(JJ)Z
    .locals 4

    sub-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    neg-long v0, v0

    :cond_0
    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSameDay(J)Z
    .locals 4

    invoke-static {}, Lcom/easemob/util/DateUtils;->getTodayStartAndEndTime()Lcom/easemob/util/TimeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/util/TimeInfo;->getStartTime()J

    move-result-wide v2

    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/easemob/util/TimeInfo;->getEndTime()J

    move-result-wide v0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isYesterday(J)Z
    .locals 4

    invoke-static {}, Lcom/easemob/util/DateUtils;->getYesterdayStartAndEndTime()Lcom/easemob/util/TimeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/util/TimeInfo;->getStartTime()J

    move-result-wide v2

    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/easemob/util/TimeInfo;->getEndTime()J

    move-result-wide v0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toTime(I)Ljava/lang/String;
    .locals 5

    div-int/lit16 v1, p0, 0x3e8

    div-int/lit8 v0, v1, 0x3c

    const/16 v2, 0x3c

    if-lt v0, v2, :cond_0

    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    :cond_0
    rem-int/lit8 v1, v1, 0x3c

    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toTimeBySecond(I)Ljava/lang/String;
    .locals 5

    div-int/lit8 v0, p0, 0x3c

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_0

    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    :cond_0
    rem-int/lit8 v1, p0, 0x3c

    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
