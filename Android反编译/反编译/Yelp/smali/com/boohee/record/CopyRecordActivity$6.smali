.class Lcom/boohee/record/CopyRecordActivity$6;
.super Ljava/lang/Object;
.source "CopyRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/CopyRecordActivity;->getSportItemView(Ljava/util/ArrayList;Landroid/widget/LinearLayout;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/CopyRecordActivity;

.field final synthetic val$ll_card:Landroid/widget/LinearLayout;

.field final synthetic val$recordSport:Lcom/boohee/model/RecordSport;

.field final synthetic val$sportRecordList:Ljava/util/ArrayList;

.field final synthetic val$tb_meal:Landroid/widget/ToggleButton;


# direct methods
.method constructor <init>(Lcom/boohee/record/CopyRecordActivity;Landroid/widget/ToggleButton;Lcom/boohee/model/RecordSport;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/boohee/record/CopyRecordActivity$6;->this$0:Lcom/boohee/record/CopyRecordActivity;

    iput-object p2, p0, Lcom/boohee/record/CopyRecordActivity$6;->val$tb_meal:Landroid/widget/ToggleButton;

    iput-object p3, p0, Lcom/boohee/record/CopyRecordActivity$6;->val$recordSport:Lcom/boohee/model/RecordSport;

    iput-object p4, p0, Lcom/boohee/record/CopyRecordActivity$6;->val$sportRecordList:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/boohee/record/CopyRecordActivity$6;->val$ll_card:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 427
    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity$6;->val$tb_meal:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$6;->val$tb_meal:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 428
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$6;->val$recordSport:Lcom/boohee/model/RecordSport;

    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity$6;->val$recordSport:Lcom/boohee/model/RecordSport;

    iget-boolean v3, v3, Lcom/boohee/model/RecordSport;->isChecked:Z

    if-nez v3, :cond_1

    :goto_1
    iput-boolean v1, v0, Lcom/boohee/model/RecordSport;->isChecked:Z

    .line 429
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$6;->this$0:Lcom/boohee/record/CopyRecordActivity;

    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity$6;->val$sportRecordList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity$6;->val$ll_card:Landroid/widget/LinearLayout;

    #calls: Lcom/boohee/record/CopyRecordActivity;->initSportCardView(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1, v3}, Lcom/boohee/record/CopyRecordActivity;->access$1100(Lcom/boohee/record/CopyRecordActivity;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 430
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$6;->val$tb_meal:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$6;->this$0:Lcom/boohee/record/CopyRecordActivity;

    iget-object v0, v0, Lcom/boohee/record/CopyRecordActivity;->tb_check_all:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 435
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 427
    goto :goto_0

    :cond_1
    move v1, v2

    .line 428
    goto :goto_1

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity$6;->this$0:Lcom/boohee/record/CopyRecordActivity;

    iget-object v0, v0, Lcom/boohee/record/CopyRecordActivity;->tb_check_all:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity$6;->this$0:Lcom/boohee/record/CopyRecordActivity;

    #calls: Lcom/boohee/record/CopyRecordActivity;->isAllChecked()Z
    invoke-static {v1}, Lcom/boohee/record/CopyRecordActivity;->access$1300(Lcom/boohee/record/CopyRecordActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_2
.end method
