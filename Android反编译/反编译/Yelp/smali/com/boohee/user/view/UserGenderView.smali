.class public Lcom/boohee/user/view/UserGenderView;
.super Landroid/widget/FrameLayout;
.source "UserGenderView.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field ctx:Landroid/content/Context;

.field group:Landroid/widget/RadioGroup;

.field user:Lcom/boohee/model/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/boohee/user/view/UserGenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/user/view/UserGenderView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/boohee/user/view/UserGenderView;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/boohee/user/view/UserGenderView;->init()V

    .line 35
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
    invoke-direct {p0}, Lcom/boohee/user/view/UserGenderView;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/boohee/model/User;)V
    .locals 0
    .parameter "context"
    .parameter "user"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/boohee/user/view/UserGenderView;->user:Lcom/boohee/model/User;

    .line 29
    invoke-direct {p0}, Lcom/boohee/user/view/UserGenderView;->init()V

    .line 30
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/boohee/user/view/UserGenderView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/user/view/UserGenderView;->ctx:Landroid/content/Context;

    .line 44
    iget-object v1, p0, Lcom/boohee/user/view/UserGenderView;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030211

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/boohee/user/view/UserGenderView;->addView(Landroid/view/View;)V

    .line 46
    invoke-direct {p0}, Lcom/boohee/user/view/UserGenderView;->setDefaultChecked()V

    .line 47
    return-void
.end method

.method private setDefaultChecked()V
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Lcom/boohee/user/view/UserGenderView;->user:Lcom/boohee/model/User;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/user/view/UserGenderView;->user:Lcom/boohee/model/User;

    invoke-virtual {v1}, Lcom/boohee/model/User;->isMale()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const v1, 0x7f0e065a

    invoke-virtual {p0, v1}, Lcom/boohee/user/view/UserGenderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 52
    .local v0, male:Landroid/widget/RadioButton;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 54
    .end local v0           #male:Landroid/widget/RadioButton;
    :cond_0
    return-void
.end method


# virtual methods
.method public getSexType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 57
    const v3, 0x7f0e0659

    invoke-virtual {p0, v3}, Lcom/boohee/user/view/UserGenderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 58
    .local v1, genderGroup:Landroid/widget/RadioGroup;
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 59
    .local v0, checkedRadioId:I
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 60
    .local v2, radioButton:Landroid/view/View;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
