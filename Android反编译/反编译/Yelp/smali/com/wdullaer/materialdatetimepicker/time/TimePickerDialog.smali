.class public Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;
.super Landroid/app/DialogFragment;
.source "TimePickerDialog.java"

# interfaces
.implements Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;
.implements Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$KeyboardListener;,
        Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;,
        Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field public static final AM:I = 0x0

.field public static final AMPM_INDEX:I = 0x2

.field public static final ENABLE_PICKER_INDEX:I = 0x3

.field public static final HOUR_INDEX:I = 0x0

.field private static final KEY_ACCENT:Ljava/lang/String; = "accent"

.field private static final KEY_CURRENT_ITEM_SHOWING:Ljava/lang/String; = "current_item_showing"

.field private static final KEY_DARK_THEME:Ljava/lang/String; = "dark_theme"

.field private static final KEY_DISMISS:Ljava/lang/String; = "dismiss"

.field private static final KEY_HOUR_OF_DAY:Ljava/lang/String; = "hour_of_day"

.field private static final KEY_IN_KB_MODE:Ljava/lang/String; = "in_kb_mode"

.field private static final KEY_IS_24_HOUR_VIEW:Ljava/lang/String; = "is_24_hour_view"

.field private static final KEY_MINUTE:Ljava/lang/String; = "minute"

.field private static final KEY_TITLE:Ljava/lang/String; = "dialog_title"

.field private static final KEY_TYPED_TIMES:Ljava/lang/String; = "typed_times"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate"

.field public static final MINUTE_INDEX:I = 0x1

.field public static final PM:I = 0x1

.field private static final PULSE_ANIMATOR_DELAY:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "TimePickerDialog"


# instance fields
.field private mAccentColor:I

.field private mAllowAutoAdvance:Z

.field private mAmKeyCode:I

.field private mAmPmHitspace:Landroid/view/View;

.field private mAmPmTextView:Landroid/widget/TextView;

.field private mAmText:Ljava/lang/String;

.field private mCallback:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

.field private mCancelButton:Landroid/widget/Button;

.field private mDeletedKeyFormat:Ljava/lang/String;

.field private mDismissOnPause:Z

.field private mDoublePlaceholderText:Ljava/lang/String;

.field private mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

.field private mHourPickerDescription:Ljava/lang/String;

.field private mHourSpaceView:Landroid/widget/TextView;

.field private mHourView:Landroid/widget/TextView;

.field private mInKbMode:Z

.field private mInitialHourOfDay:I

.field private mInitialMinute:I

.field private mIs24HourMode:Z

.field private mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

.field private mMinutePickerDescription:Ljava/lang/String;

.field private mMinuteSpaceView:Landroid/widget/TextView;

.field private mMinuteView:Landroid/widget/TextView;

.field private mOkButton:Landroid/widget/Button;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPlaceholderText:C

.field private mPmKeyCode:I

.field private mPmText:Ljava/lang/String;

.field private mSelectHours:Ljava/lang/String;

.field private mSelectMinutes:Ljava/lang/String;

.field private mSelectedColor:I

.field private mThemeDark:Z

.field private mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

.field private mTitle:Ljava/lang/String;

.field private mTypedTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUnselectedColor:I

.field private mVibrate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    .line 143
    return-void
.end method

.method static synthetic access$100(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;IZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCallback:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->processKeyUp(I)Z

    move-result v0

    return v0
.end method

.method private addKeyIfLegal(I)Z
    .locals 8
    .parameter "keyCode"

    .prologue
    const/4 v7, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 679
    iget-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 701
    :cond_1
    :goto_0
    return v1

    .line 684
    :cond_2
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeLegalSoFar()Z

    move-result v3

    if-nez v3, :cond_3

    .line 686
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->deleteLastTypedKey()I

    goto :goto_0

    .line 690
    :cond_3
    invoke-static {p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getValFromKeyCode(I)I

    move-result v0

    .line 691
    .local v0, val:I
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 693
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 694
    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x3

    if-gt v1, v3, :cond_4

    .line 695
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 696
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 698
    :cond_4
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    move v1, v2

    .line 701
    goto :goto_0
.end method

.method private deleteLastTypedKey()I
    .locals 3

    .prologue
    .line 737
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 738
    .local v0, deleted:I
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 739
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 741
    :cond_0
    return v0
.end method

.method private finishKbMode(Z)V
    .locals 6
    .parameter "updateDisplays"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 749
    iput-boolean v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 750
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 751
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v0

    .line 752
    .local v0, values:[I
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-virtual {v1, v2, v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setTime(II)V

    .line 753
    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v1, :cond_0

    .line 754
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 758
    .end local v0           #values:[I
    :cond_1
    if-eqz p1, :cond_2

    .line 759
    invoke-direct {p0, v4}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    .line 760
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1, v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->trySettingInputEnabled(Z)Z

    .line 762
    :cond_2
    return-void
.end method

.method private generateLegalTimesTree()V
    .locals 22

    .prologue
    .line 914
    const/4 v5, 0x7

    .line 915
    .local v5, k0:I
    const/16 v6, 0x8

    .line 916
    .local v6, k1:I
    const/16 v7, 0x9

    .line 917
    .local v7, k2:I
    const/16 v8, 0xa

    .line 918
    .local v8, k3:I
    const/16 v9, 0xb

    .line 919
    .local v9, k4:I
    const/16 v10, 0xc

    .line 920
    .local v10, k5:I
    const/16 v11, 0xd

    .line 921
    .local v11, k6:I
    const/16 v12, 0xe

    .line 922
    .local v12, k7:I
    const/16 v13, 0xf

    .line 923
    .local v13, k8:I
    const/16 v14, 0x10

    .line 926
    .local v14, k9:I
    new-instance v19, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .line 927
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 929
    new-instance v15, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v5, v19, v20

    const/16 v20, 0x1

    aput v6, v19, v20

    const/16 v20, 0x2

    aput v7, v19, v20

    const/16 v20, 0x3

    aput v8, v19, v20

    const/16 v20, 0x4

    aput v9, v19, v20

    const/16 v20, 0x5

    aput v10, v19, v20

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 930
    .local v15, minuteFirstDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    new-instance v16, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v19, 0xa

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v5, v19, v20

    const/16 v20, 0x1

    aput v6, v19, v20

    const/16 v20, 0x2

    aput v7, v19, v20

    const/16 v20, 0x3

    aput v8, v19, v20

    const/16 v20, 0x4

    aput v9, v19, v20

    const/16 v20, 0x5

    aput v10, v19, v20

    const/16 v20, 0x6

    aput v11, v19, v20

    const/16 v20, 0x7

    aput v12, v19, v20

    const/16 v20, 0x8

    aput v13, v19, v20

    const/16 v20, 0x9

    aput v14, v19, v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 932
    .local v16, minuteSecondDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    invoke-virtual/range {v15 .. v16}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 935
    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v5, v19, v20

    const/16 v20, 0x1

    aput v6, v19, v20

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 936
    .local v3, firstDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 939
    new-instance v17, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v5, v19, v20

    const/16 v20, 0x1

    aput v6, v19, v20

    const/16 v20, 0x2

    aput v7, v19, v20

    const/16 v20, 0x3

    aput v8, v19, v20

    const/16 v20, 0x4

    aput v9, v19, v20

    const/16 v20, 0x5

    aput v10, v19, v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 940
    .local v17, secondDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 942
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 945
    new-instance v18, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v11, v19, v20

    const/16 v20, 0x1

    aput v12, v19, v20

    const/16 v20, 0x2

    aput v13, v19, v20

    const/16 v20, 0x3

    aput v14, v19, v20

    invoke-direct/range {v18 .. v19}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 947
    .local v18, thirdDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    invoke-virtual/range {v17 .. v18}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 950
    new-instance v17, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v17           #secondDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v11, v19, v20

    const/16 v20, 0x1

    aput v12, v19, v20

    const/16 v20, 0x2

    aput v13, v19, v20

    const/16 v20, 0x3

    aput v14, v19, v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 951
    .restart local v17       #secondDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 953
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 956
    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v3           #firstDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v7, v19, v20

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 957
    .restart local v3       #firstDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 960
    new-instance v17, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v17           #secondDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v5, v19, v20

    const/16 v20, 0x1

    aput v6, v19, v20

    const/16 v20, 0x2

    aput v7, v19, v20

    const/16 v20, 0x3

    aput v8, v19, v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 961
    .restart local v17       #secondDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 963
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 966
    new-instance v17, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v17           #secondDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v9, v19, v20

    const/16 v20, 0x1

    aput v10, v19, v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 967
    .restart local v17       #secondDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 969
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 972
    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v3           #firstDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v19, 0x7

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v8, v19, v20

    const/16 v20, 0x1

    aput v9, v19, v20

    const/16 v20, 0x2

    aput v10, v19, v20

    const/16 v20, 0x3

    aput v11, v19, v20

    const/16 v20, 0x4

    aput v12, v19, v20

    const/16 v20, 0x5

    aput v13, v19, v20

    const/16 v20, 0x6

    aput v14, v19, v20

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 973
    .restart local v3       #firstDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 975
    invoke-virtual {v3, v15}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1038
    .end local v15           #minuteFirstDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    .end local v16           #minuteSecondDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    :goto_0
    return-void

    .line 979
    .end local v3           #firstDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    .end local v17           #secondDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    .end local v18           #thirdDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    :cond_0
    new-instance v2, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v21

    aput v21, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v21

    aput v21, v19, v20

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 982
    .local v2, ampm:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v6, v19, v20

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 983
    .restart local v3       #firstDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 985
    invoke-virtual {v3, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 988
    new-instance v17, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v5, v19, v20

    const/16 v20, 0x1

    aput v6, v19, v20

    const/16 v20, 0x2

    aput v7, v19, v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 989
    .restart local v17       #secondDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 991
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 994
    new-instance v18, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v5, v19, v20

    const/16 v20, 0x1

    aput v6, v19, v20

    const/16 v20, 0x2

    aput v7, v19, v20

    const/16 v20, 0x3

    aput v8, v19, v20

    const/16 v20, 0x4

    aput v9, v19, v20

    const/16 v20, 0x5

    aput v10, v19, v20

    invoke-direct/range {v18 .. v19}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 995
    .restart local v18       #thirdDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    invoke-virtual/range {v17 .. v18}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 997
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1001
    new-instance v4, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v19, 0xa

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v5, v19, v20

    const/16 v20, 0x1

    aput v6, v19, v20

    const/16 v20, 0x2

    aput v7, v19, v20

    const/16 v20, 0x3

    aput v8, v19, v20

    const/16 v20, 0x4

    aput v9, v19, v20

    const/16 v20, 0x5

    aput v10, v19, v20

    const/16 v20, 0x6

    aput v11, v19, v20

    const/16 v20, 0x7

    aput v12, v19, v20

    const/16 v20, 0x8

    aput v13, v19, v20

    const/16 v20, 0x9

    aput v14, v19, v20

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1002
    .local v4, fourthDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1004
    invoke-virtual {v4, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1007
    new-instance v18, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v18           #thirdDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v11, v19, v20

    const/16 v20, 0x1

    aput v12, v19, v20

    const/16 v20, 0x2

    aput v13, v19, v20

    const/16 v20, 0x3

    aput v14, v19, v20

    invoke-direct/range {v18 .. v19}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1008
    .restart local v18       #thirdDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    invoke-virtual/range {v17 .. v18}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1010
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1013
    new-instance v17, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v17           #secondDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v8, v19, v20

    const/16 v20, 0x1

    aput v9, v19, v20

    const/16 v20, 0x2

    aput v10, v19, v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1014
    .restart local v17       #secondDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1017
    new-instance v18, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v18           #thirdDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v19, 0xa

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v5, v19, v20

    const/16 v20, 0x1

    aput v6, v19, v20

    const/16 v20, 0x2

    aput v7, v19, v20

    const/16 v20, 0x3

    aput v8, v19, v20

    const/16 v20, 0x4

    aput v9, v19, v20

    const/16 v20, 0x5

    aput v10, v19, v20

    const/16 v20, 0x6

    aput v11, v19, v20

    const/16 v20, 0x7

    aput v12, v19, v20

    const/16 v20, 0x8

    aput v13, v19, v20

    const/16 v20, 0x9

    aput v14, v19, v20

    invoke-direct/range {v18 .. v19}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1018
    .restart local v18       #thirdDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    invoke-virtual/range {v17 .. v18}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1020
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1023
    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v3           #firstDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v19, 0x8

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v7, v19, v20

    const/16 v20, 0x1

    aput v8, v19, v20

    const/16 v20, 0x2

    aput v9, v19, v20

    const/16 v20, 0x3

    aput v10, v19, v20

    const/16 v20, 0x4

    aput v11, v19, v20

    const/16 v20, 0x5

    aput v12, v19, v20

    const/16 v20, 0x6

    aput v13, v19, v20

    const/16 v20, 0x7

    aput v14, v19, v20

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1024
    .restart local v3       #firstDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1026
    invoke-virtual {v3, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1029
    new-instance v17, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v17           #secondDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v5, v19, v20

    const/16 v20, 0x1

    aput v6, v19, v20

    const/16 v20, 0x2

    aput v7, v19, v20

    const/16 v20, 0x3

    aput v8, v19, v20

    const/16 v20, 0x4

    aput v9, v19, v20

    const/16 v20, 0x5

    aput v10, v19, v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1030
    .restart local v17       #secondDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1033
    new-instance v18, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v18           #thirdDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v19, 0xa

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v5, v19, v20

    const/16 v20, 0x1

    aput v6, v19, v20

    const/16 v20, 0x2

    aput v7, v19, v20

    const/16 v20, 0x3

    aput v8, v19, v20

    const/16 v20, 0x4

    aput v9, v19, v20

    const/16 v20, 0x5

    aput v10, v19, v20

    const/16 v20, 0x6

    aput v11, v19, v20

    const/16 v20, 0x7

    aput v12, v19, v20

    const/16 v20, 0x8

    aput v13, v19, v20

    const/16 v20, 0x9

    aput v14, v19, v20

    invoke-direct/range {v18 .. v19}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1034
    .restart local v18       #thirdDigit:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    invoke-virtual/range {v17 .. v18}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1036
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    goto/16 :goto_0
.end method

.method private getAmOrPmKeyCode(I)I
    .locals 11
    .parameter "amOrPm"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, -0x1

    .line 879
    iget v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    if-eq v6, v5, :cond_0

    iget v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    if-ne v6, v5, :cond_1

    .line 881
    :cond_0
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    .line 884
    .local v3, kcm:Landroid/view/KeyCharacterMap;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 885
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 886
    .local v0, amChar:C
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 887
    .local v4, pmChar:C
    if-eq v0, v4, :cond_4

    .line 888
    new-array v6, v10, [C

    aput-char v0, v6, v8

    aput-char v4, v6, v9

    invoke-virtual {v3, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v1

    .line 890
    .local v1, events:[Landroid/view/KeyEvent;
    if-eqz v1, :cond_3

    array-length v6, v1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 891
    aget-object v6, v1, v8

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    iput v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    .line 892
    aget-object v6, v1, v10

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    iput v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    .line 900
    .end local v0           #amChar:C
    .end local v1           #events:[Landroid/view/KeyEvent;
    .end local v2           #i:I
    .end local v3           #kcm:Landroid/view/KeyCharacterMap;
    .end local v4           #pmChar:C
    :cond_1
    :goto_1
    if-nez p1, :cond_5

    .line 901
    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    .line 906
    :cond_2
    :goto_2
    return v5

    .line 894
    .restart local v0       #amChar:C
    .restart local v1       #events:[Landroid/view/KeyEvent;
    .restart local v2       #i:I
    .restart local v3       #kcm:Landroid/view/KeyCharacterMap;
    .restart local v4       #pmChar:C
    :cond_3
    const-string v6, "TimePickerDialog"

    const-string v7, "Unable to find keycodes for AM and PM."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 884
    .end local v1           #events:[Landroid/view/KeyEvent;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 902
    .end local v0           #amChar:C
    .end local v2           #i:I
    .end local v3           #kcm:Landroid/view/KeyCharacterMap;
    .end local v4           #pmChar:C
    :cond_5
    if-ne p1, v9, :cond_2

    .line 903
    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    goto :goto_2
.end method

.method private getEnteredTime([Ljava/lang/Boolean;)[I
    .locals 11
    .parameter "enteredZeros"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 839
    const/4 v0, -0x1

    .line 840
    .local v0, amOrPm:I
    const/4 v5, 0x1

    .line 841
    .local v5, startIndex:I
    iget-boolean v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v7, :cond_1

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 842
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 843
    .local v3, keyCode:I
    invoke-direct {p0, v10}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v7

    if-ne v3, v7, :cond_3

    .line 844
    const/4 v0, 0x0

    .line 848
    :cond_0
    :goto_0
    const/4 v5, 0x2

    .line 850
    .end local v3           #keyCode:I
    :cond_1
    const/4 v4, -0x1

    .line 851
    .local v4, minute:I
    const/4 v1, -0x1

    .line 852
    .local v1, hour:I
    move v2, v5

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v2, v7, :cond_7

    .line 853
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getValFromKeyCode(I)I

    move-result v6

    .line 854
    .local v6, val:I
    if-ne v2, v5, :cond_4

    .line 855
    move v4, v6

    .line 852
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 845
    .end local v1           #hour:I
    .end local v2           #i:I
    .end local v4           #minute:I
    .end local v6           #val:I
    .restart local v3       #keyCode:I
    :cond_3
    invoke-direct {p0, v9}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v7

    if-ne v3, v7, :cond_0

    .line 846
    const/4 v0, 0x1

    goto :goto_0

    .line 856
    .end local v3           #keyCode:I
    .restart local v1       #hour:I
    .restart local v2       #i:I
    .restart local v4       #minute:I
    .restart local v6       #val:I
    :cond_4
    add-int/lit8 v7, v5, 0x1

    if-ne v2, v7, :cond_5

    .line 857
    mul-int/lit8 v7, v6, 0xa

    add-int/2addr v4, v7

    .line 858
    if-eqz p1, :cond_2

    if-nez v6, :cond_2

    .line 859
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, p1, v9

    goto :goto_2

    .line 861
    :cond_5
    add-int/lit8 v7, v5, 0x2

    if-ne v2, v7, :cond_6

    .line 862
    move v1, v6

    goto :goto_2

    .line 863
    :cond_6
    add-int/lit8 v7, v5, 0x3

    if-ne v2, v7, :cond_2

    .line 864
    mul-int/lit8 v7, v6, 0xa

    add-int/2addr v1, v7

    .line 865
    if-eqz p1, :cond_2

    if-nez v6, :cond_2

    .line 866
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, p1, v10

    goto :goto_2

    .line 871
    .end local v6           #val:I
    :cond_7
    const/4 v7, 0x3

    new-array v7, v7, [I

    aput v1, v7, v10

    aput v4, v7, v9

    const/4 v8, 0x2

    aput v0, v7, v8

    return-object v7
.end method

.method private static getValFromKeyCode(I)I
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 804
    packed-switch p0, :pswitch_data_0

    .line 826
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 806
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 808
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 810
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 812
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 814
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 816
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 818
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 820
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 822
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 824
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 804
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private isTypedTimeFullyLegal()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 723
    iget-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v3, :cond_1

    .line 726
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v0

    .line 727
    .local v0, values:[I
    aget v3, v0, v2

    if-ltz v3, :cond_0

    aget v3, v0, v1

    if-ltz v3, :cond_0

    aget v3, v0, v1

    const/16 v4, 0x3c

    if-ge v3, v4, :cond_0

    .line 731
    .end local v0           #values:[I
    :goto_0
    return v1

    .restart local v0       #values:[I
    :cond_0
    move v1, v2

    .line 727
    goto :goto_0

    .line 731
    .end local v0           #values:[I
    :cond_1
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private isTypedTimeLegalSoFar()Z
    .locals 4

    .prologue
    .line 709
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .line 710
    .local v2, node:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 711
    .local v1, keyCode:I
    invoke-virtual {v2, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->canReach(I)Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    move-result-object v2

    .line 712
    if-nez v2, :cond_0

    .line 713
    const/4 v3, 0x0

    .line 716
    .end local v1           #keyCode:I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static newInstance(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;
    .locals 1
    .parameter "callback"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "is24HourMode"

    .prologue
    .line 154
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;-><init>()V

    .line 155
    .local v0, ret:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->initialize(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 156
    return-object v0
.end method

.method private processKeyUp(I)Z
    .locals 7
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 594
    const/16 v4, 0x6f

    if-eq p1, v4, :cond_0

    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    .line 595
    :cond_0
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isCancelable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->dismiss()V

    .line 657
    :cond_1
    :goto_0
    return v2

    .line 597
    :cond_2
    const/16 v4, 0x3d

    if-ne p1, v4, :cond_3

    .line 598
    iget-boolean v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v4, :cond_7

    .line 599
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 600
    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    goto :goto_0

    .line 604
    :cond_3
    const/16 v4, 0x42

    if-ne p1, v4, :cond_6

    .line 605
    iget-boolean v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v4, :cond_4

    .line 606
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 609
    invoke-direct {p0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    .line 611
    :cond_4
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCallback:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    if-eqz v3, :cond_5

    .line 612
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCallback:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v5

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;II)V

    .line 615
    :cond_5
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->dismiss()V

    goto :goto_0

    .line 617
    :cond_6
    const/16 v4, 0x43

    if-ne p1, v4, :cond_a

    .line 618
    iget-boolean v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v4, :cond_7

    .line 619
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 620
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->deleteLastTypedKey()I

    move-result v0

    .line 622
    .local v0, deleted:I
    invoke-direct {p0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_8

    .line 623
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    .line 629
    .local v1, deletedKeyStr:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDeletedKeyFormat:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 631
    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    .end local v0           #deleted:I
    .end local v1           #deletedKeyStr:Ljava/lang/String;
    :cond_7
    move v2, v3

    .line 657
    goto :goto_0

    .line 624
    .restart local v0       #deleted:I
    :cond_8
    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_9

    .line 625
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    .restart local v1       #deletedKeyStr:Ljava/lang/String;
    goto :goto_1

    .line 627
    .end local v1           #deletedKeyStr:Ljava/lang/String;
    :cond_9
    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getValFromKeyCode(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #deletedKeyStr:Ljava/lang/String;
    goto :goto_1

    .line 634
    .end local v0           #deleted:I
    .end local v1           #deletedKeyStr:Ljava/lang/String;
    :cond_a
    const/4 v4, 0x7

    if-eq p1, v4, :cond_b

    const/16 v4, 0x8

    if-eq p1, v4, :cond_b

    const/16 v4, 0x9

    if-eq p1, v4, :cond_b

    const/16 v4, 0xa

    if-eq p1, v4, :cond_b

    const/16 v4, 0xb

    if-eq p1, v4, :cond_b

    const/16 v4, 0xc

    if-eq p1, v4, :cond_b

    const/16 v4, 0xd

    if-eq p1, v4, :cond_b

    const/16 v4, 0xe

    if-eq p1, v4, :cond_b

    const/16 v4, 0xf

    if-eq p1, v4, :cond_b

    const/16 v4, 0x10

    if-eq p1, v4, :cond_b

    iget-boolean v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v4, :cond_7

    invoke-direct {p0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-eq p1, v4, :cond_b

    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne p1, v4, :cond_7

    .line 641
    :cond_b
    iget-boolean v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-nez v4, :cond_d

    .line 642
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    if-nez v3, :cond_c

    .line 644
    const-string v3, "TimePickerDialog"

    const-string v4, "Unable to initiate keyboard mode, TimePicker was null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 647
    :cond_c
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 648
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->tryStartingKbMode(I)V

    goto/16 :goto_0

    .line 652
    :cond_d
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->addKeyIfLegal(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 653
    invoke-direct {p0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    goto/16 :goto_0
.end method

.method private setCurrentItemShowing(IZZZ)V
    .locals 9
    .parameter "index"
    .parameter "animateCircle"
    .parameter "delayLabelAnimate"
    .parameter "announce"

    .prologue
    .line 554
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v6, p1, p2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setCurrentItemShowing(IZ)V

    .line 557
    if-nez p1, :cond_3

    .line 558
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v1

    .line 559
    .local v1, hours:I
    iget-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v6, :cond_0

    .line 560
    rem-int/lit8 v1, v1, 0xc

    .line 562
    :cond_0
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 563
    if-eqz p4, :cond_1

    .line 564
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectHours:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 566
    :cond_1
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    .line 576
    .end local v1           #hours:I
    .local v2, labelToAnimate:Landroid/widget/TextView;
    :goto_0
    if-nez p1, :cond_5

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectedColor:I

    .line 577
    .local v0, hourColor:I
    :goto_1
    const/4 v6, 0x1

    if-ne p1, v6, :cond_6

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectedColor:I

    .line 578
    .local v3, minuteColor:I
    :goto_2
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 579
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 581
    const v6, 0x3f59999a

    const v7, 0x3f8ccccd

    invoke-static {v2, v6, v7}, Lcom/wdullaer/materialdatetimepicker/Utils;->getPulseAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 582
    .local v5, pulseAnimator:Landroid/animation/ObjectAnimator;
    if-eqz p3, :cond_2

    .line 583
    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 585
    :cond_2
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 586
    return-void

    .line 568
    .end local v0           #hourColor:I
    .end local v2           #labelToAnimate:Landroid/widget/TextView;
    .end local v3           #minuteColor:I
    .end local v5           #pulseAnimator:Landroid/animation/ObjectAnimator;
    :cond_3
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v4

    .line 569
    .local v4, minutes:I
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 570
    if-eqz p4, :cond_4

    .line 571
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 573
    :cond_4
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    .restart local v2       #labelToAnimate:Landroid/widget/TextView;
    goto :goto_0

    .line 576
    .end local v4           #minutes:I
    :cond_5
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    goto :goto_1

    .line 577
    .restart local v0       #hourColor:I
    :cond_6
    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    goto :goto_2
.end method

.method private setHour(IZ)V
    .locals 5
    .parameter "value"
    .parameter "announce"

    .prologue
    .line 523
    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v2, :cond_2

    .line 524
    const-string v0, "%02d"

    .line 533
    .local v0, format:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, text:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    if-eqz p2, :cond_1

    .line 537
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v2, v1}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 539
    :cond_1
    return-void

    .line 526
    .end local v0           #format:Ljava/lang/String;
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_2
    const-string v0, "%d"

    .line 527
    .restart local v0       #format:Ljava/lang/String;
    rem-int/lit8 p1, p1, 0xc

    .line 528
    if-nez p1, :cond_0

    .line 529
    const/16 p1, 0xc

    goto :goto_0
.end method

.method private setMinute(I)V
    .locals 6
    .parameter "value"

    .prologue
    .line 542
    const/16 v1, 0x3c

    if-ne p1, v1, :cond_0

    .line 543
    const/4 p1, 0x0

    .line 545
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, text:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 547
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    return-void
.end method

.method private tryStartingKbMode(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    const/4 v1, 0x0

    .line 668
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->trySettingInputEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->addKeyIfLegal(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 671
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 672
    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    .line 674
    :cond_1
    return-void
.end method

.method private updateAmPmDisplay(I)V
    .locals 2
    .parameter "amOrPm"

    .prologue
    .line 460
    if-nez p1, :cond_0

    .line 461
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 471
    :goto_0
    return-void

    .line 464
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 467
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDisplay(Z)V
    .locals 12
    .parameter "allowEmptyDisplay"

    .prologue
    .line 772
    if-nez p1, :cond_3

    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 773
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v8}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v1

    .line 774
    .local v1, hour:I
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v8}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v4

    .line 775
    .local v4, minute:I
    const/4 v8, 0x1

    invoke-direct {p0, v1, v8}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setHour(IZ)V

    .line 776
    invoke-direct {p0, v4}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setMinute(I)V

    .line 777
    iget-boolean v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v8, :cond_0

    .line 778
    const/16 v8, 0xc

    if-ge v1, v8, :cond_2

    const/4 v8, 0x0

    :goto_0
    invoke-direct {p0, v8}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    .line 780
    :cond_0
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v8}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 781
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 801
    .end local v1           #hour:I
    .end local v4           #minute:I
    :cond_1
    :goto_1
    return-void

    .line 778
    .restart local v1       #hour:I
    .restart local v4       #minute:I
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 783
    .end local v1           #hour:I
    .end local v4           #minute:I
    :cond_3
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/Boolean;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v0, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v0, v8

    .line 784
    .local v0, enteredZeros:[Ljava/lang/Boolean;
    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v7

    .line 785
    .local v7, values:[I
    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v2, "%02d"

    .line 786
    .local v2, hourFormat:Ljava/lang/String;
    :goto_2
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v5, "%02d"

    .line 787
    .local v5, minuteFormat:Ljava/lang/String;
    :goto_3
    const/4 v8, 0x0

    aget v8, v7, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 789
    .local v3, hourStr:Ljava/lang/String;
    :goto_4
    const/4 v8, 0x1

    aget v8, v7, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 791
    .local v6, minuteStr:Ljava/lang/String;
    :goto_5
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    iget v9, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 794
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    iget v9, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 797
    iget-boolean v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v8, :cond_1

    .line 798
    const/4 v8, 0x2

    aget v8, v7, v8

    invoke-direct {p0, v8}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    goto :goto_1

    .line 785
    .end local v2           #hourFormat:Ljava/lang/String;
    .end local v3           #hourStr:Ljava/lang/String;
    .end local v5           #minuteFormat:Ljava/lang/String;
    .end local v6           #minuteStr:Ljava/lang/String;
    :cond_4
    const-string v2, "%2d"

    goto :goto_2

    .line 786
    .restart local v2       #hourFormat:Ljava/lang/String;
    :cond_5
    const-string v5, "%2d"

    goto :goto_3

    .line 787
    .restart local v5       #minuteFormat:Ljava/lang/String;
    :cond_6
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    iget-char v10, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 789
    .restart local v3       #hourStr:Ljava/lang/String;
    :cond_7
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    aget v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    iget-char v10, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    goto :goto_5
.end method


# virtual methods
.method public dismissOnPause(Z)V
    .locals 0
    .parameter "dismissOnPause"

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDismissOnPause:Z

    .line 225
    return-void
.end method

.method public getAccentColor()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 2
    .parameter "callback"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "is24HourMode"

    .prologue
    const/4 v1, 0x0

    .line 161
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCallback:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    .line 163
    iput p2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    .line 164
    iput p3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialMinute:I

    .line 165
    iput-boolean p4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    .line 166
    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 167
    const-string v0, ""

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    .line 168
    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVibrate:Z

    .line 171
    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDismissOnPause:Z

    .line 172
    return-void
.end method

.method public is24HourMode()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    return v0
.end method

.method public isThemeDark()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 444
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 445
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 446
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 248
    if-eqz p1, :cond_0

    const-string v0, "hour_of_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "minute"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "is_24_hour_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const-string v0, "hour_of_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    .line 252
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialMinute:I

    .line 253
    const-string v0, "is_24_hour_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    .line 254
    const-string v0, "in_kb_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 255
    const-string v0, "dialog_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    .line 256
    const-string v0, "dark_theme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    .line 257
    const-string v0, "accent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    .line 258
    const-string v0, "vibrate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVibrate:Z

    .line 259
    const-string v0, "dismiss"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDismissOnPause:Z

    .line 261
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 20
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 268
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$layout;->mdtp_time_picker_dialog:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 269
    .local v19, view:Landroid/view/View;
    new-instance v13, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$KeyboardListener;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$KeyboardListener;-><init>(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$1;)V

    .line 270
    .local v13, keyboardListener:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$KeyboardListener;
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$id;->time_picker_dialog:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 273
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/wdullaer/materialdatetimepicker/Utils;->getAccentColorFromThemeIfAvailable(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    .line 277
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 278
    .local v16, res:Landroid/content/res/Resources;
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_hour_picker_description:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    .line 279
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_select_hours:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectHours:Ljava/lang/String;

    .line 280
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_minute_picker_description:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    .line 281
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_select_minutes:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    .line 282
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_white:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectedColor:I

    .line 283
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_accent_color_focused:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    .line 285
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$id;->hours:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 287
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$id;->hour_space:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    .line 288
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$id;->minutes_space:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    .line 289
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$id;->minutes:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 291
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$id;->ampm_label:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 293
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v8

    .line 294
    .local v8, amPmTexts:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v8, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    .line 295
    const/4 v2, 0x1

    aget-object v2, v8, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    .line 297
    new-instance v2, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    .line 299
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$id;->time_picker:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setOnValueSelectedListener(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2, v13}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialMinute:I

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    move-object/from16 v4, p0

    invoke-virtual/range {v2 .. v7}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->initialize(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;IIZ)V

    .line 305
    const/4 v11, 0x0

    .line 306
    .local v11, currentItemShowing:I
    if-eqz p3, :cond_1

    const-string v2, "current_item_showing"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    const-string v2, "current_item_showing"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 310
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2, v3, v4}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->invalidate()V

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$1;-><init>(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$2;-><init>(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$id;->ok:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$3;-><init>(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v2, v13}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Roboto-Medium"

    invoke-static {v3, v4}, Lcom/wdullaer/materialdatetimepicker/TypefaceHelper;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 347
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$id;->cancel:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$4;-><init>(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Roboto-Medium"

    invoke-static {v3, v4}, Lcom/wdullaer/materialdatetimepicker/TypefaceHelper;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isCancelable()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 359
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$id;->ampm_hitspace:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    .line 360
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v2, :cond_5

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v15, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 365
    .local v15, paramsSeparator:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 366
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$id;->separator:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 367
    .local v17, separatorView:Landroid/widget/TextView;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    .end local v15           #paramsSeparator:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v17           #separatorView:Landroid/widget/TextView;
    :goto_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAllowAutoAdvance:Z

    .line 388
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setHour(IZ)V

    .line 389
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialMinute:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setMinute(I)V

    .line 392
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_time_placeholder:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 393
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_deleted_key:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDeletedKeyFormat:Ljava/lang/String;

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    .line 395
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    .line 396
    invoke-direct/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->generateLegalTimesTree()V

    .line 397
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v2, :cond_7

    .line 398
    const-string v2, "typed_times"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    .line 399
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->tryStartingKbMode(I)V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 406
    :cond_2
    :goto_2
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$id;->time_picker_header:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 407
    .local v18, timePickerHeader:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 408
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 415
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    invoke-static {v2}, Lcom/wdullaer/materialdatetimepicker/Utils;->darkenColor(I)I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 416
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$id;->time_display_background:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 417
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$id;->time_display:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 419
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_circle_background:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 420
    .local v10, circleBackground:I
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_background_color:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 421
    .local v9, backgroundColor:I
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_light_gray:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 422
    .local v12, darkBackgroundColor:I
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_light_gray:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 424
    .local v14, lightGray:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v3, :cond_8

    .end local v14           #lightGray:I
    :goto_3
    invoke-virtual {v2, v14}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setBackgroundColor(I)V

    .line 425
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$id;->time_picker_dialog:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v3, :cond_9

    .end local v12           #darkBackgroundColor:I
    :goto_4
    invoke-virtual {v2, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 426
    return-object v19

    .line 356
    .end local v9           #backgroundColor:I
    .end local v10           #circleBackground:I
    .end local v18           #timePickerHeader:Landroid/widget/TextView;
    :cond_4
    const/16 v2, 0x8

    goto/16 :goto_0

    .line 369
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_6

    const/4 v2, 0x0

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$5;-><init>(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 370
    :cond_6
    const/4 v2, 0x1

    goto :goto_5

    .line 401
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 402
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    goto/16 :goto_2

    .restart local v9       #backgroundColor:I
    .restart local v10       #circleBackground:I
    .restart local v12       #darkBackgroundColor:I
    .restart local v14       #lightGray:I
    .restart local v18       #timePickerHeader:Landroid/widget/TextView;
    :cond_8
    move v14, v10

    .line 424
    goto :goto_3

    .end local v14           #lightGray:I
    :cond_9
    move v12, v9

    .line 425
    goto :goto_4
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 450
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 451
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 452
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 437
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 438
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;->stop()V

    .line 439
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDismissOnPause:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->dismiss()V

    .line 440
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 431
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 432
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;->start()V

    .line 433
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    .line 475
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    if-eqz v0, :cond_1

    .line 476
    const-string v0, "hour_of_day"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 477
    const-string v0, "minute"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 478
    const-string v0, "is_24_hour_view"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 479
    const-string v0, "current_item_showing"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 480
    const-string v0, "in_kb_mode"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 481
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v0, :cond_0

    .line 482
    const-string v0, "typed_times"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 484
    :cond_0
    const-string v0, "dialog_title"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v0, "dark_theme"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 486
    const-string v0, "accent"

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 487
    const-string v0, "vibrate"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVibrate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 488
    const-string v0, "dismiss"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDismissOnPause:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 490
    :cond_1
    return-void
.end method

.method public onValueSelected(IIZ)V
    .locals 6
    .parameter "pickerIndex"
    .parameter "newValue"
    .parameter "autoAdvance"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 497
    if-nez p1, :cond_2

    .line 498
    invoke-direct {p0, p2, v5}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setHour(IZ)V

    .line 499
    const-string v1, "%d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, announcement:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAllowAutoAdvance:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 501
    invoke-direct {p0, v4, v4, v4, v5}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    :goto_0
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 519
    .end local v0           #announcement:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 504
    .restart local v0       #announcement:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 508
    .end local v0           #announcement:Ljava/lang/String;
    :cond_2
    if-ne p1, v4, :cond_3

    .line 509
    invoke-direct {p0, p2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setMinute(I)V

    .line 510
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 511
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 512
    invoke-direct {p0, p2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    goto :goto_1

    .line 513
    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v1

    if-nez v1, :cond_5

    .line 515
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 517
    :cond_5
    invoke-direct {p0, v4}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    goto :goto_1
.end method

.method public setAccentColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 193
    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    .line 194
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter "onCancelListener"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 233
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .parameter "onDismissListener"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 237
    return-void
.end method

.method public setOnTimeSetListener(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCallback:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    .line 229
    return-void
.end method

.method public setStartTime(II)V
    .locals 1
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 240
    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    .line 241
    iput p2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialMinute:I

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 243
    return-void
.end method

.method public setThemeDark(Z)V
    .locals 0
    .parameter "dark"

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    .line 190
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public tryVibrate()V
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVibrate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;->tryVibrate()V

    .line 457
    :cond_0
    return-void
.end method

.method public vibrate(Z)V
    .locals 0
    .parameter "vibrate"

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVibrate:Z

    .line 217
    return-void
.end method
