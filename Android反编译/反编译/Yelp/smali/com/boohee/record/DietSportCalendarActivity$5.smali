.class Lcom/boohee/record/DietSportCalendarActivity$5;
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
    .line 259
    iput-object p1, p0, Lcom/boohee/record/DietSportCalendarActivity$5;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const-wide/16 v2, 0x1f4

    .line 262
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$5;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iget-object v0, v0, Lcom/boohee/record/DietSportCalendarActivity;->dietPopView:Lcom/boohee/myview/DietPopView;

    invoke-virtual {v0}, Lcom/boohee/myview/DietPopView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$5;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iget-object v0, v0, Lcom/boohee/record/DietSportCalendarActivity;->dietPopView:Lcom/boohee/myview/DietPopView;

    invoke-virtual {v0}, Lcom/boohee/myview/DietPopView;->dismiss()V

    .line 264
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$5;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iget-object v0, v0, Lcom/boohee/record/DietSportCalendarActivity;->indicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 270
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$5;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #getter for: Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/record/DietSportCalendarActivity;->access$200(Lcom/boohee/record/DietSportCalendarActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tool_foodandsport_calendar"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$5;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iget-object v0, v0, Lcom/boohee/record/DietSportCalendarActivity;->dietPopView:Lcom/boohee/myview/DietPopView;

    invoke-virtual {v0}, Lcom/boohee/myview/DietPopView;->show()V

    .line 268
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$5;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iget-object v0, v0, Lcom/boohee/record/DietSportCalendarActivity;->indicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x4334

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method
