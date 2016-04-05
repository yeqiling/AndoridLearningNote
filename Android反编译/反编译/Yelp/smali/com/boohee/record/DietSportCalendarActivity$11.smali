.class Lcom/boohee/record/DietSportCalendarActivity$11;
.super Ljava/lang/Object;
.source "DietSportCalendarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/DietSportCalendarActivity;->initSportCardView(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/DietSportCalendarActivity;

.field final synthetic val$recordSportList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/boohee/record/DietSportCalendarActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/boohee/record/DietSportCalendarActivity$11;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iput-object p2, p0, Lcom/boohee/record/DietSportCalendarActivity$11;->val$recordSportList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$11;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #getter for: Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/record/DietSportCalendarActivity;->access$1700(Lcom/boohee/record/DietSportCalendarActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity$11;->val$recordSportList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/boohee/record/SportListActivity;->start(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 694
    return-void
.end method
