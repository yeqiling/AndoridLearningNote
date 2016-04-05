.class Lcom/boohee/food/FoodDetailActivity$5;
.super Ljava/lang/Object;
.source "FoodDetailActivity.java"

# interfaces
.implements Lcom/boohee/myview/highlight/HighLight$OnPosCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/FoodDetailActivity;->showHighLight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/FoodDetailActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/FoodDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/boohee/food/FoodDetailActivity$5;->this$0:Lcom/boohee/food/FoodDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPos(FFLandroid/graphics/RectF;Lcom/boohee/myview/highlight/HighLight$MarginInfo;)V
    .locals 2
    .parameter "rightMargin"
    .parameter "bottomMargin"
    .parameter "rectF"
    .parameter "marginInfo"

    .prologue
    .line 368
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p4, Lcom/boohee/myview/highlight/HighLight$MarginInfo;->rightMargin:F

    .line 369
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    add-float/2addr v0, p2

    iput v0, p4, Lcom/boohee/myview/highlight/HighLight$MarginInfo;->bottomMargin:F

    .line 370
    return-void
.end method
