.class public Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay$DayRange;
.super Ljava/lang/Object;
.source "BooheeCalendarDay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DayRange"
.end annotation


# instance fields
.field public endDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field public startDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field final synthetic this$0:Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;


# direct methods
.method public constructor <init>(Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay$DayRange;->this$0:Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
