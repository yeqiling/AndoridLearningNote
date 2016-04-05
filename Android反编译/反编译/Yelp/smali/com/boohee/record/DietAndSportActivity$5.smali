.class Lcom/boohee/record/DietAndSportActivity$5;
.super Ljava/lang/Object;
.source "DietAndSportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/DietAndSportActivity;->getSportItemView(ILcom/boohee/model/RecordSport;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/DietAndSportActivity;

.field final synthetic val$index:I

.field final synthetic val$recordSport:Lcom/boohee/model/RecordSport;


# direct methods
.method constructor <init>(Lcom/boohee/record/DietAndSportActivity;Lcom/boohee/model/RecordSport;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/boohee/record/DietAndSportActivity$5;->this$0:Lcom/boohee/record/DietAndSportActivity;

    iput-object p2, p0, Lcom/boohee/record/DietAndSportActivity$5;->val$recordSport:Lcom/boohee/model/RecordSport;

    iput p3, p0, Lcom/boohee/record/DietAndSportActivity$5;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 571
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$5;->val$recordSport:Lcom/boohee/model/RecordSport;

    iget v0, v0, Lcom/boohee/model/RecordSport;->activity_id:I

    if-eqz v0, :cond_0

    .line 572
    iget v0, p0, Lcom/boohee/record/DietAndSportActivity$5;->val$index:I

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity$5;->val$recordSport:Lcom/boohee/model/RecordSport;

    invoke-static {v2, v0, v1}, Lcom/boohee/one/ui/fragment/AddSportFragment;->newInstance(IILcom/boohee/model/RecordSport;)Lcom/boohee/one/ui/fragment/AddSportFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity$5;->this$0:Lcom/boohee/record/DietAndSportActivity;

    invoke-virtual {v1}, Lcom/boohee/record/DietAndSportActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "addSportFragment"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/ui/fragment/AddSportFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 577
    :goto_0
    return-void

    .line 574
    :cond_0
    iget v0, p0, Lcom/boohee/record/DietAndSportActivity$5;->val$index:I

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity$5;->val$recordSport:Lcom/boohee/model/RecordSport;

    invoke-static {v2, v0, v1}, Lcom/boohee/one/ui/fragment/AddCustomSportFragment;->newInstance(IILcom/boohee/model/RecordSport;)Lcom/boohee/one/ui/fragment/AddCustomSportFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity$5;->this$0:Lcom/boohee/record/DietAndSportActivity;

    invoke-virtual {v1}, Lcom/boohee/record/DietAndSportActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "addCustomSportFragment"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/ui/fragment/AddCustomSportFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
