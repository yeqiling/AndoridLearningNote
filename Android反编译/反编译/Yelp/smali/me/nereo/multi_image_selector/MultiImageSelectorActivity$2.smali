.class Lme/nereo/multi_image_selector/MultiImageSelectorActivity$2;
.super Ljava/lang/Object;
.source "MultiImageSelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/nereo/multi_image_selector/MultiImageSelectorActivity;


# direct methods
.method constructor <init>(Lme/nereo/multi_image_selector/MultiImageSelectorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity$2;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 88
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity$2;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;
    invoke-static {v1}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->access$000(Lme/nereo/multi_image_selector/MultiImageSelectorActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity$2;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;
    invoke-static {v1}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->access$000(Lme/nereo/multi_image_selector/MultiImageSelectorActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, data:Landroid/content/Intent;
    const-string v1, "select_result"

    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity$2;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;
    invoke-static {v2}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->access$000(Lme/nereo/multi_image_selector/MultiImageSelectorActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity$2;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 93
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity$2;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    invoke-virtual {v1}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->finish()V

    .line 95
    .end local v0           #data:Landroid/content/Intent;
    :cond_0
    return-void
.end method
