.class Lcom/boohee/record/DietAndSportActivity$3;
.super Ljava/lang/Object;
.source "DietAndSportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/DietAndSportActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/DietAndSportActivity;

.field final synthetic val$recordFoodList:Ljava/util/ArrayList;

.field final synthetic val$recordPhotoList:Ljava/util/ArrayList;

.field final synthetic val$time_type:I


# direct methods
.method constructor <init>(Lcom/boohee/record/DietAndSportActivity;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/boohee/record/DietAndSportActivity$3;->this$0:Lcom/boohee/record/DietAndSportActivity;

    iput p2, p0, Lcom/boohee/record/DietAndSportActivity$3;->val$time_type:I

    iput-object p3, p0, Lcom/boohee/record/DietAndSportActivity$3;->val$recordFoodList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/boohee/record/DietAndSportActivity$3;->val$recordPhotoList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$3;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/record/DietAndSportActivity;->access$2200(Lcom/boohee/record/DietAndSportActivity;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/boohee/record/DietAndSportActivity$3;->val$time_type:I

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity$3;->val$recordFoodList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity$3;->val$recordPhotoList:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/food/FoodListActivity;->start(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 508
    return-void
.end method
