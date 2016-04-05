.class Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2$1;
.super Ljava/lang/Object;
.source "ChatMsgAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;

.field private final synthetic val$playPorgressBar:Lcom/mechat/mechatlibrary/custom/RoundProgressBar;

.field private final synthetic val$voiceImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;Landroid/widget/ImageView;Lcom/mechat/mechatlibrary/custom/RoundProgressBar;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2$1;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2$1;->val$voiceImage:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2$1;->val$playPorgressBar:Lcom/mechat/mechatlibrary/custom/RoundProgressBar;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2$1;->val$voiceImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2$1;->this$1:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v1

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$2(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "mc_voice_play"

    invoke-static {v1, v2, v3}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 305
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2$1;->val$playPorgressBar:Lcom/mechat/mechatlibrary/custom/RoundProgressBar;

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->stop()V

    .line 306
    return-void
.end method
