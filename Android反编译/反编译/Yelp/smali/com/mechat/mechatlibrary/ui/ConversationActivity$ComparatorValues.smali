.class public final Lcom/mechat/mechatlibrary/ui/ConversationActivity$ComparatorValues;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComparatorValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mechat/mechatlibrary/bean/MCMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mechat/mechatlibrary/bean/MCMessage;Lcom/mechat/mechatlibrary/bean/MCMessage;)I
    .locals 6
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 1604
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getCreatedTime()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1605
    .local v0, m1:J
    invoke-virtual {p2}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getCreatedTime()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1606
    .local v2, m2:J
    const/4 v4, 0x0

    .line 1607
    .local v4, result:I
    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    .line 1608
    const/4 v4, 0x1

    .line 1610
    :cond_0
    cmp-long v5, v0, v2

    if-gez v5, :cond_1

    .line 1611
    const/4 v4, -0x1

    .line 1613
    :cond_1
    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/mechat/mechatlibrary/bean/MCMessage;

    check-cast p2, Lcom/mechat/mechatlibrary/bean/MCMessage;

    invoke-virtual {p0, p1, p2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$ComparatorValues;->compare(Lcom/mechat/mechatlibrary/bean/MCMessage;Lcom/mechat/mechatlibrary/bean/MCMessage;)I

    move-result v0

    return v0
.end method
