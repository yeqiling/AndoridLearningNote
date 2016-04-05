.class public Lcom/prolificinteractive/materialcalendarview/format/CalendarWeekDayFormatter;
.super Ljava/lang/Object;
.source "CalendarWeekDayFormatter.java"

# interfaces
.implements Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;


# instance fields
.field private final calendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/format/CalendarWeekDayFormatter;->calendar:Ljava/util/Calendar;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0
    .parameter "calendar"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/format/CalendarWeekDayFormatter;->calendar:Ljava/util/Calendar;

    .line 22
    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/CharSequence;
    .locals 4
    .parameter "dayOfWeek"

    .prologue
    const/4 v3, 0x7

    .line 30
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/format/CalendarWeekDayFormatter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 31
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/format/CalendarWeekDayFormatter;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
