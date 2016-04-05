.class Lcom/boohee/record/DietSportCalendarActivity$14;
.super Ljava/lang/Object;
.source "DietSportCalendarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/DietSportCalendarActivity;->getDietItemView(ILcom/boohee/model/RecordFood;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/DietSportCalendarActivity;

.field final synthetic val$index:I

.field final synthetic val$recordFood:Lcom/boohee/model/RecordFood;


# direct methods
.method constructor <init>(Lcom/boohee/record/DietSportCalendarActivity;Lcom/boohee/model/RecordFood;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 792
    iput-object p1, p0, Lcom/boohee/record/DietSportCalendarActivity$14;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iput-object p2, p0, Lcom/boohee/record/DietSportCalendarActivity$14;->val$recordFood:Lcom/boohee/model/RecordFood;

    iput p3, p0, Lcom/boohee/record/DietSportCalendarActivity$14;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 795
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity$14;->val$recordFood:Lcom/boohee/model/RecordFood;

    iget-object v3, v3, Lcom/boohee/model/RecordFood;->code:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 796
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity$14;->val$recordFood:Lcom/boohee/model/RecordFood;

    iget v3, v3, Lcom/boohee/model/RecordFood;->time_type:I

    iget v4, p0, Lcom/boohee/record/DietSportCalendarActivity$14;->val$index:I

    iget-object v5, p0, Lcom/boohee/record/DietSportCalendarActivity$14;->val$recordFood:Lcom/boohee/model/RecordFood;

    invoke-static {v3, v4, v5}, Lcom/boohee/one/ui/fragment/EditDietFragment;->newInstance(IILcom/boohee/model/RecordFood;)Lcom/boohee/one/ui/fragment/EditDietFragment;

    move-result-object v1

    .line 797
    .local v1, editDietFragment:Lcom/boohee/one/ui/fragment/EditDietFragment;
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity$14;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    invoke-virtual {v3}, Lcom/boohee/record/DietSportCalendarActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 798
    .local v2, transaction:Landroid/support/v4/app/FragmentTransaction;
    const-string v3, "editDietFragment"

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 799
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 806
    .end local v1           #editDietFragment:Lcom/boohee/one/ui/fragment/EditDietFragment;
    :goto_0
    return-void

    .line 801
    .end local v2           #transaction:Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    const/4 v3, 0x1

    iget v4, p0, Lcom/boohee/record/DietSportCalendarActivity$14;->val$index:I

    iget-object v5, p0, Lcom/boohee/record/DietSportCalendarActivity$14;->val$recordFood:Lcom/boohee/model/RecordFood;

    invoke-static {v3, v4, v5}, Lcom/boohee/one/ui/fragment/AddCustomDietFragment;->newInstance(IILcom/boohee/model/RecordFood;)Lcom/boohee/one/ui/fragment/AddCustomDietFragment;

    move-result-object v0

    .line 802
    .local v0, addCustomDietFragment:Lcom/boohee/one/ui/fragment/AddCustomDietFragment;
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity$14;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    invoke-virtual {v3}, Lcom/boohee/record/DietSportCalendarActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 803
    .restart local v2       #transaction:Landroid/support/v4/app/FragmentTransaction;
    const-string v3, "addCustomDietFragment"

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 804
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method
