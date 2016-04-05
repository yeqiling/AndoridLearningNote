.class final Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;
.super Ljava/lang/Object;
.source "LeakCanaryInternals.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->setEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$componentClass:Ljava/lang/Class;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;->val$appContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;->val$componentClass:Ljava/lang/Class;

    iput-boolean p3, p0, Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 101
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;->val$appContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;->val$componentClass:Ljava/lang/Class;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, component:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 103
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    iget-boolean v4, p0, Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;->val$enabled:Z

    if-eqz v4, :cond_0

    move v1, v3

    .line 105
    .local v1, newState:I
    :goto_0
    invoke-virtual {v2, v0, v1, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 106
    return-void

    .line 103
    .end local v1           #newState:I
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method
