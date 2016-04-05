.class final enum Lcom/squareup/leakcanary/AndroidExcludedRefs$7;
.super Lcom/squareup/leakcanary/AndroidExcludedRefs;
.source "AndroidExcludedRefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/AndroidExcludedRefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter "x0"

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs;-><init>(Ljava/lang/String;IZLcom/squareup/leakcanary/AndroidExcludedRefs$1;)V

    return-void
.end method


# virtual methods
.method add(Lcom/squareup/leakcanary/ExcludedRefs$Builder;)V
    .locals 2
    .parameter "excluded"

    .prologue
    .line 156
    const-string v0, "android.view.inputmethod.InputMethodManager"

    const-string v1, "mCurRootView"

    invoke-virtual {p1, v0, v1}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->instanceField(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    .line 157
    return-void
.end method
