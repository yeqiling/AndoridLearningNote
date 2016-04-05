.class Lcom/boohee/record/DietAndSportActivity$OnSnacksClickListener;
.super Ljava/lang/Object;
.source "DietAndSportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/record/DietAndSportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSnacksClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/DietAndSportActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/record/DietAndSportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/boohee/record/DietAndSportActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietAndSportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/record/DietAndSportActivity;Lcom/boohee/record/DietAndSportActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/boohee/record/DietAndSportActivity$OnSnacksClickListener;-><init>(Lcom/boohee/record/DietAndSportActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietAndSportActivity;

    iget-object v0, v0, Lcom/boohee/record/DietAndSportActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietAndSportActivity;

    iget-object v0, v0, Lcom/boohee/record/DietAndSportActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietAndSportActivity;

    iget-object v0, v0, Lcom/boohee/record/DietAndSportActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 293
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 304
    :goto_0
    return-void

    .line 295
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/record/DietAndSportActivity;->access$100(Lcom/boohee/record/DietAndSportActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;
    invoke-static {v2}, Lcom/boohee/record/DietAndSportActivity;->access$200(Lcom/boohee/record/DietAndSportActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boohee/food/AddFoodListActivity;->start(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 298
    :pswitch_1
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/record/DietAndSportActivity;->access$300(Lcom/boohee/record/DietAndSportActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;
    invoke-static {v2}, Lcom/boohee/record/DietAndSportActivity;->access$200(Lcom/boohee/record/DietAndSportActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boohee/food/AddFoodListActivity;->start(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 301
    :pswitch_2
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/record/DietAndSportActivity;->access$400(Lcom/boohee/record/DietAndSportActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity$OnSnacksClickListener;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;
    invoke-static {v2}, Lcom/boohee/record/DietAndSportActivity;->access$200(Lcom/boohee/record/DietAndSportActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boohee/food/AddFoodListActivity;->start(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e052d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
