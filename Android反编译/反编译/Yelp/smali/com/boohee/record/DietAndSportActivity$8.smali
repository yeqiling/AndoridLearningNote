.class Lcom/boohee/record/DietAndSportActivity$8;
.super Ljava/lang/Object;
.source "DietAndSportActivity.java"

# interfaces
.implements Lcom/boohee/myview/GuidePopWindow$OnGuideClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/DietAndSportActivity;->createGuidePopWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/DietAndSportActivity;


# direct methods
.method constructor <init>(Lcom/boohee/record/DietAndSportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 882
    iput-object p1, p0, Lcom/boohee/record/DietAndSportActivity$8;->this$0:Lcom/boohee/record/DietAndSportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGuideClick()V
    .locals 2

    .prologue
    .line 885
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity$8;->this$0:Lcom/boohee/record/DietAndSportActivity;

    #getter for: Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/record/DietAndSportActivity;->access$2500(Lcom/boohee/record/DietAndSportActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/boohee/database/OnePreference;->setGuideDiet(Z)V

    .line 886
    return-void
.end method
