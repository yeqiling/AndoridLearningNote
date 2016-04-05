.class public Lcom/zhy/view/flowlayout/TagFlowLayout;
.super Lcom/zhy/view/flowlayout/FlowLayout;
.source "TagFlowLayout.java"

# interfaces
.implements Lcom/zhy/view/flowlayout/TagAdapter$OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/view/flowlayout/TagFlowLayout$OnTagClickListener;,
        Lcom/zhy/view/flowlayout/TagFlowLayout$OnSelectListener;
    }
.end annotation


# static fields
.field private static final KEY_CHOOSE_POS:Ljava/lang/String; = "key_choose_pos"

.field private static final KEY_DEFAULT:Ljava/lang/String; = "key_default"

.field private static final TAG:Ljava/lang/String; = "TagFlowLayout"


# instance fields
.field private mAutoSelectEffect:Z

.field private mMotionEvent:Landroid/view/MotionEvent;

.field private mOnSelectListener:Lcom/zhy/view/flowlayout/TagFlowLayout$OnSelectListener;

.field private mOnTagClickListener:Lcom/zhy/view/flowlayout/TagFlowLayout$OnTagClickListener;

.field private mSelectedMax:I

.field private mSelectedView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTagAdapter:Lcom/zhy/view/flowlayout/TagAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zhy/view/flowlayout/TagFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zhy/view/flowlayout/TagFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/zhy/view/flowlayout/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput-boolean v2, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mAutoSelectEffect:Z

    .line 25
    iput v3, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedMax:I

    .line 29
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    .line 35
    sget-object v1, Lcom/zhy/view/flowlayout/R$styleable;->TagFlowLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, ta:Landroid/content/res/TypedArray;
    sget v1, Lcom/zhy/view/flowlayout/R$styleable;->TagFlowLayout_auto_select_effect:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mAutoSelectEffect:Z

    .line 37
    sget v1, Lcom/zhy/view/flowlayout/R$styleable;->TagFlowLayout_max_select:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedMax:I

    .line 38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    iget-boolean v1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mAutoSelectEffect:Z

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p0, v2}, Lcom/zhy/view/flowlayout/TagFlowLayout;->setClickable(Z)V

    .line 44
    :cond_0
    return-void
.end method

.method private changeAdapter()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 114
    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->removeAllViews()V

    .line 115
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mTagAdapter:Lcom/zhy/view/flowlayout/TagAdapter;

    .line 116
    .local v0, adapter:Lcom/zhy/view/flowlayout/TagAdapter;
    const/4 v4, 0x0

    .line 117
    .local v4, tagViewContainer:Lcom/zhy/view/flowlayout/TagView;
    iget-object v5, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mTagAdapter:Lcom/zhy/view/flowlayout/TagAdapter;

    invoke-virtual {v5}, Lcom/zhy/view/flowlayout/TagAdapter;->getPreCheckedList()Ljava/util/HashSet;

    move-result-object v2

    .line 118
    .local v2, preCheckedList:Ljava/util/HashSet;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Lcom/zhy/view/flowlayout/TagAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 120
    invoke-virtual {v0, v1}, Lcom/zhy/view/flowlayout/TagAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, p0, v1, v5}, Lcom/zhy/view/flowlayout/TagAdapter;->getView(Lcom/zhy/view/flowlayout/FlowLayout;ILjava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 122
    .local v3, tagView:Landroid/view/View;
    new-instance v4, Lcom/zhy/view/flowlayout/TagView;

    .end local v4           #tagViewContainer:Lcom/zhy/view/flowlayout/TagView;
    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/zhy/view/flowlayout/TagView;-><init>(Landroid/content/Context;)V

    .line 131
    .restart local v4       #tagViewContainer:Lcom/zhy/view/flowlayout/TagView;
    invoke-virtual {v3, v6}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 132
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zhy/view/flowlayout/TagView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-virtual {v4, v3}, Lcom/zhy/view/flowlayout/TagView;->addView(Landroid/view/View;)V

    .line 134
    invoke-virtual {p0, v4}, Lcom/zhy/view/flowlayout/TagFlowLayout;->addView(Landroid/view/View;)V

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    invoke-virtual {v4, v6}, Lcom/zhy/view/flowlayout/TagView;->setChecked(Z)V

    .line 118
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v3           #tagView:Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 144
    return-void
.end method

.method private doSelect(Lcom/zhy/view/flowlayout/TagView;I)V
    .locals 6
    .parameter "child"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 197
    iget-boolean v3, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mAutoSelectEffect:Z

    if-eqz v3, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/zhy/view/flowlayout/TagView;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    .line 202
    iget v3, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedMax:I

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 204
    iget-object v3, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 205
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 206
    .local v2, preIndex:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zhy/view/flowlayout/TagView;

    .line 207
    .local v1, pre:Lcom/zhy/view/flowlayout/TagView;
    invoke-virtual {v1, v4}, Lcom/zhy/view/flowlayout/TagView;->setChecked(Z)V

    .line 208
    invoke-virtual {p1, v5}, Lcom/zhy/view/flowlayout/TagView;->setChecked(Z)V

    .line 209
    iget-object v3, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 210
    iget-object v3, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1           #pre:Lcom/zhy/view/flowlayout/TagView;
    .end local v2           #preIndex:Ljava/lang/Integer;
    :goto_0
    iget-object v3, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mOnSelectListener:Lcom/zhy/view/flowlayout/TagFlowLayout$OnSelectListener;

    if-eqz v3, :cond_0

    .line 225
    iget-object v3, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mOnSelectListener:Lcom/zhy/view/flowlayout/TagFlowLayout$OnSelectListener;

    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v4}, Lcom/zhy/view/flowlayout/TagFlowLayout$OnSelectListener;->onSelected(Ljava/util/Set;)V

    .line 228
    :cond_0
    return-void

    .line 213
    :cond_1
    iget v3, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedMax:I

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    iget v4, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedMax:I

    if-ge v3, v4, :cond_0

    .line 215
    :cond_2
    invoke-virtual {p1, v5}, Lcom/zhy/view/flowlayout/TagView;->setChecked(Z)V

    .line 216
    iget-object v3, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_3
    invoke-virtual {p1, v4}, Lcom/zhy/view/flowlayout/TagView;->setChecked(Z)V

    .line 221
    iget-object v3, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private findChild(II)Lcom/zhy/view/flowlayout/TagView;
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getChildCount()I

    move-result v0

    .line 293
    .local v0, cCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 295
    invoke-virtual {p0, v1}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zhy/view/flowlayout/TagView;

    .line 296
    .local v3, v:Lcom/zhy/view/flowlayout/TagView;
    invoke-virtual {v3}, Lcom/zhy/view/flowlayout/TagView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 293
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 298
    .local v2, outRect:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Lcom/zhy/view/flowlayout/TagView;->getHitRect(Landroid/graphics/Rect;)V

    .line 299
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 304
    .end local v2           #outRect:Landroid/graphics/Rect;
    .end local v3           #v:Lcom/zhy/view/flowlayout/TagView;
    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private findPosByView(Landroid/view/View;)I
    .locals 3
    .parameter "child"

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getChildCount()I

    move-result v0

    .line 282
    .local v0, cCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 284
    invoke-virtual {p0, v1}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 285
    .local v2, v:Landroid/view/View;
    if-ne v2, p1, :cond_0

    .line 287
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v1

    .line 282
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public getSelectedList()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public onChanged()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->changeAdapter()V

    .line 311
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/16 v4, 0x8

    .line 60
    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getChildCount()I

    move-result v0

    .line 62
    .local v0, cCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 64
    invoke-virtual {p0, v1}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zhy/view/flowlayout/TagView;

    .line 65
    .local v2, tagView:Lcom/zhy/view/flowlayout/TagView;
    invoke-virtual {v2}, Lcom/zhy/view/flowlayout/TagView;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 62
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v2}, Lcom/zhy/view/flowlayout/TagView;->getTagView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 68
    invoke-virtual {v2, v4}, Lcom/zhy/view/flowlayout/TagView;->setVisibility(I)V

    goto :goto_1

    .line 71
    .end local v2           #tagView:Lcom/zhy/view/flowlayout/TagView;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/zhy/view/flowlayout/FlowLayout;->onMeasure(II)V

    .line 72
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 11
    .parameter "state"

    .prologue
    .line 256
    instance-of v9, p1, Landroid/os/Bundle;

    if-eqz v9, :cond_1

    move-object v1, p1

    .line 258
    check-cast v1, Landroid/os/Bundle;

    .line 259
    .local v1, bundle:Landroid/os/Bundle;
    const-string v9, "key_choose_pos"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, mSelectPos:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 262
    const-string v9, "\\|"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 263
    .local v7, split:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v6, v0, v2

    .line 265
    .local v6, pos:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 266
    .local v3, index:I
    iget-object v9, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual {p0, v3}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/zhy/view/flowlayout/TagView;

    .line 269
    .local v8, tagView:Lcom/zhy/view/flowlayout/TagView;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/zhy/view/flowlayout/TagView;->setChecked(Z)V

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #index:I
    .end local v4           #len$:I
    .end local v6           #pos:Ljava/lang/String;
    .end local v7           #split:[Ljava/lang/String;
    .end local v8           #tagView:Lcom/zhy/view/flowlayout/TagView;
    :cond_0
    const-string v9, "key_default"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    invoke-super {p0, v9}, Lcom/zhy/view/flowlayout/FlowLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 277
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v5           #mSelectPos:Ljava/lang/String;
    :goto_1
    return-void

    .line 276
    :cond_1
    invoke-super {p0, p1}, Lcom/zhy/view/flowlayout/FlowLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 237
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 238
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "key_default"

    invoke-super {p0}, Lcom/zhy/view/flowlayout/FlowLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 240
    const-string v3, ""

    .line 241
    .local v3, selectPos:Ljava/lang/String;
    iget-object v4, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 243
    iget-object v4, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 245
    .local v2, key:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 246
    goto :goto_0

    .line 247
    .end local v2           #key:I
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 249
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v4, "key_choose_pos"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 152
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mMotionEvent:Landroid/view/MotionEvent;

    .line 154
    :cond_0
    invoke-super {p0, p1}, Lcom/zhy/view/flowlayout/FlowLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performClick()Z
    .locals 6

    .prologue
    .line 160
    iget-object v4, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mMotionEvent:Landroid/view/MotionEvent;

    if-nez v4, :cond_0

    invoke-super {p0}, Lcom/zhy/view/flowlayout/FlowLayout;->performClick()Z

    move-result v4

    .line 176
    :goto_0
    return v4

    .line 162
    :cond_0
    iget-object v4, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 163
    .local v2, x:I
    iget-object v4, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 164
    .local v3, y:I
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mMotionEvent:Landroid/view/MotionEvent;

    .line 166
    invoke-direct {p0, v2, v3}, Lcom/zhy/view/flowlayout/TagFlowLayout;->findChild(II)Lcom/zhy/view/flowlayout/TagView;

    move-result-object v0

    .line 167
    .local v0, child:Lcom/zhy/view/flowlayout/TagView;
    invoke-direct {p0, v0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->findPosByView(Landroid/view/View;)I

    move-result v1

    .line 168
    .local v1, pos:I
    if-eqz v0, :cond_1

    .line 170
    invoke-direct {p0, v0, v1}, Lcom/zhy/view/flowlayout/TagFlowLayout;->doSelect(Lcom/zhy/view/flowlayout/TagView;I)V

    .line 171
    iget-object v4, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mOnTagClickListener:Lcom/zhy/view/flowlayout/TagFlowLayout$OnTagClickListener;

    if-eqz v4, :cond_1

    .line 173
    iget-object v4, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mOnTagClickListener:Lcom/zhy/view/flowlayout/TagFlowLayout$OnTagClickListener;

    invoke-virtual {v0}, Lcom/zhy/view/flowlayout/TagView;->getTagView()Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5, v1, p0}, Lcom/zhy/view/flowlayout/TagFlowLayout$OnTagClickListener;->onTagClick(Landroid/view/View;ILcom/zhy/view/flowlayout/FlowLayout;)Z

    move-result v4

    goto :goto_0

    .line 176
    :cond_1
    invoke-super {p0}, Lcom/zhy/view/flowlayout/FlowLayout;->performClick()Z

    move-result v4

    goto :goto_0
.end method

.method public setAdapter(Lcom/zhy/view/flowlayout/TagAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mTagAdapter:Lcom/zhy/view/flowlayout/TagAdapter;

    .line 107
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mTagAdapter:Lcom/zhy/view/flowlayout/TagAdapter;

    invoke-virtual {v0, p0}, Lcom/zhy/view/flowlayout/TagAdapter;->setOnDataChangedListener(Lcom/zhy/view/flowlayout/TagAdapter$OnDataChangedListener;)V

    .line 108
    invoke-direct {p0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->changeAdapter()V

    .line 110
    return-void
.end method

.method public setMaxSelectCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 184
    const-string v0, "TagFlowLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "you has already select more than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " views , so it will be clear ."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 187
    :cond_0
    iput p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mSelectedMax:I

    .line 188
    return-void
.end method

.method public setOnSelectListener(Lcom/zhy/view/flowlayout/TagFlowLayout$OnSelectListener;)V
    .locals 1
    .parameter "onSelectListener"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mOnSelectListener:Lcom/zhy/view/flowlayout/TagFlowLayout$OnSelectListener;

    .line 84
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mOnSelectListener:Lcom/zhy/view/flowlayout/TagFlowLayout$OnSelectListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->setClickable(Z)V

    .line 85
    :cond_0
    return-void
.end method

.method public setOnTagClickListener(Lcom/zhy/view/flowlayout/TagFlowLayout$OnTagClickListener;)V
    .locals 1
    .parameter "onTagClickListener"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->mOnTagClickListener:Lcom/zhy/view/flowlayout/TagFlowLayout$OnTagClickListener;

    .line 98
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->setClickable(Z)V

    .line 99
    :cond_0
    return-void
.end method
