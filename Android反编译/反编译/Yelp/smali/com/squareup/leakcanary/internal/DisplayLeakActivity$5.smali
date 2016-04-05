.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$5;
.super Ljava/lang/Object;
.source "DisplayLeakActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$5;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 266
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$5;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$5;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    #getter for: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;
    invoke-static {v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$400(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    iget-object v0, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v0, v0, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    #setter for: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$302(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$5;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    #calls: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V
    invoke-static {v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$500(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 268
    return-void
.end method
