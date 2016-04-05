.class Lcom/boohee/record/CopyRecordActivity$4;
.super Ljava/lang/Object;
.source "CopyRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/CopyRecordActivity;->getDietItemView(ILjava/util/ArrayList;Landroid/widget/LinearLayout;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/CopyRecordActivity;

.field final synthetic val$foodRcordList:Ljava/util/ArrayList;

.field final synthetic val$ll_card:Landroid/widget/LinearLayout;

.field final synthetic val$recordFood:Lcom/boohee/model/RecordFood;

.field final synthetic val$tb_meal:Landroid/widget/ToggleButton;

.field final synthetic val$time_type:I


# direct methods
.method constructor <init>(Lcom/boohee/record/CopyRecordActivity;Landroid/widget/ToggleButton;Lcom/boohee/model/RecordFood;ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/boohee/record/CopyRecordActivity$4;->this$0:Lcom/boohee/record/CopyRecordActivity;

    iput-object p2, p0, Lcom/boohee/record/CopyRecordActivity$4;->val$tb_meal:Landroid/widget/ToggleButton;

    iput-object p3, p0, Lcom/boohee/record/CopyRecordActivity$4;->val$recordFood:Lcom/boohee/model/RecordFood;

    iput p4, p0, Lcom/boohee/record/CopyRecordActivity$4;->val$time_type:I

    iput-object p5, p0, Lcom/boohee/record/CopyRecordActivity$4;->val$foodRcordList:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/boohee/record/CopyRecordActivity$4;->val$ll_card:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 321
    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity$4;->val$tb_meal:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$4;->val$tb_meal:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 322
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$4;->val$recordFood:Lcom/boohee/model/RecordFood;

    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity$4;->val$recordFood:Lcom/boohee/model/RecordFood;

    iget-boolean v3, v3, Lcom/boohee/model/RecordFood;->isChecked:Z

    if-nez v3, :cond_1

    :goto_1
    iput-boolean v1, v0, Lcom/boohee/model/RecordFood;->isChecked:Z

    .line 323
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$4;->this$0:Lcom/boohee/record/CopyRecordActivity;

    iget v1, p0, Lcom/boohee/record/CopyRecordActivity$4;->val$time_type:I

    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity$4;->val$foodRcordList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/boohee/record/CopyRecordActivity$4;->val$ll_card:Landroid/widget/LinearLayout;

    #calls: Lcom/boohee/record/CopyRecordActivity;->initDietCardView(ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1, v3, v4}, Lcom/boohee/record/CopyRecordActivity;->access$200(Lcom/boohee/record/CopyRecordActivity;ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 324
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$4;->val$tb_meal:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$4;->this$0:Lcom/boohee/record/CopyRecordActivity;

    iget-object v0, v0, Lcom/boohee/record/CopyRecordActivity;->tb_check_all:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 329
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 321
    goto :goto_0

    :cond_1
    move v1, v2

    .line 322
    goto :goto_1

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$4;->this$0:Lcom/boohee/record/CopyRecordActivity;

    iget-object v0, v0, Lcom/boohee/record/CopyRecordActivity;->tb_check_all:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity$4;->this$0:Lcom/boohee/record/CopyRecordActivity;

    #calls: Lcom/boohee/record/CopyRecordActivity;->isAllChecked()Z
    invoke-static {v1}, Lcom/boohee/record/CopyRecordActivity;->access$1300(Lcom/boohee/record/CopyRecordActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_2
.end method
