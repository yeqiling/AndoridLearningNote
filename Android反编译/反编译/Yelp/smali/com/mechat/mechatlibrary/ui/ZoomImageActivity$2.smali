.class Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$2;
.super Ljava/lang/Object;
.source "ZoomImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->picIv:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->access$0(Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    #calls: Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->storeInSD(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->access$1(Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;Landroid/graphics/Bitmap;)V

    .line 69
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->saveSucId:I
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->access$2(Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$2;->this$0:Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->saveSucId:I
    invoke-static {v3}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->access$2(Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    const-string v2, "/Pictures/MeChat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    const/4 v2, 0x1

    .line 70
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 75
    :cond_0
    return-void
.end method
