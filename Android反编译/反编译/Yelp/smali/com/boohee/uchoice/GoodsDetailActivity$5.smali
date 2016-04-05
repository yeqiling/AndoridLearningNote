.class Lcom/boohee/uchoice/GoodsDetailActivity$5;
.super Ljava/lang/Object;
.source "GoodsDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/GoodsDetailActivity;->onResume()V
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
    .line 271
    iput-object p1, p0, Lcom/boohee/uchoice/GoodsDetailActivity$5;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$5;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    #calls: Lcom/boohee/uchoice/GoodsDetailActivity;->requestGoodsCount()V
    invoke-static {v0}, Lcom/boohee/uchoice/GoodsDetailActivity;->access$700(Lcom/boohee/uchoice/GoodsDetailActivity;)V

    .line 275
    return-void
.end method
