.class public Lcom/boohee/widgets/DraftPopwindow;
.super Ljava/lang/Object;
.source "DraftPopwindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/widgets/DraftPopwindow$IPopClickListener;
    }
.end annotation


# instance fields
.field private inAnim:Landroid/view/animation/Animation;

.field private listener:Lcom/boohee/widgets/DraftPopwindow$IPopClickListener;

.field private mContext:Landroid/content/Context;

.field private popLayout:Landroid/widget/LinearLayout;

.field private popWindow:Landroid/widget/PopupWindow;

.field private redoBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/boohee/widgets/DraftPopwindow$IPopClickListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/boohee/widgets/DraftPopwindow;-><init>(Landroid/content/Context;Lcom/boohee/widgets/DraftPopwindow$IPopClickListener;Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/boohee/widgets/DraftPopwindow$IPopClickListener;Z)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "isSendText"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/boohee/widgets/DraftPopwindow;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/boohee/widgets/DraftPopwindow;->listener:Lcom/boohee/widgets/DraftPopwindow$IPopClickListener;

    .line 40
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->mContext:Landroid/content/Context;

    const v1, 0x7f040012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->inAnim:Landroid/view/animation/Animation;

    .line 41
    invoke-direct {p0, p3}, Lcom/boohee/widgets/DraftPopwindow;->init(Z)V

    .line 42
    return-void
.end method

.method private getContentView(Z)Landroid/view/View;
    .locals 4
    .parameter "isSendText"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/boohee/widgets/DraftPopwindow;->mContext:Landroid/content/Context;

    const v2, 0x7f030238

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, contentView:Landroid/view/View;
    if-nez p1, :cond_0

    .line 77
    const v1, 0x7f0e06d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/boohee/widgets/DraftPopwindow;->redoBtn:Landroid/widget/Button;

    .line 78
    iget-object v1, p0, Lcom/boohee/widgets/DraftPopwindow;->redoBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v1, p0, Lcom/boohee/widgets/DraftPopwindow;->redoBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 81
    :cond_0
    const v1, 0x7f0e046a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/boohee/widgets/DraftPopwindow;->popLayout:Landroid/widget/LinearLayout;

    .line 82
    const v1, 0x7f0e0469

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v1, 0x7f0e06d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v1, 0x7f0e06d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v1, 0x7f0e06c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-object v0
.end method

.method private init(Z)V
    .locals 5
    .parameter "isSendText"

    .prologue
    const/4 v4, 0x1

    .line 68
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {p0, p1}, Lcom/boohee/widgets/DraftPopwindow;->getContentView(Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->popWindow:Landroid/widget/PopupWindow;

    .line 70
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 71
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 72
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->popWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->popWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 94
    :sswitch_0
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->listener:Lcom/boohee/widgets/DraftPopwindow$IPopClickListener;

    invoke-interface {v0}, Lcom/boohee/widgets/DraftPopwindow$IPopClickListener;->onRedoClick()V

    .line 95
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 99
    :sswitch_1
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->listener:Lcom/boohee/widgets/DraftPopwindow$IPopClickListener;

    invoke-interface {v0}, Lcom/boohee/widgets/DraftPopwindow$IPopClickListener;->onSaveClick()V

    .line 100
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 104
    :sswitch_2
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->listener:Lcom/boohee/widgets/DraftPopwindow$IPopClickListener;

    invoke-interface {v0}, Lcom/boohee/widgets/DraftPopwindow$IPopClickListener;->onUnSaveClick()V

    .line 105
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 109
    :sswitch_3
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 113
    :sswitch_4
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 91
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0469 -> :sswitch_4
        0x7f0e06c1 -> :sswitch_3
        0x7f0e06d3 -> :sswitch_0
        0x7f0e06d4 -> :sswitch_1
        0x7f0e06d5 -> :sswitch_2
    .end sparse-switch
.end method

.method public setReDoBtnText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->redoBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->redoBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->popWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->popWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/boohee/widgets/DraftPopwindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 52
    iget-object v0, p0, Lcom/boohee/widgets/DraftPopwindow;->popLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/boohee/widgets/DraftPopwindow;->inAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
