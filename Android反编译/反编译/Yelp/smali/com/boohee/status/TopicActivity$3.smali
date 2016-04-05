.class Lcom/boohee/status/TopicActivity$3;
.super Ljava/lang/Object;
.source "TopicActivity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/TopicActivity;->initFragments()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/TopicActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/TopicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/boohee/status/TopicActivity$3;->this$0:Lcom/boohee/status/TopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 246
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    .line 247
    .local v0, position:I
    packed-switch v0, :pswitch_data_0

    .line 256
    :goto_0
    :pswitch_0
    return-void

    .line 251
    :pswitch_1
    iget-object v1, p0, Lcom/boohee/status/TopicActivity$3;->this$0:Lcom/boohee/status/TopicActivity;

    iget-object v1, v1, Lcom/boohee/status/TopicActivity;->mFragments:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;

    invoke-virtual {v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;->loadFirst()V

    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    const/4 v2, 0x1

    .line 225
    iget-object v0, p0, Lcom/boohee/status/TopicActivity$3;->this$0:Lcom/boohee/status/TopicActivity;

    invoke-virtual {v0}, Lcom/boohee/status/TopicActivity;->supportInvalidateOptionsMenu()V

    .line 226
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 237
    :goto_0
    return-void

    .line 228
    :pswitch_0
    iget-object v1, p0, Lcom/boohee/status/TopicActivity$3;->this$0:Lcom/boohee/status/TopicActivity;

    iget-object v0, p0, Lcom/boohee/status/TopicActivity$3;->this$0:Lcom/boohee/status/TopicActivity;

    iget-object v0, v0, Lcom/boohee/status/TopicActivity;->mFragments:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/BaseFragment;

    #calls: Lcom/boohee/status/TopicActivity;->switchFragment(Lcom/boohee/one/ui/fragment/BaseFragment;)V
    invoke-static {v1, v0}, Lcom/boohee/status/TopicActivity;->access$300(Lcom/boohee/status/TopicActivity;Lcom/boohee/one/ui/fragment/BaseFragment;)V

    goto :goto_0

    .line 231
    :pswitch_1
    iget-object v1, p0, Lcom/boohee/status/TopicActivity$3;->this$0:Lcom/boohee/status/TopicActivity;

    iget-object v0, p0, Lcom/boohee/status/TopicActivity$3;->this$0:Lcom/boohee/status/TopicActivity;

    iget-object v0, v0, Lcom/boohee/status/TopicActivity;->mFragments:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/BaseFragment;

    #calls: Lcom/boohee/status/TopicActivity;->switchFragment(Lcom/boohee/one/ui/fragment/BaseFragment;)V
    invoke-static {v1, v0}, Lcom/boohee/status/TopicActivity;->access$300(Lcom/boohee/status/TopicActivity;Lcom/boohee/one/ui/fragment/BaseFragment;)V

    .line 232
    iget-object v0, p0, Lcom/boohee/status/TopicActivity$3;->this$0:Lcom/boohee/status/TopicActivity;

    iget-object v0, v0, Lcom/boohee/status/TopicActivity;->mFragments:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;

    invoke-virtual {v0}, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;->loadFirst()V

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 242
    return-void
.end method
