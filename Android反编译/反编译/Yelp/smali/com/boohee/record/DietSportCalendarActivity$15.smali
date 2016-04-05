.class Lcom/boohee/record/DietSportCalendarActivity$15;
.super Ljava/lang/Object;
.source "DietSportCalendarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/DietSportCalendarActivity;->getPhotoDietItemView(ILcom/boohee/model/RecordPhoto;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/DietSportCalendarActivity;

.field final synthetic val$index:I

.field final synthetic val$recordPhoto:Lcom/boohee/model/RecordPhoto;


# direct methods
.method constructor <init>(Lcom/boohee/record/DietSportCalendarActivity;Lcom/boohee/model/RecordPhoto;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/boohee/record/DietSportCalendarActivity$15;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iput-object p2, p0, Lcom/boohee/record/DietSportCalendarActivity$15;->val$recordPhoto:Lcom/boohee/model/RecordPhoto;

    iput p3, p0, Lcom/boohee/record/DietSportCalendarActivity$15;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 837
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$15;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #getter for: Lcom/boohee/record/DietSportCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/record/DietSportCalendarActivity;->access$2200(Lcom/boohee/record/DietSportCalendarActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity$15;->val$recordPhoto:Lcom/boohee/model/RecordPhoto;

    iget v2, p0, Lcom/boohee/record/DietSportCalendarActivity$15;->val$index:I

    invoke-static {v0, v1, v2}, Lcom/boohee/food/EditCameraRecordActivity;->start(Landroid/content/Context;Lcom/boohee/model/RecordPhoto;I)V

    .line 838
    return-void
.end method
