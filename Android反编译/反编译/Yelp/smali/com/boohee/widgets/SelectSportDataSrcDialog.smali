.class public Lcom/boohee/widgets/SelectSportDataSrcDialog;
.super Landroid/app/Dialog;
.source "SelectSportDataSrcDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/widgets/SelectSportDataSrcDialog$LeDongLiBindL;,
        Lcom/boohee/widgets/SelectSportDataSrcDialog$MiBandBindL;
    }
.end annotation


# instance fields
.field private bindLeDongLiL:Landroid/view/View$OnClickListener;

.field private bindMiBandL:Landroid/view/View$OnClickListener;

.field private leDongLiBtn:Landroid/widget/Button;

.field private miBandBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    const v0, 0x7f0a00e1

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 27
    invoke-direct {p0}, Lcom/boohee/widgets/SelectSportDataSrcDialog;->init()V

    .line 28
    invoke-direct {p0}, Lcom/boohee/widgets/SelectSportDataSrcDialog;->initView()V

    .line 29
    return-void
.end method

.method static synthetic access$200(Lcom/boohee/widgets/SelectSportDataSrcDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/boohee/widgets/SelectSportDataSrcDialog;->bindMiBandL:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/widgets/SelectSportDataSrcDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/boohee/widgets/SelectSportDataSrcDialog;->bindLeDongLiL:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 32
    const v0, 0x7f030271

    invoke-virtual {p0, v0}, Lcom/boohee/widgets/SelectSportDataSrcDialog;->setContentView(I)V

    .line 33
    invoke-virtual {p0, v1}, Lcom/boohee/widgets/SelectSportDataSrcDialog;->setCancelable(Z)V

    .line 34
    invoke-virtual {p0, v1}, Lcom/boohee/widgets/SelectSportDataSrcDialog;->setCanceledOnTouchOutside(Z)V

    .line 35
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    const v0, 0x7f0e0772

    invoke-virtual {p0, v0}, Lcom/boohee/widgets/SelectSportDataSrcDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/boohee/widgets/SelectSportDataSrcDialog$1;

    invoke-direct {v1, p0}, Lcom/boohee/widgets/SelectSportDataSrcDialog$1;-><init>(Lcom/boohee/widgets/SelectSportDataSrcDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v0, 0x7f0e0770

    invoke-virtual {p0, v0}, Lcom/boohee/widgets/SelectSportDataSrcDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/boohee/widgets/SelectSportDataSrcDialog;->miBandBtn:Landroid/widget/Button;

    .line 46
    const v0, 0x7f0e0771

    invoke-virtual {p0, v0}, Lcom/boohee/widgets/SelectSportDataSrcDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/boohee/widgets/SelectSportDataSrcDialog;->leDongLiBtn:Landroid/widget/Button;

    .line 48
    iget-object v0, p0, Lcom/boohee/widgets/SelectSportDataSrcDialog;->miBandBtn:Landroid/widget/Button;

    new-instance v1, Lcom/boohee/widgets/SelectSportDataSrcDialog$MiBandBindL;

    invoke-direct {v1, p0, v2}, Lcom/boohee/widgets/SelectSportDataSrcDialog$MiBandBindL;-><init>(Lcom/boohee/widgets/SelectSportDataSrcDialog;Lcom/boohee/widgets/SelectSportDataSrcDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/boohee/widgets/SelectSportDataSrcDialog;->leDongLiBtn:Landroid/widget/Button;

    new-instance v1, Lcom/boohee/widgets/SelectSportDataSrcDialog$LeDongLiBindL;

    invoke-direct {v1, p0, v2}, Lcom/boohee/widgets/SelectSportDataSrcDialog$LeDongLiBindL;-><init>(Lcom/boohee/widgets/SelectSportDataSrcDialog;Lcom/boohee/widgets/SelectSportDataSrcDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method


# virtual methods
.method public setBindLeDongLiListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/boohee/widgets/SelectSportDataSrcDialog;->bindLeDongLiL:Landroid/view/View$OnClickListener;

    .line 75
    return-void
.end method

.method public setBindMiBandListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/boohee/widgets/SelectSportDataSrcDialog;->bindMiBandL:Landroid/view/View$OnClickListener;

    .line 71
    return-void
.end method

.method public setLedongLiVisibility(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/boohee/widgets/SelectSportDataSrcDialog;->leDongLiBtn:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/boohee/widgets/SelectSportDataSrcDialog;->leDongLiBtn:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public setMiBandVisibility(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/boohee/widgets/SelectSportDataSrcDialog;->miBandBtn:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/boohee/widgets/SelectSportDataSrcDialog;->miBandBtn:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method
