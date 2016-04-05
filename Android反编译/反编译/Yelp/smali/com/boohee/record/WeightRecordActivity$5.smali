.class Lcom/boohee/record/WeightRecordActivity$5;
.super Ljava/lang/Object;
.source "WeightRecordActivity.java"

# interfaces
.implements Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/WeightRecordActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/WeightRecordActivity;


# direct methods
.method constructor <init>(Lcom/boohee/record/WeightRecordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/boohee/record/WeightRecordActivity$5;->this$0:Lcom/boohee/record/WeightRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity$5;->this$0:Lcom/boohee/record/WeightRecordActivity;

    #calls: Lcom/boohee/record/WeightRecordActivity;->requestRecords()V
    invoke-static {v0}, Lcom/boohee/record/WeightRecordActivity;->access$600(Lcom/boohee/record/WeightRecordActivity;)V

    .line 333
    return-void
.end method
