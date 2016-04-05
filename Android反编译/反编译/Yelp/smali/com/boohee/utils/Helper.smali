.class public Lcom/boohee/utils/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field public static final DEBUG:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logJson(Ljava/lang/String;)V
    .locals 0
    .parameter "json"

    .prologue
    .line 75
    return-void
.end method

.method public static logJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "json"

    .prologue
    .line 80
    return-void
.end method

.method public static showLog(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 70
    return-void
.end method

.method public static showLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 65
    return-void
.end method

.method public static showLong(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 47
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 48
    return-void
.end method

.method public static showLong(Landroid/content/Context;I)V
    .locals 2
    .parameter "ctx"
    .parameter "resId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 44
    return-void
.end method

.method public static showLong(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "ctx"
    .parameter "text"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 32
    return-void
.end method

.method public static showLong(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 35
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 36
    return-void
.end method

.method public static showToast(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 59
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 60
    return-void
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 2
    .parameter "ctx"
    .parameter "resId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 56
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "ctx"
    .parameter "text"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 20
    return-void
.end method

.method public static showToast(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 23
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 24
    return-void
.end method
