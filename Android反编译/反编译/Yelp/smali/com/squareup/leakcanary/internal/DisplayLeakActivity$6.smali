.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;
.super Ljava/lang/Object;
.source "DisplayLeakActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 274
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 276
    invoke-static {}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->detectedLeakDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 277
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 278
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 279
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 278
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    iget-object v5, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    #setter for: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;
    invoke-static {v5, v6}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$402(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;Ljava/util/List;)Ljava/util/List;

    .line 283
    iget-object v5, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    #calls: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V
    invoke-static {v5}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$500(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 284
    return-void
.end method
