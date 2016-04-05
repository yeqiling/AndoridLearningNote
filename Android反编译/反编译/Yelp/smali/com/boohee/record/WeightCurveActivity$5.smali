.class Lcom/boohee/record/WeightCurveActivity$5;
.super Ljava/lang/Object;
.source "WeightCurveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/WeightCurveActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/WeightCurveActivity;


# direct methods
.method constructor <init>(Lcom/boohee/record/WeightCurveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/boohee/record/WeightCurveActivity$5;->this$0:Lcom/boohee/record/WeightCurveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 300
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity$5;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/boohee/record/WeightCurveActivity;->access$1400(Lcom/boohee/record/WeightCurveActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u522b\u6233\u6211\uff0c\u8bf7\u65cb\u8f6c\u624b\u673a\u3002p.s. \u8bf7\u786e\u4fdd\u624b\u673a\u6ca1\u6709\u9501\u5b9a\u65cb\u8f6c\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u597d\u7684"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 301
    return-void
.end method
