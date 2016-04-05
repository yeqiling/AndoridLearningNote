.class public abstract Lcom/mechat/nostra13/universalimageloader/core/imageaware/ViewAware;
.super Ljava/lang/Object;
.source "ViewAware.java"

# interfaces
.implements Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;


# static fields
.field public static final WARN_CANT_SET_BITMAP:Ljava/lang/String; = "Can\'t set a bitmap into view. You should call ImageLoader on UI thread for it."

.field public static final WARN_CANT_SET_DRAWABLE:Ljava/lang/String; = "Can\'t set a drawable into view. You should call ImageLoader on UI thread for it."


# instance fields
.field protected checkActualViewSize:Z

.field protected viewRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ViewAware;-><init>(Landroid/view/View;Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "checkActualViewSize"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    .line 74
    iput-boolean p2, p0, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ViewAware;->checkActualViewSize:Z

    .line 75
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 5

    .prologue
    .line 112
    iget-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 113
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 115
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, 0x0

    .line 116
    .local v0, height:I
    iget-boolean v3, p0, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ViewAware;->checkActualViewSize:Z

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_0

    .line 117
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 119
    :cond_0
    if-gtz v0, :cond_1

    if-eqz v1, :cond_1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 122
    .end local v0           #height:I
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 142
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 143
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public getScaleType()Lcom/mechat/nostra13/universalimageloader/core/assist/ViewScaleType;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/mechat/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/mechat/nostra13/universalimageloader/core/assist/ViewScaleType;

    return-object v0
.end method

.method public getWidth()I
    .locals 5

    .prologue
    .line 88
    iget-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 89
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 91
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    .line 92
    .local v2, width:I
    iget-boolean v3, p0, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ViewAware;->checkActualViewSize:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_0

    .line 93
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 95
    :cond_0
    if-gtz v2, :cond_1

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 98
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #width:I
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getWrappedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public isCollected()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)Z
    .locals 4
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 163
    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 164
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0, p1, v0}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ViewAware;->setImageBitmapInto(Landroid/graphics/Bitmap;Landroid/view/View;)V

    .line 166
    const/4 v1, 0x1

    .line 171
    .end local v0           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 169
    :cond_1
    const-string v2, "Can\'t set a bitmap into view. You should call ImageLoader on UI thread for it."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/mechat/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract setImageBitmapInto(Landroid/graphics/Bitmap;Landroid/view/View;)V
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4
    .parameter "drawable"

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 149
    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 150
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0, p1, v0}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ViewAware;->setImageDrawableInto(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 152
    const/4 v1, 0x1

    .line 157
    .end local v0           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 155
    :cond_1
    const-string v2, "Can\'t set a drawable into view. You should call ImageLoader on UI thread for it."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/mechat/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract setImageDrawableInto(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
.end method
