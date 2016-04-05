.class Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartScaleGestureListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "PieChartTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llecho/lib/hellocharts/gesture/PieChartTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChartScaleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Llecho/lib/hellocharts/gesture/PieChartTouchHandler;


# direct methods
.method private constructor <init>(Llecho/lib/hellocharts/gesture/PieChartTouchHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartScaleGestureListener;->this$0:Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llecho/lib/hellocharts/gesture/PieChartTouchHandler;Llecho/lib/hellocharts/gesture/PieChartTouchHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartScaleGestureListener;-><init>(Llecho/lib/hellocharts/gesture/PieChartTouchHandler;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method
