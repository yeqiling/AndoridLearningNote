.class Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;
.super Ljava/lang/Object;
.source "DietSportCalendarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/record/DietSportCalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSnacksClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/DietSportCalendarActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/record/DietSportCalendarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/record/DietSportCalendarActivity;Lcom/boohee/record/DietSportCalendarActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;-><init>(Lcom/boohee/record/DietSportCalendarActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iget-object v0, v0, Lcom/boohee/record/DietSportCalendarActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iget-object v0, v0, Lcom/boohee/record/DietSportCalendarActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iget-object v0, v0, Lcom/boohee/record/DietSportCalendarActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 418
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 432
    :goto_0
    return-void

    .line 420
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #getter for: Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/record/DietSportCalendarActivity;->access$600(Lcom/boohee/record/DietSportCalendarActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tool_foodandsport_extrabreakfastmeal"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #getter for: Lcom/boohee/record/DietSportCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/record/DietSportCalendarActivity;->access$700(Lcom/boohee/record/DietSportCalendarActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #getter for: Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;
    invoke-static {v2}, Lcom/boohee/record/DietSportCalendarActivity;->access$400(Lcom/boohee/record/DietSportCalendarActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boohee/food/AddFoodListActivity;->start(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 424
    :pswitch_1
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #getter for: Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/record/DietSportCalendarActivity;->access$800(Lcom/boohee/record/DietSportCalendarActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tool_foodandsport_extralunchmeal"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #getter for: Lcom/boohee/record/DietSportCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/record/DietSportCalendarActivity;->access$900(Lcom/boohee/record/DietSportCalendarActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #getter for: Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;
    invoke-static {v2}, Lcom/boohee/record/DietSportCalendarActivity;->access$400(Lcom/boohee/record/DietSportCalendarActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boohee/food/AddFoodListActivity;->start(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 428
    :pswitch_2
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #getter for: Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/record/DietSportCalendarActivity;->access$1000(Lcom/boohee/record/DietSportCalendarActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tool_foodandsport_extradinnermeal"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #getter for: Lcom/boohee/record/DietSportCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/record/DietSportCalendarActivity;->access$1100(Lcom/boohee/record/DietSportCalendarActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #getter for: Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;
    invoke-static {v2}, Lcom/boohee/record/DietSportCalendarActivity;->access$400(Lcom/boohee/record/DietSportCalendarActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boohee/food/AddFoodListActivity;->start(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x7f0e052d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
