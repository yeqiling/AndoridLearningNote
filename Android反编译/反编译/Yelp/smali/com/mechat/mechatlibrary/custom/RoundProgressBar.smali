.class public Lcom/mechat/mechatlibrary/custom/RoundProgressBar;
.super Landroid/view/View;
.source "RoundProgressBar.java"


# static fields
.field public static final FILL:I = 0x1

.field public static final STROKE:I


# instance fields
.field private isPlay:Z

.field private max:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private roundColor:I

.field private roundProgressColor:I

.field private roundWidth:F

.field private style:I

.field private textColor:I

.field private textIsDisplayable:Z

.field private textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->paint:Landroid/graphics/Paint;

    .line 114
    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    const-string v2, "mc_play_circle_round"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->roundColor:I

    .line 115
    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    const-string v2, "mc_play_circle_progress"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->roundProgressColor:I

    .line 116
    const v0, -0xff0100

    iput v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->textColor:I

    .line 117
    const/high16 v0, 0x4170

    iput v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->textSize:F

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->roundWidth:F

    .line 119
    const/16 v0, 0x64

    iput v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->max:I

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->textIsDisplayable:Z

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->style:I

    .line 124
    return-void
.end method

.method static synthetic access$0(Lcom/mechat/mechatlibrary/custom/RoundProgressBar;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->isPlay:Z

    return v0
.end method

.method static synthetic access$1(Lcom/mechat/mechatlibrary/custom/RoundProgressBar;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->progress:I

    return v0
.end method

.method static synthetic access$2(Lcom/mechat/mechatlibrary/custom/RoundProgressBar;)I
    .locals 1
    .parameter

    .prologue
    .line 54
    iget v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->max:I

    return v0
.end method

.method static synthetic access$3(Lcom/mechat/mechatlibrary/custom/RoundProgressBar;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput p1, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->progress:I

    return-void
.end method


# virtual methods
.method public getCricleColor()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->roundColor:I

    return v0
.end method

.method public getCricleProgressColor()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->roundProgressColor:I

    return v0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->max:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->progress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoundWidth()F
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->roundWidth:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->textSize:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v4, 0x1

    const/high16 v11, 0x4000

    const/4 v2, 0x0

    .line 128
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 133
    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 134
    .local v6, centre:I
    int-to-float v0, v6

    iget v3, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->roundWidth:F

    div-float/2addr v3, v11

    sub-float/2addr v0, v3

    float-to-int v8, v0

    .line 135
    .local v8, radius:I
    iget-object v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->roundColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    iget-object v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->roundWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    iget-object v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    int-to-float v0, v6

    int-to-float v3, v6

    int-to-float v5, v8

    iget-object v10, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 144
    iget-object v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 145
    iget-object v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->textColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->textSize:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 147
    iget-object v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 148
    iget v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->progress:I

    int-to-float v0, v0

    iget v3, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->max:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x42c8

    mul-float/2addr v0, v3

    float-to-int v7, v0

    .line 149
    .local v7, percent:I
    iget-object v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->paint:Landroid/graphics/Paint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    .line 151
    .local v9, textWidth:F
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->textIsDisplayable:Z

    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    iget v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->style:I

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-float v3, v6

    div-float v5, v9, v11

    sub-float/2addr v3, v5

    int-to-float v5, v6

    iget v10, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->textSize:F

    div-float/2addr v10, v11

    add-float/2addr v5, v10

    iget-object v10, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->roundWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    iget-object v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->roundProgressColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    new-instance v1, Landroid/graphics/RectF;

    sub-int v0, v6, v8

    int-to-float v0, v0

    sub-int v3, v6, v8

    int-to-float v3, v3

    add-int v5, v6, v8

    int-to-float v5, v5

    add-int v10, v6, v8

    int-to-float v10, v10

    invoke-direct {v1, v0, v3, v5, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 164
    .local v1, oval:Landroid/graphics/RectF;
    iget v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->style:I

    packed-switch v0, :pswitch_data_0

    .line 178
    :cond_1
    :goto_0
    return-void

    .line 166
    :pswitch_0
    iget-object v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    iget v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->progress:I

    mul-int/lit16 v0, v0, 0x168

    iget v3, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->max:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    iget v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->progress:I

    if-eqz v0, :cond_1

    .line 173
    iget v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->progress:I

    mul-int/lit16 v0, v0, 0x168

    iget v3, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->max:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v5, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCricleColor(I)V
    .locals 0
    .parameter "cricleColor"

    .prologue
    .line 255
    iput p1, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->roundColor:I

    .line 256
    return-void
.end method

.method public setCricleProgressColor(I)V
    .locals 0
    .parameter "cricleProgressColor"

    .prologue
    .line 263
    iput p1, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->roundProgressColor:I

    .line 264
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2
    .parameter "max"

    .prologue
    .line 190
    monitor-enter p0

    if-gez p1, :cond_0

    .line 191
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 193
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->max:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 211
    monitor-enter p0

    if-gez p1, :cond_0

    .line 212
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "progress not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 214
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->max:I

    if-le p1, v0, :cond_1

    .line 215
    iget p1, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->max:I

    .line 217
    :cond_1
    iget v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->max:I

    if-gt p1, v0, :cond_2

    .line 218
    iput p1, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->progress:I

    .line 219
    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->postInvalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public setRoundWidth(F)V
    .locals 0
    .parameter "roundWidth"

    .prologue
    .line 287
    iput p1, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->roundWidth:F

    .line 288
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter "textColor"

    .prologue
    .line 271
    iput p1, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->textColor:I

    .line 272
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .parameter "textSize"

    .prologue
    .line 279
    iput p1, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->textSize:F

    .line 280
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->isPlay:Z

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->isPlay:Z

    .line 227
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mechat/mechatlibrary/custom/RoundProgressBar$1;

    invoke-direct {v1, p0}, Lcom/mechat/mechatlibrary/custom/RoundProgressBar$1;-><init>(Lcom/mechat/mechatlibrary/custom/RoundProgressBar;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 241
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 243
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->setProgress(I)V

    .line 247
    iput-boolean v0, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->isPlay:Z

    .line 248
    return-void
.end method
