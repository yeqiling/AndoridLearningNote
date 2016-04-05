.class Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;
.super Ljava/lang/Object;
.source "ChatMsgAdapter.java"

# interfaces
.implements Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    .locals 1
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    return-object v0
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .parameter "imageUri"
    .parameter "view"

    .prologue
    .line 256
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "imageUri"
    .parameter "view"
    .parameter "loadedImage"

    .prologue
    .line 233
    if-eqz p3, :cond_1

    .line 234
    const-string v0, "ChatMsgAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "listView.getLastVisiblePosition() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$1(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 235
    const-string v2, "   count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$1(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$1(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$1(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$1(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 240
    :cond_0
    new-instance v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1$1;

    invoke-direct {v0, p0, p1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1$1;-><init>(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    :cond_1
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/mechat/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0
    .parameter "imageUri"
    .parameter "view"
    .parameter "failReason"

    .prologue
    .line 229
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .parameter "imageUri"
    .parameter "view"

    .prologue
    .line 224
    return-void
.end method
