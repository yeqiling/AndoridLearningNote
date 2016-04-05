.class Lme/nereo/multi_image_selector/MultiImageSelectorActivity$1;
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
    .line 75
    iput-object p1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity$1;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 78
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity$1;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->setResult(I)V

    .line 79
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity$1;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    invoke-virtual {v0}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->finish()V

    .line 80
    return-void
.end method
