.class public Lcom/boohee/widgets/SearchBarView;
.super Landroid/widget/FrameLayout;
.source "SearchBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/widgets/SearchBarView$OnFinishSearchListener;,
        Lcom/boohee/widgets/SearchBarView$OnSearchListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private closeBtn:Landroid/widget/ImageView;

.field private finishSearchlistener:Lcom/boohee/widgets/SearchBarView$OnFinishSearchListener;

.field public hint:Ljava/lang/String;

.field private inSearchMode:Z

.field private inputTxt:Landroid/widget/EditText;

.field public mQuery:Ljava/lang/String;

.field private searchlistener:Lcom/boohee/widgets/SearchBarView$OnSearchListener;

.field private txt_search:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/boohee/widgets/SearchBarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/widgets/SearchBarView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0}, Lcom/boohee/widgets/SearchBarView;->initView()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0}, Lcom/boohee/widgets/SearchBarView;->initView()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0}, Lcom/boohee/widgets/SearchBarView;->initView()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/widgets/SearchBarView;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boohee/widgets/SearchBarView;->inputTxt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/widgets/SearchBarView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boohee/widgets/SearchBarView;->closeBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/widgets/SearchBarView;)Lcom/boohee/widgets/SearchBarView$OnSearchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boohee/widgets/SearchBarView;->searchlistener:Lcom/boohee/widgets/SearchBarView$OnSearchListener;

    return-object v0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/boohee/widgets/SearchBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03026a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/boohee/widgets/SearchBarView;->addView(Landroid/view/View;)V

    .line 63
    const v0, 0x7f0e0764

    invoke-virtual {p0, v0}, Lcom/boohee/widgets/SearchBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/widgets/SearchBarView;->txt_search:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/boohee/widgets/SearchBarView;->txt_search:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v0, 0x7f0e00a8

    invoke-virtual {p0, v0}, Lcom/boohee/widgets/SearchBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/boohee/widgets/SearchBarView;->closeBtn:Landroid/widget/ImageView;

    .line 66
    const v0, 0x7f0e061e

    invoke-virtual {p0, v0}, Lcom/boohee/widgets/SearchBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/widgets/SearchBarView;->inputTxt:Landroid/widget/EditText;

    .line 67
    iget-object v0, p0, Lcom/boohee/widgets/SearchBarView;->closeBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/boohee/widgets/SearchBarView$1;

    invoke-direct {v1, p0}, Lcom/boohee/widgets/SearchBarView$1;-><init>(Lcom/boohee/widgets/SearchBarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/boohee/widgets/SearchBarView;->inputTxt:Landroid/widget/EditText;

    new-instance v1, Lcom/boohee/widgets/SearchBarView$2;

    invoke-direct {v1, p0}, Lcom/boohee/widgets/SearchBarView$2;-><init>(Lcom/boohee/widgets/SearchBarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    invoke-virtual {p0}, Lcom/boohee/widgets/SearchBarView;->changeTodisplayMode()V

    .line 99
    iget-object v0, p0, Lcom/boohee/widgets/SearchBarView;->inputTxt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/widgets/SearchBarView;->mQuery:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/boohee/widgets/SearchBarView;->inputTxt:Landroid/widget/EditText;

    new-instance v1, Lcom/boohee/widgets/SearchBarView$3;

    invoke-direct {v1, p0}, Lcom/boohee/widgets/SearchBarView$3;-><init>(Lcom/boohee/widgets/SearchBarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 110
    return-void
.end method


# virtual methods
.method public changeTodisplayMode()V
    .locals 3

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/widgets/SearchBarView;->inSearchMode:Z

    .line 138
    iget-object v0, p0, Lcom/boohee/widgets/SearchBarView;->txt_search:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/widgets/SearchBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070493

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method public changeTosearchMode()V
    .locals 3

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/widgets/SearchBarView;->inSearchMode:Z

    .line 133
    iget-object v0, p0, Lcom/boohee/widgets/SearchBarView;->txt_search:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/widgets/SearchBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/boohee/widgets/SearchBarView;->inSearchMode:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/boohee/widgets/SearchBarView;->finishSearchlistener:Lcom/boohee/widgets/SearchBarView$OnFinishSearchListener;

    invoke-interface {v0}, Lcom/boohee/widgets/SearchBarView$OnFinishSearchListener;->finishSearch()V

    .line 116
    invoke-virtual {p0}, Lcom/boohee/widgets/SearchBarView;->changeTodisplayMode()V

    .line 117
    invoke-virtual {p0}, Lcom/boohee/widgets/SearchBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/widgets/SearchBarView;->inputTxt:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/boohee/utils/Keyboard;->close(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 118
    iget-object v0, p0, Lcom/boohee/widgets/SearchBarView;->inputTxt:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/boohee/widgets/SearchBarView;->inputTxt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/widgets/SearchBarView;->mQuery:Ljava/lang/String;

    .line 121
    const-string v0, ""

    iget-object v1, p0, Lcom/boohee/widgets/SearchBarView;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/boohee/widgets/SearchBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070138

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/boohee/widgets/SearchBarView;->changeTosearchMode()V

    .line 126
    invoke-virtual {p0}, Lcom/boohee/widgets/SearchBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/widgets/SearchBarView;->inputTxt:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/boohee/utils/Keyboard;->close(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 127
    iget-object v0, p0, Lcom/boohee/widgets/SearchBarView;->searchlistener:Lcom/boohee/widgets/SearchBarView$OnSearchListener;

    iget-object v1, p0, Lcom/boohee/widgets/SearchBarView;->mQuery:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/boohee/widgets/SearchBarView$OnSearchListener;->startSearch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFinishSearchListener(Lcom/boohee/widgets/SearchBarView$OnFinishSearchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/boohee/widgets/SearchBarView;->finishSearchlistener:Lcom/boohee/widgets/SearchBarView$OnFinishSearchListener;

    .line 157
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/boohee/widgets/SearchBarView;->hint:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/boohee/widgets/SearchBarView;->inputTxt:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public setSearchListener(Lcom/boohee/widgets/SearchBarView$OnSearchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/boohee/widgets/SearchBarView;->searchlistener:Lcom/boohee/widgets/SearchBarView$OnSearchListener;

    .line 148
    return-void
.end method
