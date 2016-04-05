.class public final Lcom/prolificinteractive/materialcalendarview/CalendarDay;
.super Ljava/lang/Object;
.source "CalendarDay.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/CalendarDay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient _calendar:Ljava/util/Calendar;

.field private transient _date:Ljava/util/Date;

.field public bottomDrawableId:I

.field public bottomLineColorId:I

.field private final day:I

.field private final month:I

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 275
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay$1;

    invoke-direct {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay$1;-><init>()V

    sput-object v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Calendar;)V

    .line 84
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->bottomLineColorId:I

    .line 246
    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->bottomDrawableId:I

    .line 107
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    .line 108
    iput p2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    .line 109
    iput p3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    .line 110
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v2, -0x1

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->bottomLineColorId:I

    .line 246
    iput v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->bottomDrawableId:I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    iput-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_calendar:Ljava/util/Calendar;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 270
    .local v0, tmp_date:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_date:Ljava/util/Date;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->bottomLineColorId:I

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->bottomDrawableId:I

    .line 273
    return-void

    .line 270
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 3
    .parameter "calendar"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getYear(Ljava/util/Calendar;)I

    move-result v0

    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getMonth(Ljava/util/Calendar;)I

    move-result v1

    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getDay(Ljava/util/Calendar;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(III)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .parameter "date"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Calendar;)V

    .line 119
    return-void
.end method

.method public static from(III)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {v0, p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(III)V

    return-object v0
.end method

.method public static from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 3
    .parameter "calendar"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getYear(Ljava/util/Calendar;)I

    move-result v0

    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getMonth(Ljava/util/Calendar;)I

    move-result v1

    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getDay(Ljava/util/Calendar;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(III)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    goto :goto_0
.end method

.method public static from(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1
    .parameter "date"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    goto :goto_0
.end method

.method private static hashCode(III)I
    .locals 2
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 237
    mul-int/lit16 v0, p0, 0x2710

    mul-int/lit8 v1, p1, 0x64

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    return v0
.end method

.method public static today()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 23
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public copyTo(Ljava/util/Calendar;)V
    .locals 3
    .parameter "calendar"

    .prologue
    .line 171
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 172
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 173
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 218
    if-ne p0, p1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v1

    .line 221
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 222
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 225
    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 227
    .local v0, that:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    iget v3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    iget v4, v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v4, v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v4, v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_calendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 161
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_calendar:Ljava/util/Calendar;

    .line 162
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_calendar:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->copyTo(Ljava/util/Calendar;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_date:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_date:Ljava/util/Date;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_date:Ljava/util/Date;

    return-object v0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 232
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    invoke-static {v0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->hashCode(III)I

    move-result v0

    return v0
.end method

.method public isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z
    .locals 4
    .parameter "other"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 205
    if-nez p1, :cond_0

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "other cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    if-ne v2, v3, :cond_4

    .line 210
    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    if-le v2, v3, :cond_2

    .line 212
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 210
    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    if-gt v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 212
    :cond_4
    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    if-gt v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z
    .locals 4
    .parameter "other"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 190
    if-nez p1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "other cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    if-ne v2, v3, :cond_4

    .line 194
    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    if-ge v2, v3, :cond_2

    .line 196
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 194
    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    if-lt v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 196
    :cond_4
    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    if-lt v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public isInRange(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z
    .locals 1
    .parameter "minDate"
    .parameter "maxDate"

    .prologue
    .line 181
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 242
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "CalendarDay{%d-%d-%d}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 255
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_calendar:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 259
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_date:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 260
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->bottomLineColorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->bottomDrawableId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    return-void

    .line 259
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
