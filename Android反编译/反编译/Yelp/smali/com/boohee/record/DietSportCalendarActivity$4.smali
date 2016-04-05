.class Lcom/boohee/record/DietSportCalendarActivity$4;
.super Ljava/lang/Object;
.source "DietSportCalendarActivity.java"

# interfaces
.implements Lcom/boohee/myview/highlight/HighLight$OnHighLightClickListener;


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
    .line 239
    iput-object p1, p0, Lcom/boohee/record/DietSportCalendarActivity$4;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->setDietFoodGuide(Z)V

    .line 243
    return-void
.end method
