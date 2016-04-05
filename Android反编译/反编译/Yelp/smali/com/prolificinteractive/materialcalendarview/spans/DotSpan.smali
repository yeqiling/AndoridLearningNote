.class public Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;
.super Ljava/lang/Object;
.source "DotSpan.java"

# interfaces
.implements Landroid/text/style/LineBackgroundSpan;


# static fields
.field private static final DEFAULT_RADIUS:F = 3.0f


# instance fields
.field private final color:I

.field private final radius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->radius:F

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->color:I

    .line 17
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .parameter "radius"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->radius:F

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->color:I

    .line 27
    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0
    .parameter "radius"
    .parameter "color"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->radius:F

    .line 31
    iput p2, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->color:I

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->radius:F

    .line 21
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->color:I

    .line 22
    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V
    .locals 4
    .parameter "canvas"
    .parameter "paint"
    .parameter "left"
    .parameter "right"
    .parameter "top"
    .parameter "baseline"
    .parameter "bottom"
    .parameter "charSequence"
    .parameter "start"
    .parameter "end"
    .parameter "lineNum"

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 42
    .local v0, oldColor:I
    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->color:I

    if-eqz v1, :cond_0

    .line 43
    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->color:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    :cond_0
    add-int v1, p3, p4

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    int-to-float v2, p7

    iget v3, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->radius:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/prolificinteractive/materialcalendarview/spans/DotSpan;->radius:F

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 46
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    return-void
.end method
