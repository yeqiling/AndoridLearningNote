.class Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1$1;
.super Ljava/lang/Object;
.source "ChatMsgAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;

.field private final synthetic val$imageUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1$1;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1$1;->val$imageUri:Ljava/lang/String;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 244
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1$1;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v1

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$2(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 246
    const-string v1, "picUrl"

    iget-object v2, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1$1;->val$imageUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1$1;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v1

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$2(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 248
    return-void
.end method
