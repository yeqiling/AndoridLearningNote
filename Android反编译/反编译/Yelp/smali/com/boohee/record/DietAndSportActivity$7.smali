.class Lcom/boohee/record/DietAndSportActivity$7;
.super Ljava/lang/Object;
.source "DietAndSportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/DietAndSportActivity;->getPhotoDietItemView(ILcom/boohee/model/RecordPhoto;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/DietAndSportActivity;

.field final synthetic val$index:I

.field final synthetic val$recordPhoto:Lcom/boohee/model/RecordPhoto;


# direct methods
.method constructor <init>(Lcom/boohee/record/DietAndSportActivity;Lcom/boohee/model/RecordPhoto;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Lcom/boohee/record/DietAndSportActivity$7;->this$0:Lcom/boohee/record/DietAndSportActivity;

    iput-object p2, p0, Lcom/boohee/record/DietAndSportActivity$7;->val$recordPhoto:Lcom/boohee/model/RecordPhoto;

    iput p3, p0, Lcom/boohee/record/DietAndSportActivity$7;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$7;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/record/DietAndSportActivity;->access$2400(Lcom/boohee/record/DietAndSportActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity$7;->val$recordPhoto:Lcom/boohee/model/RecordPhoto;

    iget v2, p0, Lcom/boohee/record/DietAndSportActivity$7;->val$index:I

    invoke-static {v0, v1, v2}, Lcom/boohee/food/EditCameraRecordActivity;->start(Landroid/content/Context;Lcom/boohee/model/RecordPhoto;I)V

    .line 640
    return-void
.end method
