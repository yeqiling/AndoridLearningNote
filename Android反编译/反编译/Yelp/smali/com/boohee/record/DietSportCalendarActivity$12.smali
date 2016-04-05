.class Lcom/boohee/record/DietSportCalendarActivity$12;
.super Ljava/lang/Object;
.source "DietSportCalendarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/DietSportCalendarActivity;->getSportItemView(ILcom/boohee/model/RecordSport;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/DietSportCalendarActivity;

.field final synthetic val$index:I

.field final synthetic val$recordSport:Lcom/boohee/model/RecordSport;


# direct methods
.method constructor <init>(Lcom/boohee/record/DietSportCalendarActivity;Lcom/boohee/model/RecordSport;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/boohee/record/DietSportCalendarActivity$12;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iput-object p2, p0, Lcom/boohee/record/DietSportCalendarActivity$12;->val$recordSport:Lcom/boohee/model/RecordSport;

    iput p3, p0, Lcom/boohee/record/DietSportCalendarActivity$12;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 718
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$12;->val$recordSport:Lcom/boohee/model/RecordSport;

    iget v0, v0, Lcom/boohee/model/RecordSport;->activity_id:I

    if-eqz v0, :cond_0

    .line 719
    iget v0, p0, Lcom/boohee/record/DietSportCalendarActivity$12;->val$index:I

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity$12;->val$recordSport:Lcom/boohee/model/RecordSport;

    invoke-static {v2, v0, v1}, Lcom/boohee/one/ui/fragment/AddSportFragment;->newInstance(IILcom/boohee/model/RecordSport;)Lcom/boohee/one/ui/fragment/AddSportFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity$12;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    invoke-virtual {v1}, Lcom/boohee/record/DietSportCalendarActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "addSportFragment"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/ui/fragment/AddSportFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 724
    :goto_0
    return-void

    .line 721
    :cond_0
    iget v0, p0, Lcom/boohee/record/DietSportCalendarActivity$12;->val$index:I

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity$12;->val$recordSport:Lcom/boohee/model/RecordSport;

    invoke-static {v2, v0, v1}, Lcom/boohee/one/ui/fragment/AddCustomSportFragment;->newInstance(IILcom/boohee/model/RecordSport;)Lcom/boohee/one/ui/fragment/AddCustomSportFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity$12;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    invoke-virtual {v1}, Lcom/boohee/record/DietSportCalendarActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "addCustomSportFragment"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/ui/fragment/AddCustomSportFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
