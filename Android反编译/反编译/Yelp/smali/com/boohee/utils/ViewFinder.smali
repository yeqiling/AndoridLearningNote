.class public Lcom/boohee/utils/ViewFinder;
.super Ljava/lang/Object;
.source "ViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/utils/ViewFinder$ViewWrapper;,
        Lcom/boohee/utils/ViewFinder$WindowWrapper;,
        Lcom/boohee/utils/ViewFinder$FindWrapper;
    }
.end annotation


# instance fields
.field private final wrapper:Lcom/boohee/utils/ViewFinder$FindWrapper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/boohee/utils/ViewFinder;-><init>(Landroid/view/Window;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/boohee/utils/ViewFinder$ViewWrapper;

    invoke-direct {v0, p1}, Lcom/boohee/utils/ViewFinder$ViewWrapper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/boohee/utils/ViewFinder;->wrapper:Lcom/boohee/utils/ViewFinder$FindWrapper;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/view/Window;)V
    .locals 1
    .parameter "window"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/boohee/utils/ViewFinder$WindowWrapper;

    invoke-direct {v0, p1}, Lcom/boohee/utils/ViewFinder$WindowWrapper;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/boohee/utils/ViewFinder;->wrapper:Lcom/boohee/utils/ViewFinder$FindWrapper;

    .line 83
    return-void
.end method


# virtual methods
.method public compoundButton(I)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "id"

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    return-object v0
.end method

.method public find(I)Landroid/view/View;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(I)TV;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/boohee/utils/ViewFinder;->wrapper:Lcom/boohee/utils/ViewFinder$FindWrapper;

    invoke-interface {v0, p1}, Lcom/boohee/utils/ViewFinder$FindWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public imageView(I)Landroid/widget/ImageView;
    .locals 1
    .parameter "id"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public onCheck(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 236
    .local v0, checkable:Landroid/widget/CompoundButton;
    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 237
    return-object v0
.end method

.method public onCheck(ILjava/lang/Runnable;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "id"
    .parameter "runnable"

    .prologue
    .line 249
    new-instance v0, Lcom/boohee/utils/ViewFinder$3;

    invoke-direct {v0, p0, p2}, Lcom/boohee/utils/ViewFinder$3;-><init>(Lcom/boohee/utils/ViewFinder;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1, v0}, Lcom/boohee/utils/ViewFinder;->onCheck(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/widget/CompoundButton;

    move-result-object v0

    return-object v0
.end method

.method public varargs onCheck(Landroid/widget/CompoundButton$OnCheckedChangeListener;[I)V
    .locals 5
    .parameter "listener"
    .parameter "ids"

    .prologue
    .line 264
    move-object v0, p2

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 265
    .local v2, id:I
    invoke-virtual {p0, v2}, Lcom/boohee/utils/ViewFinder;->compoundButton(I)Landroid/widget/CompoundButton;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    .end local v2           #id:I
    :cond_0
    return-void
.end method

.method public varargs onCheck(Ljava/lang/Runnable;[I)V
    .locals 1
    .parameter "runnable"
    .parameter "ids"

    .prologue
    .line 276
    new-instance v0, Lcom/boohee/utils/ViewFinder$4;

    invoke-direct {v0, p0, p1}, Lcom/boohee/utils/ViewFinder$4;-><init>(Lcom/boohee/utils/ViewFinder;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p2}, Lcom/boohee/utils/ViewFinder;->onCheck(Landroid/widget/CompoundButton$OnCheckedChangeListener;[I)V

    .line 282
    return-void
.end method

.method public onClick(ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    .line 168
    .local v0, clickable:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-object v0
.end method

.method public onClick(ILjava/lang/Runnable;)Landroid/view/View;
    .locals 1
    .parameter "id"
    .parameter "runnable"

    .prologue
    .line 180
    new-instance v0, Lcom/boohee/utils/ViewFinder$1;

    invoke-direct {v0, p0, p2}, Lcom/boohee/utils/ViewFinder$1;-><init>(Lcom/boohee/utils/ViewFinder;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1, v0}, Lcom/boohee/utils/ViewFinder;->onClick(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public varargs onClick(Landroid/view/View$OnClickListener;[I)V
    .locals 5
    .parameter "listener"
    .parameter "ids"

    .prologue
    .line 195
    move-object v0, p2

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 196
    .local v2, id:I
    invoke-virtual {p0, v2}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v2           #id:I
    :cond_0
    return-void
.end method

.method public varargs onClick(Ljava/lang/Runnable;[I)V
    .locals 1
    .parameter "runnable"
    .parameter "ids"

    .prologue
    .line 206
    new-instance v0, Lcom/boohee/utils/ViewFinder$2;

    invoke-direct {v0, p0, p1}, Lcom/boohee/utils/ViewFinder$2;-><init>(Lcom/boohee/utils/ViewFinder;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p2}, Lcom/boohee/utils/ViewFinder;->onClick(Landroid/view/View$OnClickListener;[I)V

    .line 212
    return-void
.end method

.method public setDrawable(II)Landroid/widget/ImageView;
    .locals 2
    .parameter "id"
    .parameter "drawable"

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/boohee/utils/ViewFinder;->imageView(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 223
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    return-object v0
.end method

.method public setText(II)Landroid/widget/TextView;
    .locals 1
    .parameter "id"
    .parameter "content"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/boohee/utils/ViewFinder;->wrapper:Lcom/boohee/utils/ViewFinder$FindWrapper;

    invoke-interface {v0}, Lcom/boohee/utils/ViewFinder$FindWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/boohee/utils/ViewFinder;->setText(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public setText(ILjava/lang/CharSequence;)Landroid/widget/TextView;
    .locals 1
    .parameter "id"
    .parameter "content"

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    .local v0, text:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-object v0
.end method

.method public textView(I)Landroid/widget/TextView;
    .locals 1
    .parameter "id"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method
