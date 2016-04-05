.class Lcom/boohee/record/CopyRecordActivity$5;
.super Ljava/lang/Object;
.source "CopyRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/CopyRecordActivity;->initSportCardView(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/CopyRecordActivity;

.field final synthetic val$ll_card:Landroid/widget/LinearLayout;

.field final synthetic val$recordSportList:Ljava/util/ArrayList;

.field final synthetic val$tb_time_type:Landroid/widget/ToggleButton;


# direct methods
.method constructor <init>(Lcom/boohee/record/CopyRecordActivity;Landroid/widget/ToggleButton;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/boohee/record/CopyRecordActivity$5;->this$0:Lcom/boohee/record/CopyRecordActivity;

    iput-object p2, p0, Lcom/boohee/record/CopyRecordActivity$5;->val$tb_time_type:Landroid/widget/ToggleButton;

    iput-object p3, p0, Lcom/boohee/record/CopyRecordActivity$5;->val$recordSportList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/boohee/record/CopyRecordActivity$5;->val$ll_card:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 396
    iget-object v2, p0, Lcom/boohee/record/CopyRecordActivity$5;->val$tb_time_type:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$5;->val$tb_time_type:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 397
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$5;->this$0:Lcom/boohee/record/CopyRecordActivity;

    iget-object v2, p0, Lcom/boohee/record/CopyRecordActivity$5;->val$recordSportList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity$5;->val$tb_time_type:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    #calls: Lcom/boohee/record/CopyRecordActivity;->setSportAllIsChecked(Ljava/util/ArrayList;Z)V
    invoke-static {v0, v2, v3}, Lcom/boohee/record/CopyRecordActivity;->access$1400(Lcom/boohee/record/CopyRecordActivity;Ljava/util/ArrayList;Z)V

    .line 398
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$5;->this$0:Lcom/boohee/record/CopyRecordActivity;

    iget-object v2, p0, Lcom/boohee/record/CopyRecordActivity$5;->val$recordSportList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity$5;->val$ll_card:Landroid/widget/LinearLayout;

    #calls: Lcom/boohee/record/CopyRecordActivity;->initSportCardView(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    invoke-static {v0, v2, v3}, Lcom/boohee/record/CopyRecordActivity;->access$1100(Lcom/boohee/record/CopyRecordActivity;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 399
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$5;->val$tb_time_type:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$5;->this$0:Lcom/boohee/record/CopyRecordActivity;

    iget-object v0, v0, Lcom/boohee/record/CopyRecordActivity;->tb_check_all:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 404
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 396
    goto :goto_0

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$5;->this$0:Lcom/boohee/record/CopyRecordActivity;

    iget-object v0, v0, Lcom/boohee/record/CopyRecordActivity;->tb_check_all:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity$5;->this$0:Lcom/boohee/record/CopyRecordActivity;

    #calls: Lcom/boohee/record/CopyRecordActivity;->isAllChecked()Z
    invoke-static {v1}, Lcom/boohee/record/CopyRecordActivity;->access$1300(Lcom/boohee/record/CopyRecordActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1
.end method
