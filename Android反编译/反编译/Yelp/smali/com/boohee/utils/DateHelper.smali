.class public Lcom/boohee/utils/DateHelper;
.super Ljava/lang/Object;
.source "DateHelper.java"


# static fields
.field private static final meals:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 233
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u52a0\u9910"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u65e9\u9910"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u5348\u9910"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u665a\u9910"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4e0a\u5348\u52a0\u9910"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u4e0b\u5348\u52a0\u9910"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u665a\u4e0a\u52a0\u9910"

    aput-object v2, v0, v1

    sput-object v0, Lcom/boohee/utils/DateHelper;->meals:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDays(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2
    .parameter "date"
    .parameter "days"

    .prologue
    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 35
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 36
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 37
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static addMonths(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2
    .parameter "date"
    .parameter "months"

    .prologue
    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 42
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 43
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 44
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static between(Ljava/util/Date;)I
    .locals 4
    .parameter "oldDate"

    .prologue
    .line 122
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static between(Ljava/util/Date;Ljava/util/Date;)I
    .locals 4
    .parameter "newDate"
    .parameter "oldDate"

    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static defaultTargetDate()Ljava/util/Date;
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    .line 201
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 202
    .local v0, cal:Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 203
    .local v1, d:Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 204
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 205
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 206
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 48
    const-string v0, "yyyy-MM-dd"

    invoke-static {p0, v0}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "date"
    .parameter "format"

    .prologue
    .line 58
    const-string v0, ""

    .line 59
    .local v0, dateString:Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 61
    .local v1, df:Ljava/text/DateFormat;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 62
    :catch_0
    move-exception v2

    .line 63
    .local v2, e:Ljava/lang/Exception;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "dateString"
    .parameter "format"

    .prologue
    .line 69
    const-string v2, "yyyy-MM-dd"

    invoke-static {p0, v2}, Lcom/boohee/utils/DateHelper;->parseFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 70
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 71
    .local v1, df:Ljava/text/DateFormat;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getAge(Ljava/util/Date;)I
    .locals 12
    .parameter "birthDay"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 126
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 128
    .local v1, cal:Ljava/util/Calendar;
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 129
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "date cannot after today"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 132
    :cond_0
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 133
    .local v7, yearNow:I
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v5, v8, 0x1

    .line 134
    .local v5, monthNow:I
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 135
    .local v3, dayOfMonthNow:I
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 137
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 138
    .local v6, yearBirth:I
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 139
    .local v4, monthBirth:I
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 141
    .local v2, dayOfMonthBirth:I
    sub-int v0, v7, v6

    .line 143
    .local v0, age:I
    if-gt v5, v4, :cond_1

    .line 144
    if-ne v5, v4, :cond_2

    .line 146
    if-ge v3, v2, :cond_1

    .line 147
    add-int/lit8 v0, v0, -0x1

    .line 160
    :cond_1
    :goto_0
    return v0

    .line 153
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentDateTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 16
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 17
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentTimeMills()Ljava/lang/String;
    .locals 3

    .prologue
    .line 21
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 22
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDay(Ljava/util/Date;)I
    .locals 2
    .parameter "date"

    .prologue
    .line 195
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 196
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 197
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getFirstDay(Ljava/util/Date;)Ljava/util/Date;
    .locals 3
    .parameter "date"

    .prologue
    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 76
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 77
    const/4 v1, 0x7

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 78
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getFirstDay(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2
    .parameter "date"
    .parameter "start"

    .prologue
    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 83
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 84
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 85
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getFirstDayOfMonth(Ljava/util/Date;)Ljava/util/Date;
    .locals 3
    .parameter "date"

    .prologue
    .line 164
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 165
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 166
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 167
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getLastDayOfMonth(Ljava/util/Date;)Ljava/util/Date;
    .locals 3
    .parameter "date"

    .prologue
    const/4 v2, 0x5

    .line 171
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 172
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 173
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 174
    .local v1, lastDay:I
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 175
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public static getMealName(I)Ljava/lang/String;
    .locals 1
    .parameter "time_type"

    .prologue
    .line 263
    sget-object v0, Lcom/boohee/utils/DateHelper;->meals:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    if-gez p0, :cond_1

    :cond_0
    const-string v0, "\u52a0\u9910"

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/boohee/utils/DateHelper;->meals:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static getMonth(Ljava/util/Date;)I
    .locals 2
    .parameter "date"

    .prologue
    .line 185
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 186
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 187
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static getTimeFiled()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x12

    const/16 v4, 0xd

    const/16 v3, 0x9

    const/16 v2, 0xb

    .line 240
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 241
    .local v0, hour:I
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    if-ge v0, v3, :cond_0

    .line 242
    const-string v1, "\u65e9\u9910"

    .line 252
    :goto_0
    return-object v1

    .line 243
    :cond_0
    if-lt v0, v3, :cond_1

    if-ge v0, v2, :cond_1

    .line 244
    const-string v1, "\u4e0a\u5348\u52a0\u9910"

    goto :goto_0

    .line 245
    :cond_1
    if-lt v0, v2, :cond_2

    if-ge v0, v4, :cond_2

    .line 246
    const-string v1, "\u5348\u9910"

    goto :goto_0

    .line 247
    :cond_2
    if-lt v0, v4, :cond_3

    if-ge v0, v5, :cond_3

    .line 248
    const-string v1, "\u4e0b\u5348\u52a0\u9910"

    goto :goto_0

    .line 249
    :cond_3
    if-lt v0, v5, :cond_4

    const/16 v1, 0x15

    if-ge v0, v1, :cond_4

    .line 250
    const-string v1, "\u665a\u9910"

    goto :goto_0

    .line 252
    :cond_4
    const-string v1, "\u665a\u4e0a\u52a0\u9910"

    goto :goto_0
.end method

.method public static getWeekOfDate(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "date"
    .parameter "context"

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, weekDaysName:[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 112
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 113
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 114
    .local v1, intWeek:I
    aget-object v3, v2, v1

    return-object v3
.end method

.method public static getYear(Ljava/util/Date;)I
    .locals 2
    .parameter "date"

    .prologue
    .line 179
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 180
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 181
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getYearMonth(Ljava/util/Date;)Ljava/lang/String;
    .locals 5
    .parameter "date"

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/boohee/utils/DateHelper;->getYear(Ljava/util/Date;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%02d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/boohee/utils/DateHelper;->getMonth(Ljava/util/Date;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mealName2TimeType(Ljava/lang/String;)I
    .locals 2
    .parameter "mealName"

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/boohee/utils/DateHelper;->meals:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 275
    sget-object v1, Lcom/boohee/utils/DateHelper;->meals:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v0

    .line 278
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_2
    sget-object v1, Lcom/boohee/utils/DateHelper;->meals:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static monthDay()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "MMMdd\u65e5"

    invoke-static {v0, v1}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static monthDay(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 30
    const-string v0, "MMMdd\u65e5"

    invoke-static {p0, v0}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nextDay(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "date"
    .parameter "step"

    .prologue
    .line 335
    invoke-static {p0}, Lcom/boohee/utils/DateHelper;->parseString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/boohee/utils/DateHelper;->nextDay(Ljava/util/Date;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nextDay(Ljava/util/Date;I)Ljava/lang/String;
    .locals 1
    .parameter "date"
    .parameter "step"

    .prologue
    .line 321
    invoke-static {p0, p1}, Lcom/boohee/utils/DateHelper;->addDays(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .parameter "dateString"
    .parameter "format"

    .prologue
    .line 89
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 91
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 94
    :goto_0
    return-object v2

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 94
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static parseString(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .parameter "dateString"

    .prologue
    .line 99
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 102
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 105
    :goto_0
    return-object v2

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 105
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static parseStringFromZone(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 7
    .parameter "dateStringIn"
    .parameter "isTime"

    .prologue
    .line 210
    const-string v3, ""

    .line 211
    .local v3, dateStringOut:Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 213
    .local v0, ISO8601DateFormat:Ljava/text/SimpleDateFormat;
    const-string v5, "\\+0([0-9]){1}\\:00"

    const-string v6, "+0$100"

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, dateFormatIn:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 216
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd  HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 218
    .local v1, dataFormatOut:Ljava/text/DateFormat;
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 229
    .end local v1           #dataFormatOut:Ljava/text/DateFormat;
    :goto_0
    return-object v3

    .line 219
    :catch_0
    move-exception v4

    .line 220
    .local v4, e:Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 224
    .end local v4           #e:Ljava/text/ParseException;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 225
    .restart local v1       #dataFormatOut:Ljava/text/DateFormat;
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 226
    .end local v1           #dataFormatOut:Ljava/text/DateFormat;
    :catch_1
    move-exception v4

    .line 227
    .restart local v4       #e:Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static previousDay(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "date"
    .parameter "step"

    .prologue
    .line 362
    invoke-static {p0}, Lcom/boohee/utils/DateHelper;->parseString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/boohee/utils/DateHelper;->previousDay(Ljava/util/Date;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static previousDay(Ljava/util/Date;I)Ljava/lang/String;
    .locals 1
    .parameter "date"
    .parameter "step"

    .prologue
    .line 348
    invoke-static {p0, p1}, Lcom/boohee/utils/DateHelper;->addDays(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static timezoneFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "dateString"
    .parameter "outputFormat"

    .prologue
    .line 52
    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {p0, v2}, Lcom/boohee/utils/DateHelper;->parseFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 53
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 54
    .local v1, df:Ljava/text/DateFormat;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static today()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/boohee/utils/DateHelper;->nextDay(Ljava/util/Date;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static tomorrow()Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/boohee/utils/DateHelper;->nextDay(Ljava/util/Date;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static yesterday()Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/boohee/utils/DateHelper;->previousDay(Ljava/util/Date;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
