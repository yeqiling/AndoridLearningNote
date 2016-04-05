.class Lcom/boohee/food/SearchSportActivity$SearchTextWatcher;
.super Ljava/lang/Object;
.source "SearchSportActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/food/SearchSportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/SearchSportActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/food/SearchSportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/boohee/food/SearchSportActivity$SearchTextWatcher;->this$0:Lcom/boohee/food/SearchSportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/food/SearchSportActivity;Lcom/boohee/food/SearchSportActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/boohee/food/SearchSportActivity$SearchTextWatcher;-><init>(Lcom/boohee/food/SearchSportActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 429
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity$SearchTextWatcher;->this$0:Lcom/boohee/food/SearchSportActivity;

    iget-object v0, v0, Lcom/boohee/food/SearchSportActivity;->iv_clear:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity$SearchTextWatcher;->this$0:Lcom/boohee/food/SearchSportActivity;

    iget-object v0, v0, Lcom/boohee/food/SearchSportActivity;->iv_clear:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 420
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 425
    return-void
.end method
