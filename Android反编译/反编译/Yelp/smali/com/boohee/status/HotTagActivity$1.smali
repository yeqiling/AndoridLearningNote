.class Lcom/boohee/status/HotTagActivity$1;
.super Ljava/lang/Object;
.source "HotTagActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/HotTagActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/HotTagActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/HotTagActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/boohee/status/HotTagActivity$1;->this$0:Lcom/boohee/status/HotTagActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/boohee/status/HotTagActivity$1;->this$0:Lcom/boohee/status/HotTagActivity;

    #getter for: Lcom/boohee/status/HotTagActivity;->recentTags:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/status/HotTagActivity;->access$000(Lcom/boohee/status/HotTagActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/boohee/status/HotTagActivity$1;->this$0:Lcom/boohee/status/HotTagActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/boohee/status/HotTagActivity;->setResult(ILandroid/content/Intent;)V

    .line 65
    iget-object v1, p0, Lcom/boohee/status/HotTagActivity$1;->this$0:Lcom/boohee/status/HotTagActivity;

    invoke-virtual {v1}, Lcom/boohee/status/HotTagActivity;->finish()V

    .line 66
    return-void
.end method
