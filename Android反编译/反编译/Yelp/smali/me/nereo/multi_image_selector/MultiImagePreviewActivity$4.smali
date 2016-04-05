.class Lme/nereo/multi_image_selector/MultiImagePreviewActivity$4;
.super Ljava/lang/Object;
.source "MultiImagePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;


# direct methods
.method constructor <init>(Lme/nereo/multi_image_selector/MultiImagePreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$4;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 129
    sget-object v1, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mSelectList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mSelectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v0, data:Landroid/content/Intent;
    const-string v1, "select_result"

    sget-object v2, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->mSelectList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$4;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 134
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$4;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    invoke-virtual {v1}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->finish()V

    .line 136
    .end local v0           #data:Landroid/content/Intent;
    :cond_0
    return-void
.end method
