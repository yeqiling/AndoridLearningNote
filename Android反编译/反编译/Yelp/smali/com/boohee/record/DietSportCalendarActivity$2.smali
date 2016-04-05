.class Lcom/boohee/record/DietSportCalendarActivity$2;
.super Ljava/lang/Object;
.source "DietSportCalendarActivity.java"

# interfaces
.implements Lcom/boohee/myview/highlight/HighLight$OnPosCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/DietSportCalendarActivity;->showHighLight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/DietSportCalendarActivity;


# direct methods
.method constructor <init>(Lcom/boohee/record/DietSportCalendarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/boohee/record/DietSportCalendarActivity$2;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPos(FFLandroid/graphics/RectF;Lcom/boohee/myview/highlight/HighLight$MarginInfo;)V
    .locals 3
    .parameter "rightMargin"
    .parameter "bottomMargin"
    .parameter "rectF"
    .parameter "marginInfo"

    .prologue
    .line 234
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p4, Lcom/boohee/myview/highlight/HighLight$MarginInfo;->rightMargin:F

    .line 235
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$2;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    invoke-virtual {v0}, Lcom/boohee/record/DietSportCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity$2;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #getter for: Lcom/boohee/record/DietSportCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v1}, Lcom/boohee/record/DietSportCalendarActivity;->access$100(Lcom/boohee/record/DietSportCalendarActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v1

    const/high16 v2, 0x41f0

    invoke-static {v1, v2}, Lcom/boohee/utils/ViewUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p4, Lcom/boohee/myview/highlight/HighLight$MarginInfo;->bottomMargin:F

    .line 236
    return-void
.end method
