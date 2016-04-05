.class public Lcom/boohee/user/view/UserMcCircleView;
.super Landroid/widget/FrameLayout;
.source "UserMcCircleView.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private ctx:Landroid/content/Context;

.field private defaultValue:I

.field private fromWhere:I

.field private wheelView:Lcom/boohee/myview/IntWheelView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/boohee/user/view/UserMcCircleView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/user/view/UserMcCircleView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "fromWhere"
    .parameter "defaultValue"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput p2, p0, Lcom/boohee/user/view/UserMcCircleView;->fromWhere:I

    .line 33
    iput p3, p0, Lcom/boohee/user/view/UserMcCircleView;->defaultValue:I

    .line 34
    invoke-direct {p0}, Lcom/boohee/user/view/UserMcCircleView;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Lcom/boohee/user/view/UserMcCircleView;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/boohee/user/view/UserMcCircleView;->init()V

    .line 40
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/boohee/user/view/UserMcCircleView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/user/view/UserMcCircleView;->ctx:Landroid/content/Context;

    .line 49
    iget-object v1, p0, Lcom/boohee/user/view/UserMcCircleView;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030213

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/boohee/user/view/UserMcCircleView;->addView(Landroid/view/View;)V

    .line 51
    invoke-direct {p0}, Lcom/boohee/user/view/UserMcCircleView;->setUserProperty()V

    .line 52
    invoke-virtual {p0}, Lcom/boohee/user/view/UserMcCircleView;->setBottomPicker()V

    .line 53
    return-void
.end method

.method private setUserProperty()V
    .locals 3

    .prologue
    .line 56
    const v1, 0x7f0e0658

    invoke-virtual {p0, v1}, Lcom/boohee/user/view/UserMcCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    .local v0, text:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/boohee/user/view/UserMcCircleView;->ctx:Landroid/content/Context;

    const v2, 0x7f07031d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getMcCircle()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/user/view/UserMcCircleView;->wheelView:Lcom/boohee/myview/IntWheelView;

    invoke-virtual {v0}, Lcom/boohee/myview/IntWheelView;->getCurrentNum()I

    move-result v0

    return v0
.end method

.method public setBottomPicker()V
    .locals 7

    .prologue
    .line 61
    const v1, 0x7f0e04e1

    invoke-virtual {p0, v1}, Lcom/boohee/user/view/UserMcCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 62
    .local v0, picker_layout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 63
    iget v1, p0, Lcom/boohee/user/view/UserMcCircleView;->fromWhere:I

    if-nez v1, :cond_0

    .line 64
    sget v1, Lcom/boohee/one/mine/McInitActivity;->defaultMcdays:I

    iput v1, p0, Lcom/boohee/user/view/UserMcCircleView;->defaultValue:I

    .line 65
    :cond_0
    sget-object v1, Lcom/boohee/user/view/UserMcCircleView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fromWhere ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/boohee/user/view/UserMcCircleView;->fromWhere:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "default="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/boohee/user/view/UserMcCircleView;->defaultValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v1, Lcom/boohee/myview/IntWheelView;

    iget-object v2, p0, Lcom/boohee/user/view/UserMcCircleView;->ctx:Landroid/content/Context;

    const/16 v3, 0x5a

    iget v4, p0, Lcom/boohee/user/view/UserMcCircleView;->defaultValue:I

    iget-object v5, p0, Lcom/boohee/user/view/UserMcCircleView;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v5

    const-string v6, "cycle"

    invoke-virtual {v5, v6}, Lcom/boohee/database/UserPreference;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/boohee/myview/IntWheelView;-><init>(Landroid/content/Context;III)V

    iput-object v1, p0, Lcom/boohee/user/view/UserMcCircleView;->wheelView:Lcom/boohee/myview/IntWheelView;

    .line 67
    iget-object v1, p0, Lcom/boohee/user/view/UserMcCircleView;->wheelView:Lcom/boohee/myview/IntWheelView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    return-void
.end method
