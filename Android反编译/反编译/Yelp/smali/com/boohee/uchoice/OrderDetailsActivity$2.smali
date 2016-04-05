.class Lcom/boohee/uchoice/OrderDetailsActivity$2;
.super Ljava/lang/Object;
.source "OrderDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/OrderDetailsActivity;->getFooterView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/uchoice/OrderDetailsActivity;


# direct methods
.method constructor <init>(Lcom/boohee/uchoice/OrderDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/boohee/uchoice/OrderDetailsActivity$2;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$2;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    invoke-static {v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$104(Lcom/boohee/uchoice/OrderDetailsActivity;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$2;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->iv_pay_more:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$200(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020205

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 146
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$2;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->rl_wechat:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$300(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$2;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->iv_pay_more:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$200(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020204

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 149
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$2;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->rl_wechat:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$300(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
