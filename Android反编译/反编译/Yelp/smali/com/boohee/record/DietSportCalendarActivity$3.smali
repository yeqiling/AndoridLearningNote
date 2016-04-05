.class Lcom/boohee/record/DietSportCalendarActivity$3;
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
    .line 223
    iput-object p1, p0, Lcom/boohee/record/DietSportCalendarActivity$3;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPos(FFLandroid/graphics/RectF;Lcom/boohee/myview/highlight/HighLight$MarginInfo;)V
    .locals 1
    .parameter "rightMargin"
    .parameter "bottomMargin"
    .parameter "rectF"
    .parameter "marginInfo"

    .prologue
    .line 226
    const/4 v0, 0x0

    iput v0, p4, Lcom/boohee/myview/highlight/HighLight$MarginInfo;->leftMargin:F

    .line 227
    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    iput v0, p4, Lcom/boohee/myview/highlight/HighLight$MarginInfo;->topMargin:F

    .line 228
    return-void
.end method
