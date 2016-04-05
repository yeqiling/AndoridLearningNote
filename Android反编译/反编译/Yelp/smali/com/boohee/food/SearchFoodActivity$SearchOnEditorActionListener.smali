.class Lcom/boohee/food/SearchFoodActivity$SearchOnEditorActionListener;
.super Ljava/lang/Object;
.source "SearchFoodActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/food/SearchFoodActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchOnEditorActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/SearchFoodActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/food/SearchFoodActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/boohee/food/SearchFoodActivity$SearchOnEditorActionListener;->this$0:Lcom/boohee/food/SearchFoodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/food/SearchFoodActivity;Lcom/boohee/food/SearchFoodActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 511
    invoke-direct {p0, p1}, Lcom/boohee/food/SearchFoodActivity$SearchOnEditorActionListener;-><init>(Lcom/boohee/food/SearchFoodActivity;)V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$SearchOnEditorActionListener;->this$0:Lcom/boohee/food/SearchFoodActivity;

    #calls: Lcom/boohee/food/SearchFoodActivity;->doSearch()V
    invoke-static {v0}, Lcom/boohee/food/SearchFoodActivity;->access$1300(Lcom/boohee/food/SearchFoodActivity;)V

    .line 515
    const/4 v0, 0x1

    return v0
.end method
