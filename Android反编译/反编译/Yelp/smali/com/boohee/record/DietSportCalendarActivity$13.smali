.class Lcom/boohee/record/DietSportCalendarActivity$13;
.super Ljava/lang/Object;
.source "DietSportCalendarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/DietSportCalendarActivity;->getVideoSportItemView(ILcom/boohee/model/VideoSportRecord;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/DietSportCalendarActivity;

.field final synthetic val$recordSport:Lcom/boohee/model/VideoSportRecord;


# direct methods
.method constructor <init>(Lcom/boohee/record/DietSportCalendarActivity;Lcom/boohee/model/VideoSportRecord;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Lcom/boohee/record/DietSportCalendarActivity$13;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    iput-object p2, p0, Lcom/boohee/record/DietSportCalendarActivity$13;->val$recordSport:Lcom/boohee/model/VideoSportRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 749
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity$13;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #getter for: Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/boohee/record/DietSportCalendarActivity;->access$1800(Lcom/boohee/record/DietSportCalendarActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u786e\u5b9a\u8981\u5220\u9664\u5417\uff1f"

    invoke-static {v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    .line 750
    .local v0, dialog:Lcom/boohee/widgets/LightAlertDialog;
    new-instance v1, Lcom/boohee/record/DietSportCalendarActivity$13$1;

    invoke-direct {v1, p0}, Lcom/boohee/record/DietSportCalendarActivity$13$1;-><init>(Lcom/boohee/record/DietSportCalendarActivity$13;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(Landroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    .line 763
    new-instance v1, Lcom/boohee/record/DietSportCalendarActivity$13$2;

    invoke-direct {v1, p0, v0}, Lcom/boohee/record/DietSportCalendarActivity$13$2;-><init>(Lcom/boohee/record/DietSportCalendarActivity$13;Lcom/boohee/widgets/LightAlertDialog;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(Landroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    .line 769
    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->show()V

    .line 770
    return-void
.end method
