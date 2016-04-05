.class Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;
.super Ljava/lang/Object;
.source "MaterialCalendarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;


# direct methods
.method constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 95
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    #getter for: Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;
    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$100(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    #getter for: Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$200(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    #getter for: Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$200(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    #getter for: Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;
    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$300(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    #getter for: Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$200(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    #getter for: Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$200(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method
