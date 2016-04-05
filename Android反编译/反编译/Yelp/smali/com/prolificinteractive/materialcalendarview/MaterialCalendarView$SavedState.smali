.class public Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "MaterialCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field color:I

.field dateTextAppearance:I

.field firstDayOfWeek:I

.field maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field showOtherDates:Z

.field tileSizePx:I

.field topbarVisible:Z

.field weekDayTextAppearance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 795
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState$1;

    invoke-direct {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState$1;-><init>()V

    sput-object v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 807
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 765
    iput v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    .line 766
    iput v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    .line 767
    iput v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    .line 768
    iput-boolean v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:Z

    .line 769
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 770
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 771
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 772
    iput v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->firstDayOfWeek:I

    .line 773
    iput v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileSizePx:I

    .line 774
    iput-boolean v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->topbarVisible:Z

    .line 808
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    .line 809
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    .line 810
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    .line 811
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:Z

    .line 812
    const-class v1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 813
    .local v0, loader:Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 814
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 815
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 816
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->firstDayOfWeek:I

    .line 817
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileSizePx:I

    .line 818
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->topbarVisible:Z

    .line 819
    return-void

    .end local v0           #loader:Ljava/lang/ClassLoader;
    :cond_0
    move v1, v3

    .line 811
    goto :goto_0

    .restart local v0       #loader:Ljava/lang/ClassLoader;
    :cond_1
    move v2, v3

    .line 818
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 763
    invoke-direct {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "superState"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 777
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 765
    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    .line 766
    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    .line 767
    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    .line 768
    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:Z

    .line 769
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 770
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 771
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 772
    iput v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->firstDayOfWeek:I

    .line 773
    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileSizePx:I

    .line 774
    iput-boolean v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->topbarVisible:Z

    .line 778
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 782
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 783
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 785
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 788
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 789
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 790
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->firstDayOfWeek:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileSizePx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->topbarVisible:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    return-void

    :cond_0
    move v0, v2

    .line 786
    goto :goto_0

    :cond_1
    move v1, v2

    .line 792
    goto :goto_1
.end method
