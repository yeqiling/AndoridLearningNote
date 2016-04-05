.class Lcom/boohee/status/ReportActivity$1;
.super Ljava/lang/Object;
.source "ReportActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/ReportActivity;->findViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/ReportActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/ReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/boohee/status/ReportActivity$1;->this$0:Lcom/boohee/status/ReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "position"
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
    .line 72
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/boohee/status/ReportActivity$1;->this$0:Lcom/boohee/status/ReportActivity;

    iget-object v0, p0, Lcom/boohee/status/ReportActivity$1;->this$0:Lcom/boohee/status/ReportActivity;

    #getter for: Lcom/boohee/status/ReportActivity;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lcom/boohee/status/ReportActivity;->access$000(Lcom/boohee/status/ReportActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/boohee/status/ReportActivity;->category:Ljava/lang/String;

    .line 73
    return-void
.end method
