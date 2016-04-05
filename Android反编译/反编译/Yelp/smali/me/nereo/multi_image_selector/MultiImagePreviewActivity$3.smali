.class Lme/nereo/multi_image_selector/MultiImagePreviewActivity$3;
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
    .line 119
    iput-object p1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$3;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 122
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewActivity$3;->this$0:Lme/nereo/multi_image_selector/MultiImagePreviewActivity;

    invoke-virtual {v0}, Lme/nereo/multi_image_selector/MultiImagePreviewActivity;->finish()V

    .line 123
    return-void
.end method
