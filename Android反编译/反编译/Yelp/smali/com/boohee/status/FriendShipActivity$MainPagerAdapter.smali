.class Lcom/boohee/status/FriendShipActivity$MainPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "FriendShipActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/status/FriendShipActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainPagerAdapter"
.end annotation


# instance fields
.field private mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTitles:[Ljava/lang/String;

.field final synthetic this$0:Lcom/boohee/status/FriendShipActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/status/FriendShipActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter "fm"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p3, fragments:Ljava/util/List;,"Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    iput-object p1, p0, Lcom/boohee/status/FriendShipActivity$MainPagerAdapter;->this$0:Lcom/boohee/status/FriendShipActivity;

    .line 75
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u597d\u53cb"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u7c89\u4e1d"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/boohee/status/FriendShipActivity$MainPagerAdapter;->mTitles:[Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/boohee/status/FriendShipActivity$MainPagerAdapter;->mFragments:Ljava/util/List;

    .line 77
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/boohee/status/FriendShipActivity$MainPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/boohee/status/FriendShipActivity$MainPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "position"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/boohee/status/FriendShipActivity$MainPagerAdapter;->mTitles:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
