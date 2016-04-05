.class public Lcom/boohee/utils/DateKnife;
.super Ljava/lang/Object;
.source "DateKnife.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static display(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "now"
    .parameter "origin"

    .prologue
    .line 26
    const-string v0, "MM-dd HH:mm"

    invoke-static {p1, v0}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
