.class Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;
.super Ljava/lang/Object;
.source "ChatMsgAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$position:I

.field private final synthetic val$voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;ILcom/mechat/mechatlibrary/bean/MCVoiceMessage;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    iput p2, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->val$voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    .locals 1
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, -0x1

    .line 287
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    iget v7, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->val$position:I

    #setter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->onClickPostion:I
    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$3(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;I)V

    .line 288
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$2(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "id"

    const-string v8, "pic_voice"

    invoke-static {v6, v7, v8}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 289
    .local v5, voiceImage:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$2(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object v6

    .line 290
    const-string v7, "id"

    const-string v8, "mc_play_progressbar"

    .line 289
    invoke-static {v6, v7, v8}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;

    .line 291
    .local v3, playPorgressBar:Lcom/mechat/mechatlibrary/custom/RoundProgressBar;
    const-string v6, "ChatMsgAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onclick voiceUrl = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->val$voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    invoke-virtual {v8}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getVoiceUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->val$voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    invoke-static {v6}, Lcom/mechat/mechatlibrary/utils/Utils;->isVoiceFileAvailable(Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;)Z

    move-result v1

    .line 294
    .local v1, isVoiceFileAvailable:Z
    if-nez v1, :cond_0

    .line 295
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$2(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->val$voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/utils/Utils;->getVoiceStoreFile(Landroid/content/Context;Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;)Ljava/io/File;

    move-result-object v4

    .line 296
    .local v4, voiceFile:Ljava/io/File;
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->isDownloading:Z
    invoke-static {v6}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$4(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 297
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    iget-object v7, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->val$voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    #calls: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->downloadFile(Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;Ljava/io/File;)V
    invoke-static {v6, v7, v4}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$5(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;Ljava/io/File;)V

    .line 300
    .end local v4           #voiceFile:Ljava/io/File;
    :cond_0
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$6(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/media/MediaPlayer;

    move-result-object v6

    new-instance v7, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2$1;

    invoke-direct {v7, p0, v5, v3}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2$1;-><init>(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;Landroid/widget/ImageView;Lcom/mechat/mechatlibrary/custom/RoundProgressBar;)V

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 309
    :try_start_0
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->val$voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    invoke-virtual {v6}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, localPath:Ljava/lang/String;
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$6(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v6

    if-nez v6, :cond_1

    .line 311
    const-string v6, "ChatMsgAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "voice item onclick = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->val$voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    invoke-virtual {v8}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$6(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->reset()V

    .line 313
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$6(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 314
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$6(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    .line 315
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$6(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->start()V

    .line 316
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$2(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "drawable"

    const-string v8, "mc_voice_stop"

    invoke-static {v6, v7, v8}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 317
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->val$voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    invoke-virtual {v6}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getDuration()I

    move-result v6

    mul-int/lit8 v6, v6, 0xa

    invoke-virtual {v3, v6}, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->setMax(I)V

    .line 318
    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->start()V

    .line 319
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    iget-object v7, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->onClickPostion:I
    invoke-static {v7}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$7(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)I

    move-result v7

    #setter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->playingPosition:I
    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$8(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    .line 359
    .end local v2           #localPath:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    invoke-virtual {v6}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->notifyDataSetChanged()V

    .line 360
    return-void

    .line 322
    .restart local v2       #localPath:Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->playingPosition:I
    invoke-static {v6}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$9(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)I

    move-result v6

    iget-object v7, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->onClickPostion:I
    invoke-static {v7}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$7(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 323
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$6(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->stop()V

    .line 325
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$2(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "drawable"

    const-string v8, "mc_voice_play"

    invoke-static {v6, v7, v8}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 324
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 326
    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->stop()V

    .line 327
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    const/4 v7, -0x1

    #setter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->playingPosition:I
    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$8(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;I)V

    .line 328
    const-string v6, "ChatMsgAdapter"

    const-string v7, "click again"

    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 343
    .end local v2           #localPath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 344
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 345
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #setter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->playingPosition:I
    invoke-static {v6, v9}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$8(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;I)V

    goto :goto_0

    .line 332
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #localPath:Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$6(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->reset()V

    .line 333
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$6(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 334
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$6(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    .line 335
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$6(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->start()V

    .line 337
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$2(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "drawable"

    const-string v8, "mc_voice_stop"

    invoke-static {v6, v7, v8}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 336
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 338
    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->start()V

    .line 339
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    iget-object v7, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #getter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->onClickPostion:I
    invoke-static {v7}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$7(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)I

    move-result v7

    #setter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->playingPosition:I
    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$8(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;I)V

    .line 340
    const-string v6, "ChatMsgAdapter"

    const-string v7, "not click again"

    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 346
    .end local v2           #localPath:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 347
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 348
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #setter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->playingPosition:I
    invoke-static {v6, v9}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$8(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;I)V

    goto/16 :goto_0

    .line 349
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 350
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 351
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #setter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->playingPosition:I
    invoke-static {v6, v9}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$8(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;I)V

    goto/16 :goto_0

    .line 352
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 353
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 354
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #setter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->playingPosition:I
    invoke-static {v6, v9}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$8(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;I)V

    goto/16 :goto_0

    .line 355
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 356
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v6, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;->this$0:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    #setter for: Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->playingPosition:I
    invoke-static {v6, v9}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->access$8(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;I)V

    goto/16 :goto_0
.end method
