.class public Lcom/boohee/widgets/CheckAccountPopwindow;
.super Ljava/lang/Object;
.source "CheckAccountPopwindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final T_CHECK_PHONE:I = 0x1

.field public static final T_VISITOR:I

.field private static inAnim:Landroid/view/animation/Animation;

.field private static instance:Lcom/boohee/widgets/CheckAccountPopwindow;

.field private static mContext:Landroid/content/Context;

.field private static popLayout:Landroid/widget/LinearLayout;

.field private static popWindow:Landroid/widget/PopupWindow;


# instance fields
.field private checkPhoneBtn:Landroid/widget/Button;

.field private contentView:Landroid/view/View;

.field private finder:Lcom/boohee/utils/ViewFinder;

.field private loginBtn:Landroid/widget/Button;

.field private registerBtn:Landroid/widget/Button;

.field private registerBtnUnderLine:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/boohee/widgets/CheckAccountPopwindow;

    invoke-direct {v0}, Lcom/boohee/widgets/CheckAccountPopwindow;-><init>()V

    sput-object v0, Lcom/boohee/widgets/CheckAccountPopwindow;->instance:Lcom/boohee/widgets/CheckAccountPopwindow;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private addListener()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->registerBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->loginBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->checkPhoneBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e06c1

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e0469

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method private createContentView(I)Landroid/view/View;
    .locals 3
    .parameter "type"

    .prologue
    .line 57
    sget-object v0, Lcom/boohee/widgets/CheckAccountPopwindow;->mContext:Landroid/content/Context;

    const v1, 0x7f030225

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->contentView:Landroid/view/View;

    .line 58
    new-instance v0, Lcom/boohee/utils/ViewFinder;

    iget-object v1, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->contentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/boohee/utils/ViewFinder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->finder:Lcom/boohee/utils/ViewFinder;

    .line 59
    invoke-direct {p0}, Lcom/boohee/widgets/CheckAccountPopwindow;->findView()V

    .line 60
    invoke-direct {p0}, Lcom/boohee/widgets/CheckAccountPopwindow;->addListener()V

    .line 61
    invoke-direct {p0, p1}, Lcom/boohee/widgets/CheckAccountPopwindow;->setUpUI(I)V

    .line 62
    iget-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->contentView:Landroid/view/View;

    return-object v0
.end method

.method private createPopWindow(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    .line 45
    sget-object v0, Lcom/boohee/widgets/CheckAccountPopwindow;->mContext:Landroid/content/Context;

    if-ne v0, p1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 47
    :cond_0
    sput-object p1, Lcom/boohee/widgets/CheckAccountPopwindow;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {p0, p2}, Lcom/boohee/widgets/CheckAccountPopwindow;->createContentView(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    sput-object v0, Lcom/boohee/widgets/CheckAccountPopwindow;->popWindow:Landroid/widget/PopupWindow;

    .line 50
    sget-object v0, Lcom/boohee/widgets/CheckAccountPopwindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 51
    sget-object v0, Lcom/boohee/widgets/CheckAccountPopwindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 52
    sget-object v0, Lcom/boohee/widgets/CheckAccountPopwindow;->mContext:Landroid/content/Context;

    const v1, 0x7f040012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sput-object v0, Lcom/boohee/widgets/CheckAccountPopwindow;->inAnim:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method public static declared-synchronized dismiss()V
    .locals 2

    .prologue
    .line 156
    const-class v1, Lcom/boohee/widgets/CheckAccountPopwindow;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/boohee/widgets/CheckAccountPopwindow;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 158
    :cond_1
    :try_start_1
    sget-object v0, Lcom/boohee/widgets/CheckAccountPopwindow;->popWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/boohee/widgets/CheckAccountPopwindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/boohee/widgets/CheckAccountPopwindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e06bf

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->registerBtnUnderLine:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e046a

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/boohee/widgets/CheckAccountPopwindow;->popLayout:Landroid/widget/LinearLayout;

    .line 73
    iget-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e06be

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->registerBtn:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00ff

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->loginBtn:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e06c0

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->checkPhoneBtn:Landroid/widget/Button;

    .line 76
    return-void
.end method

.method public static declared-synchronized isShowing()Z
    .locals 2

    .prologue
    .line 152
    const-class v1, Lcom/boohee/widgets/CheckAccountPopwindow;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/boohee/widgets/CheckAccountPopwindow;->popWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/boohee/widgets/CheckAccountPopwindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setUpUI(I)V
    .locals 2
    .parameter "type"

    .prologue
    const/16 v1, 0x8

    .line 88
    packed-switch p1, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->checkPhoneBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->registerBtnUnderLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->registerBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->loginBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/boohee/widgets/CheckAccountPopwindow;->checkPhoneBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static show(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 145
    sget-object v0, Lcom/boohee/widgets/CheckAccountPopwindow;->popWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/boohee/widgets/CheckAccountPopwindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    sget-object v0, Lcom/boohee/widgets/CheckAccountPopwindow;->popWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 148
    sget-object v0, Lcom/boohee/widgets/CheckAccountPopwindow;->popLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/boohee/widgets/CheckAccountPopwindow;->inAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static declared-synchronized showCheckPhonePopWindow(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 179
    const-class v1, Lcom/boohee/widgets/CheckAccountPopwindow;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/boohee/widgets/CheckAccountPopwindow;->instance:Lcom/boohee/widgets/CheckAccountPopwindow;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/boohee/widgets/CheckAccountPopwindow;->createPopWindow(Landroid/content/Context;I)V

    .line 180
    invoke-static {p0}, Lcom/boohee/widgets/CheckAccountPopwindow;->show(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit v1

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized showVisitorPopWindow(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 169
    const-class v1, Lcom/boohee/widgets/CheckAccountPopwindow;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/boohee/widgets/CheckAccountPopwindow;->instance:Lcom/boohee/widgets/CheckAccountPopwindow;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/boohee/widgets/CheckAccountPopwindow;->createPopWindow(Landroid/content/Context;I)V

    .line 170
    invoke-static {p0}, Lcom/boohee/widgets/CheckAccountPopwindow;->show(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit v1

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x2

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 109
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    sget-object v1, Lcom/boohee/widgets/CheckAccountPopwindow;->mContext:Landroid/content/Context;

    const-class v2, Lcom/boohee/one/ui/LoginAndRegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "LAU_KEY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    sget-object v1, Lcom/boohee/widgets/CheckAccountPopwindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 113
    invoke-static {}, Lcom/boohee/widgets/CheckAccountPopwindow;->dismiss()V

    goto :goto_0

    .line 117
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    sget-object v1, Lcom/boohee/widgets/CheckAccountPopwindow;->mContext:Landroid/content/Context;

    const-class v2, Lcom/boohee/one/ui/LoginAndRegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "LAU_KEY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    sget-object v1, Lcom/boohee/widgets/CheckAccountPopwindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    invoke-static {}, Lcom/boohee/widgets/CheckAccountPopwindow;->dismiss()V

    goto :goto_0

    .line 125
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    sget-object v1, Lcom/boohee/widgets/CheckAccountPopwindow;->mContext:Landroid/content/Context;

    const-class v2, Lcom/boohee/one/ui/CheckPhoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "KEY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    sget-object v1, Lcom/boohee/widgets/CheckAccountPopwindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    invoke-static {}, Lcom/boohee/widgets/CheckAccountPopwindow;->dismiss()V

    goto :goto_0

    .line 132
    :sswitch_3
    invoke-static {}, Lcom/boohee/widgets/CheckAccountPopwindow;->dismiss()V

    goto :goto_0

    .line 136
    :sswitch_4
    invoke-static {}, Lcom/boohee/widgets/CheckAccountPopwindow;->dismiss()V

    goto :goto_0

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x7f0e00ff -> :sswitch_1
        0x7f0e0469 -> :sswitch_4
        0x7f0e06be -> :sswitch_0
        0x7f0e06c0 -> :sswitch_2
        0x7f0e06c1 -> :sswitch_3
    .end sparse-switch
.end method
