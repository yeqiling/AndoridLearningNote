.class Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$1;
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
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$1;->this$0:Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$1;->this$0:Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->finish()V

    .line 60
    return-void
.end method
