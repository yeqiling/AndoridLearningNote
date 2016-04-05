.class final enum Lcom/squareup/leakcanary/AndroidExcludedRefs$24;
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
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs;-><init>(Ljava/lang/String;ILcom/squareup/leakcanary/AndroidExcludedRefs$1;)V

    return-void
.end method


# virtual methods
.method add(Lcom/squareup/leakcanary/ExcludedRefs$Builder;)V
    .locals 1
    .parameter "excluded"

    .prologue
    .line 316
    const-string v0, "FinalizerWatchdogDaemon"

    invoke-virtual {p1, v0}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->thread(Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    .line 317
    return-void
.end method
