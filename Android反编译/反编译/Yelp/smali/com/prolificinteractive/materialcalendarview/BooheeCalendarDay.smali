.class public Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;
.super Ljava/lang/Object;
.source "BooheeCalendarDay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay$DayRange;
    }
.end annotation


# instance fields
.field public colorDayMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay$DayRange;",
            ">;>;"
        }
    .end annotation
.end field

.field public mDrawableId:I

.field public maxDrawableDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field public miniDrawableDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->mDrawableId:I

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->colorDayMap:Ljava/util/Map;

    .line 55
    return-void
.end method


# virtual methods
.method public getColorId(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I
    .locals 8
    .parameter "day"

    .prologue
    const/4 v5, -0x1

    .line 36
    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->colorDayMap:Ljava/util/Map;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->colorDayMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v5

    .line 37
    :cond_1
    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->colorDayMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 38
    .local v4, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->colorDayMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 39
    .local v1, dayRangeList:Ljava/util/List;,"Ljava/util/List<Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay$DayRange;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_2

    .line 40
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay$DayRange;

    .line 41
    .local v0, dayRange:Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay$DayRange;
    iget-object v6, v0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay$DayRange;->startDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iget-object v7, v0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay$DayRange;->endDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p1, v6, v7}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isInRange(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0
.end method

.method public getDrawableId(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I
    .locals 3
    .parameter "day"

    .prologue
    const/4 v0, -0x1

    .line 50
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->miniDrawableDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->maxDrawableDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    if-nez v1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->miniDrawableDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->maxDrawableDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p1, v1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isInRange(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->mDrawableId:I

    goto :goto_0
.end method

.method public setColorDayRange(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)V
    .locals 4
    .parameter "startDay"
    .parameter "endDay"
    .parameter "colorId"

    .prologue
    .line 18
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->colorDayMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 19
    .local v1, rangeList:Ljava/util/List;,"Ljava/util/List<Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay$DayRange;>;"
    if-nez v1, :cond_0

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #rangeList:Ljava/util/List;,"Ljava/util/List<Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay$DayRange;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .restart local v1       #rangeList:Ljava/util/List;,"Ljava/util/List<Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay$DayRange;>;"
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->colorDayMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_0
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay$DayRange;

    invoke-direct {v0, p0}, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay$DayRange;-><init>(Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;)V

    .line 24
    .local v0, dayRange:Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay$DayRange;
    iput-object p1, v0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay$DayRange;->startDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 25
    iput-object p2, v0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay$DayRange;->endDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 26
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public setDrawableDayRange(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)V
    .locals 0
    .parameter "startDay"
    .parameter "endDay"
    .parameter "drawableId"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->miniDrawableDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 31
    iput-object p2, p0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->maxDrawableDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 32
    iput p3, p0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->mDrawableId:I

    .line 33
    return-void
.end method
