.class Lcom/boohee/status/ReportActivity$3;
.super Ljava/lang/Object;
.source "ReportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/ReportActivity;->onClick(Landroid/view/View;)V
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
    .line 120
    iput-object p1, p0, Lcom/boohee/status/ReportActivity$3;->this$0:Lcom/boohee/status/ReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/boohee/status/ReportActivity$3;->this$0:Lcom/boohee/status/ReportActivity;

    #calls: Lcom/boohee/status/ReportActivity;->sendReport()V
    invoke-static {v0}, Lcom/boohee/status/ReportActivity;->access$100(Lcom/boohee/status/ReportActivity;)V

    .line 124
    return-void
.end method
