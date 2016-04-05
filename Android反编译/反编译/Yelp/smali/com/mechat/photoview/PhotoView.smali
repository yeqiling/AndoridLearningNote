.class public Lcom/mechat/photoview/PhotoView;
.super Landroid/widget/ImageView;
.source "PhotoView.java"

# interfaces
.implements Lcom/mechat/photoview/IPhotoView;


# instance fields
.field private final mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

.field private mPendingScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mechat/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mechat/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attr"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 49
    new-instance v0, Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-direct {v0, p0}, Lcom/mechat/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    .line 51
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/mechat/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mechat/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public canZoom()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/mechat/photoview/PhotoViewAttacher;->canZoom()Z

    move-result v0

    return v0
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/mechat/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/mechat/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getIPhotoViewImplementation()Lcom/mechat/photoview/IPhotoView;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoView;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMaximumScale()F
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/mechat/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/mechat/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMidScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoView;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMinScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoView;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/mechat/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getOnPhotoTapListener()Lcom/mechat/photoview/PhotoViewAttacher$OnPhotoTapListener;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/mechat/photoview/PhotoViewAttacher;->getOnPhotoTapListener()Lcom/mechat/photoview/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnViewTapListener()Lcom/mechat/photoview/PhotoViewAttacher$OnViewTapListener;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/mechat/photoview/PhotoViewAttacher;->getOnViewTapListener()Lcom/mechat/photoview/PhotoViewAttacher$OnViewTapListener;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/mechat/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/mechat/photoview/PhotoViewAttacher;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/mechat/photoview/PhotoViewAttacher;->getVisibleRectangleBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/mechat/photoview/PhotoViewAttacher;->cleanup()V

    .line 283
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 284
    return-void
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1
    .parameter "allow"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setAllowParentInterceptOnEdge(Z)V

    .line 141
    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 1
    .parameter "finalRectangle"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setDisplayMatrix(Landroid/graphics/Matrix;)Z

    move-result v0

    return v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/mechat/photoview/PhotoViewAttacher;->update()V

    .line 183
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/mechat/photoview/PhotoViewAttacher;->update()V

    .line 191
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 196
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/mechat/photoview/PhotoViewAttacher;->update()V

    .line 199
    :cond_0
    return-void
.end method

.method public setMaxScale(F)V
    .locals 0
    .parameter "maxScale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/mechat/photoview/PhotoView;->setMaximumScale(F)V

    .line 169
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1
    .parameter "maximumScale"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    .line 174
    return-void
.end method

.method public setMediumScale(F)V
    .locals 1
    .parameter "mediumScale"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setMediumScale(F)V

    .line 163
    return-void
.end method

.method public setMidScale(F)V
    .locals 0
    .parameter "midScale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/mechat/photoview/PhotoView;->setMediumScale(F)V

    .line 158
    return-void
.end method

.method public setMinScale(F)V
    .locals 0
    .parameter "minScale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/mechat/photoview/PhotoView;->setMinimumScale(F)V

    .line 147
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1
    .parameter "minimumScale"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setMinimumScale(F)V

    .line 152
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1
    .parameter "newOnDoubleTapListener"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 278
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 209
    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/mechat/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setOnMatrixChangeListener(Lcom/mechat/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    .line 204
    return-void
.end method

.method public setOnPhotoTapListener(Lcom/mechat/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Lcom/mechat/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    .line 214
    return-void
.end method

.method public setOnViewTapListener(Lcom/mechat/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setOnViewTapListener(Lcom/mechat/photoview/PhotoViewAttacher$OnViewTapListener;)V

    .line 224
    return-void
.end method

.method public setPhotoViewRotation(F)V
    .locals 1
    .parameter "rotationDegree"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setRotationTo(F)V

    .line 63
    return-void
.end method

.method public setRotationBy(F)V
    .locals 1
    .parameter "rotationDegree"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setRotationBy(F)V

    .line 73
    return-void
.end method

.method public setRotationTo(F)V
    .locals 1
    .parameter "rotationDegree"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setRotationTo(F)V

    .line 68
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setScale(F)V

    .line 234
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 1
    .parameter "scale"
    .parameter "focalX"
    .parameter "focalY"
    .parameter "animate"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mechat/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 244
    return-void
.end method

.method public setScale(FZ)V
    .locals 1
    .parameter "scale"
    .parameter "animate"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2}, Lcom/mechat/photoview/PhotoViewAttacher;->setScale(FZ)V

    .line 239
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .parameter "scaleType"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    iput-object p1, p0, Lcom/mechat/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    goto :goto_0
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1
    .parameter "milliseconds"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setZoomTransitionDuration(I)V

    .line 268
    return-void
.end method

.method public setZoomable(Z)V
    .locals 1
    .parameter "zoomable"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/mechat/photoview/PhotoView;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setZoomable(Z)V

    .line 258
    return-void
.end method
