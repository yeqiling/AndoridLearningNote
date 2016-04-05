.class Lcom/boohee/record/DietSportCalendarActivity$7;
.super Ljava/lang/Object;
.source "DietSportCalendarActivity.java"

# interfaces
.implements Lcom/boohee/myview/DietPopView$OnDateClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/DietSportCalendarActivity;->initDietView()V
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
    .line 296
    iput-object p1, p0, Lcom/boohee/record/DietSportCalendarActivity$7;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomClick()V
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$7;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iget-object v0, v0, Lcom/boohee/record/DietSportCalendarActivity;->indicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 313
    return-void
.end method

.method public onDateClick(Ljava/util/Date;)V
    .locals 2
    .parameter "date"

    .prologue
    .line 299
    if-eqz p1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$7;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #calls: Lcom/boohee/record/DietSportCalendarActivity;->refreshDietAndSport(Ljava/util/Date;)V
    invoke-static {v0, p1}, Lcom/boohee/record/DietSportCalendarActivity;->access$300(Lcom/boohee/record/DietSportCalendarActivity;Ljava/util/Date;)V

    .line 301
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$7;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #getter for: Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;
    invoke-static {v0}, Lcom/boohee/record/DietSportCalendarActivity;->access$400(Lcom/boohee/record/DietSportCalendarActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/DateFormatUtils;->isToday(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$7;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iget-object v0, v0, Lcom/boohee/record/DietSportCalendarActivity;->backToday:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$7;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iget-object v0, v0, Lcom/boohee/record/DietSportCalendarActivity;->dietPopView:Lcom/boohee/myview/DietPopView;

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity$7;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #getter for: Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/record/DietSportCalendarActivity;->access$400(Lcom/boohee/record/DietSportCalendarActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boohee/myview/DietPopView;->init(Ljava/lang/String;)V

    .line 308
    :cond_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$7;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iget-object v0, v0, Lcom/boohee/record/DietSportCalendarActivity;->backToday:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
