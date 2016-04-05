.class Lcom/boohee/uchoice/OrderListActivity$MPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "OrderListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/uchoice/OrderListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MPagerAdapter"
.end annotation


# instance fields
.field TITLES:[Ljava/lang/String;

.field final synthetic this$0:Lcom/boohee/uchoice/OrderListActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/uchoice/OrderListActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 3
    .parameter
    .parameter "fm"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/boohee/uchoice/OrderListActivity$MPagerAdapter;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    .line 157
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 154
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5f85\u4ed8\u6b3e"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u5df2\u4ed8\u6b3e"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u5df2\u53d1\u8d27"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/boohee/uchoice/OrderListActivity$MPagerAdapter;->TITLES:[Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity$MPagerAdapter;->TITLES:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity$MPagerAdapter;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->mFragments:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderListActivity;->access$600(Lcom/boohee/uchoice/OrderListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "position"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity$MPagerAdapter;->TITLES:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
