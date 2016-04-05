.class Lcom/boohee/uchoice/GoodsDetailActivity$4;
.super Ljava/lang/Object;
.source "GoodsDetailActivity.java"

# interfaces
.implements Lcom/boohee/one/ui/fragment/GoodsHomeFragment$OnOpenGoodsFormatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/GoodsDetailActivity;->initFragments()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/uchoice/GoodsDetailActivity;


# direct methods
.method constructor <init>(Lcom/boohee/uchoice/GoodsDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/boohee/uchoice/GoodsDetailActivity$4;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenGoodsFormat(Landroid/widget/TextView;)V
    .locals 1
    .parameter "tv_format"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$4;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    iput-object p1, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->mTvFormat:Landroid/widget/TextView;

    .line 224
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$4;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    #calls: Lcom/boohee/uchoice/GoodsDetailActivity;->openFormatPop()V
    invoke-static {v0}, Lcom/boohee/uchoice/GoodsDetailActivity;->access$600(Lcom/boohee/uchoice/GoodsDetailActivity;)V

    .line 225
    return-void
.end method
