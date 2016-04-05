.class public Lcom/mechat/mechatlibrary/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TimeUtils"

.field private static TIME_INTERNAL_LIMIT:J

.field private static formattersNoDayStr:Ljava/lang/String;

.field private static formattersStr:Ljava/lang/String;

.field private static today:Ljava/lang/String;

.field private static tomorrow:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-wide/32 v0, 0x1d4c0

    sput-wide v0, Lcom/mechat/mechatlibrary/utils/TimeUtils;->TIME_INTERNAL_LIMIT:J

    .line 17
    const-string v0, "M\u6708d\u65e5"

    sput-object v0, Lcom/mechat/mechatlibrary/utils/TimeUtils;->formattersStr:Ljava/lang/String;

    .line 18
    const-string v0, "H:mm"

    sput-object v0, Lcom/mechat/mechatlibrary/utils/TimeUtils;->formattersNoDayStr:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTimeItem(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mechat/mechatlibrary/bean/MCMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, mcMessageList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCMessage;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, i:I
    :goto_0
    if-gez v4, :cond_0

    .line 46
    return-void

    .line 32
    :cond_0
    if-eqz v4, :cond_1

    .line 33
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mechat/mechatlibrary/bean/MCMessage;

    invoke-virtual {v8}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getCreatedTime()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 34
    .local v0, currentMsgTime:J
    add-int/lit8 v8, v4, -0x1

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mechat/mechatlibrary/bean/MCMessage;

    invoke-virtual {v8}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getCreatedTime()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 35
    .local v6, previousMsgTime:J
    sub-long v2, v0, v6

    .line 36
    .local v2, difTime:J
    sget-wide v8, Lcom/mechat/mechatlibrary/utils/TimeUtils;->TIME_INTERNAL_LIMIT:J

    cmp-long v8, v2, v8

    if-lez v8, :cond_1

    .line 38
    new-instance v5, Lcom/mechat/mechatlibrary/bean/MCTimeItem;

    const-string v8, ""

    const/4 v9, -0x1

    invoke-direct {v5, v8, v9}, Lcom/mechat/mechatlibrary/bean/MCTimeItem;-><init>(Ljava/lang/String;I)V

    .line 40
    .local v5, timeItem:Lcom/mechat/mechatlibrary/bean/MCTimeItem;
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/mechat/mechatlibrary/bean/MCTimeItem;->setDirection(I)V

    .line 41
    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/TimeUtils;->parseTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/mechat/mechatlibrary/bean/MCTimeItem;->setTime(Ljava/lang/String;)V

    .line 42
    invoke-interface {p0, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 30
    .end local v0           #currentMsgTime:J
    .end local v2           #difTime:J
    .end local v5           #timeItem:Lcom/mechat/mechatlibrary/bean/MCTimeItem;
    .end local v6           #previousMsgTime:J
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0
.end method

.method private static getTodayZeroTime()J
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 89
    .local v0, cal:Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 90
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 91
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 92
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 93
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private static getYestodayZeroTime()J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 99
    .local v0, cal:Ljava/util/Calendar;
    const/16 v1, 0xb

    const/16 v2, -0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 100
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 101
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 102
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 103
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "formattersStr"
    .parameter "today"
    .parameter "tomorrow"

    .prologue
    .line 23
    sput-object p0, Lcom/mechat/mechatlibrary/utils/TimeUtils;->formattersStr:Ljava/lang/String;

    .line 24
    sput-object p1, Lcom/mechat/mechatlibrary/utils/TimeUtils;->today:Ljava/lang/String;

    .line 25
    sput-object p2, Lcom/mechat/mechatlibrary/utils/TimeUtils;->tomorrow:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private static parseTime(J)Ljava/lang/String;
    .locals 6
    .parameter "time"

    .prologue
    .line 62
    const-string v3, ""

    .line 64
    .local v3, timeStr:Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 65
    .local v0, curDates:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v4, Lcom/mechat/mechatlibrary/utils/TimeUtils;->formattersNoDayStr:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, formatters:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-static {}, Lcom/mechat/mechatlibrary/utils/TimeUtils;->getTodayZeroTime()J

    move-result-wide v4

    cmp-long v4, p0, v4

    if-lez v4, :cond_0

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/mechat/mechatlibrary/utils/TimeUtils;->today:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    :goto_0
    return-object v3

    .line 74
    :cond_0
    invoke-static {}, Lcom/mechat/mechatlibrary/utils/TimeUtils;->getYestodayZeroTime()J

    move-result-wide v4

    cmp-long v4, p0, v4

    if-lez v4, :cond_1

    invoke-static {}, Lcom/mechat/mechatlibrary/utils/TimeUtils;->getTodayZeroTime()J

    move-result-wide v4

    cmp-long v4, p0, v4

    if-gez v4, :cond_1

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/mechat/mechatlibrary/utils/TimeUtils;->tomorrow:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    goto :goto_0

    .line 79
    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v4, Lcom/mechat/mechatlibrary/utils/TimeUtils;->formattersStr:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, formatters2:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static refreshTimeItem(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mechat/mechatlibrary/bean/MCMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, mcMessageList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCMessage;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 57
    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/TimeUtils;->addTimeItem(Ljava/util/List;)V

    .line 58
    return-void

    .line 51
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/mechat/mechatlibrary/bean/MCTimeItem;

    if-eqz v1, :cond_1

    .line 54
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 50
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
