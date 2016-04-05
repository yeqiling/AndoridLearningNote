.class Lcom/boohee/record/DietAndSportActivity$6;
.super Ljava/lang/Object;
.source "DietAndSportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/DietAndSportActivity;->getDietItemView(ILcom/boohee/model/RecordFood;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/DietAndSportActivity;

.field final synthetic val$index:I

.field final synthetic val$recordFood:Lcom/boohee/model/RecordFood;


# direct methods
.method constructor <init>(Lcom/boohee/record/DietAndSportActivity;Lcom/boohee/model/RecordFood;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/boohee/record/DietAndSportActivity$6;->this$0:Lcom/boohee/record/DietAndSportActivity;

    iput-object p2, p0, Lcom/boohee/record/DietAndSportActivity$6;->val$recordFood:Lcom/boohee/model/RecordFood;

    iput p3, p0, Lcom/boohee/record/DietAndSportActivity$6;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$6;->val$recordFood:Lcom/boohee/model/RecordFood;

    iget-object v0, v0, Lcom/boohee/model/RecordFood;->code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$6;->val$recordFood:Lcom/boohee/model/RecordFood;

    iget v0, v0, Lcom/boohee/model/RecordFood;->time_type:I

    iget v1, p0, Lcom/boohee/record/DietAndSportActivity$6;->val$index:I

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity$6;->val$recordFood:Lcom/boohee/model/RecordFood;

    invoke-static {v0, v1, v2}, Lcom/boohee/one/ui/fragment/EditDietFragment;->newInstance(IILcom/boohee/model/RecordFood;)Lcom/boohee/one/ui/fragment/EditDietFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity$6;->this$0:Lcom/boohee/record/DietAndSportActivity;

    invoke-virtual {v1}, Lcom/boohee/record/DietAndSportActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "editDietFragment"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/ui/fragment/EditDietFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 608
    :goto_0
    return-void

    .line 606
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/boohee/record/DietAndSportActivity$6;->val$index:I

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity$6;->val$recordFood:Lcom/boohee/model/RecordFood;

    invoke-static {v0, v1, v2}, Lcom/boohee/one/ui/fragment/AddCustomDietFragment;->newInstance(IILcom/boohee/model/RecordFood;)Lcom/boohee/one/ui/fragment/AddCustomDietFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity$6;->this$0:Lcom/boohee/record/DietAndSportActivity;

    invoke-virtual {v1}, Lcom/boohee/record/DietAndSportActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "addCustomDietFragment"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/ui/fragment/AddCustomDietFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
