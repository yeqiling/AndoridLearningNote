.class Lcom/boohee/uchoice/AddressEditActivity$1;
.super Ljava/lang/Object;
.source "AddressEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/AddressEditActivity;->findView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/uchoice/AddressEditActivity;


# direct methods
.method constructor <init>(Lcom/boohee/uchoice/AddressEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/boohee/uchoice/AddressEditActivity$1;->this$0:Lcom/boohee/uchoice/AddressEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/boohee/uchoice/AddressEditActivity$1;->this$0:Lcom/boohee/uchoice/AddressEditActivity;

    #getter for: Lcom/boohee/uchoice/AddressEditActivity;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/boohee/uchoice/AddressEditActivity;->access$000(Lcom/boohee/uchoice/AddressEditActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/utils/Keyboard;->closeAll(Landroid/content/Context;)V

    .line 102
    invoke-static {}, Lcom/boohee/widgets/RegionsPopwindow;->getInstance()Lcom/boohee/widgets/RegionsPopwindow;

    move-result-object v0

    .line 103
    .local v0, popwindow:Lcom/boohee/widgets/RegionsPopwindow;
    new-instance v1, Lcom/boohee/uchoice/AddressEditActivity$1$1;

    invoke-direct {v1, p0}, Lcom/boohee/uchoice/AddressEditActivity$1$1;-><init>(Lcom/boohee/uchoice/AddressEditActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/RegionsPopwindow;->setRegionChangeListener(Lcom/boohee/widgets/RegionsPopwindow$onRegionChangeListener;)V

    .line 113
    iget-object v1, p0, Lcom/boohee/uchoice/AddressEditActivity$1;->this$0:Lcom/boohee/uchoice/AddressEditActivity;

    #getter for: Lcom/boohee/uchoice/AddressEditActivity;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/boohee/uchoice/AddressEditActivity;->access$500(Lcom/boohee/uchoice/AddressEditActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/uchoice/AddressEditActivity$1;->this$0:Lcom/boohee/uchoice/AddressEditActivity;

    #getter for: Lcom/boohee/uchoice/AddressEditActivity;->address_province:Ljava/lang/String;
    invoke-static {v2}, Lcom/boohee/uchoice/AddressEditActivity;->access$100(Lcom/boohee/uchoice/AddressEditActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/uchoice/AddressEditActivity$1;->this$0:Lcom/boohee/uchoice/AddressEditActivity;

    #getter for: Lcom/boohee/uchoice/AddressEditActivity;->address_city:Ljava/lang/String;
    invoke-static {v3}, Lcom/boohee/uchoice/AddressEditActivity;->access$200(Lcom/boohee/uchoice/AddressEditActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/uchoice/AddressEditActivity$1;->this$0:Lcom/boohee/uchoice/AddressEditActivity;

    #getter for: Lcom/boohee/uchoice/AddressEditActivity;->address_district:Ljava/lang/String;
    invoke-static {v4}, Lcom/boohee/uchoice/AddressEditActivity;->access$300(Lcom/boohee/uchoice/AddressEditActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boohee/widgets/RegionsPopwindow;->showRegionsPopWindow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method
