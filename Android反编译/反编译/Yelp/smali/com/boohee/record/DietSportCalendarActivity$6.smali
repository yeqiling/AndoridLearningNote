.class Lcom/boohee/record/DietSportCalendarActivity$6;
.super Ljava/lang/Object;
.source "DietSportCalendarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/DietSportCalendarActivity;->initToolsBar()V
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
    .line 272
    iput-object p1, p0, Lcom/boohee/record/DietSportCalendarActivity$6;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const-wide/16 v2, 0x1f4

    .line 275
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$6;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iget-object v0, v0, Lcom/boohee/record/DietSportCalendarActivity;->dietPopView:Lcom/boohee/myview/DietPopView;

    invoke-virtual {v0}, Lcom/boohee/myview/DietPopView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$6;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iget-object v0, v0, Lcom/boohee/record/DietSportCalendarActivity;->dietPopView:Lcom/boohee/myview/DietPopView;

    invoke-virtual {v0}, Lcom/boohee/myview/DietPopView;->dismiss()V

    .line 277
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$6;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iget-object v0, v0, Lcom/boohee/record/DietSportCalendarActivity;->indicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 278
    new-instance v0, Lcom/boohee/record/DietSportCalendarActivity$6$1;

    invoke-direct {v0, p0}, Lcom/boohee/record/DietSportCalendarActivity$6$1;-><init>(Lcom/boohee/record/DietSportCalendarActivity$6;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$6;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iget-object v0, v0, Lcom/boohee/record/DietSportCalendarActivity;->backToday:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$6;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    #calls: Lcom/boohee/record/DietSportCalendarActivity;->refreshDietAndSport(Ljava/util/Date;)V
    invoke-static {v0, v1}, Lcom/boohee/record/DietSportCalendarActivity;->access$300(Lcom/boohee/record/DietSportCalendarActivity;Ljava/util/Date;)V

    .line 287
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$6;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iget-object v0, v0, Lcom/boohee/record/DietSportCalendarActivity;->dietPopView:Lcom/boohee/myview/DietPopView;

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity$6;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #getter for: Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/record/DietSportCalendarActivity;->access$400(Lcom/boohee/record/DietSportCalendarActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boohee/myview/DietPopView;->init(Ljava/lang/String;)V

    goto :goto_0
.end method
