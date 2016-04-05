.class public Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChatMsgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;,
        Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;,
        Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$TimeViewHolder;,
        Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final MAX_TYPE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ChatMsgAdapter"

.field public static final TYPE_EVENT:I = 0x3

.field public static final TYPE_TIME:I = 0x2


# instance fields
.field private context:Landroid/content/Context;

.field private imageLoader:Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;

.field private isDownloading:Z

.field private listView:Landroid/widget/ListView;

.field private mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

.field private mcMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mechat/mechatlibrary/bean/MCMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private onClickPostion:I

.field private palyProgress:I

.field private playingPosition:I

.field private spManager:Lcom/mechat/mechatlibrary/utils/SpManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ListView;Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "listView"
    .parameter "dbManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mechat/mechatlibrary/bean/MCMessage;",
            ">;",
            "Landroid/widget/ListView;",
            "Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, mcMessageList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCMessage;>;"
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 75
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 71
    iput v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->onClickPostion:I

    .line 72
    iput v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->playingPosition:I

    .line 73
    iput v1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->palyProgress:I

    .line 76
    iput-object p1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mcMessageList:Ljava/util/List;

    .line 78
    iput-object p3, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->listView:Landroid/widget/ListView;

    .line 79
    invoke-static {}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->imageLoader:Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;

    .line 80
    iput-object p4, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    .line 81
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 82
    iput-boolean v1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->isDownloading:Z

    .line 83
    new-instance v0, Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-direct {v0, p1}, Lcom/mechat/mechatlibrary/utils/SpManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->isDownloading:Z

    return-void
.end method

.method static synthetic access$2(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput p1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->onClickPostion:I

    return-void
.end method

.method static synthetic access$4(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->isDownloading:Z

    return v0
.end method

.method static synthetic access$5(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 543
    invoke-direct {p0, p1, p2}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->downloadFile(Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$6(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$7(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 71
    iget v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->onClickPostion:I

    return v0
.end method

.method static synthetic access$8(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->playingPosition:I

    return-void
.end method

.method static synthetic access$9(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->playingPosition:I

    return v0
.end method

.method private downloadFile(Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;Ljava/io/File;)V
    .locals 5
    .parameter "voiceMessage"
    .parameter "voiceFlie"

    .prologue
    .line 544
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getVoiceUrl()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, url:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 570
    :goto_0
    return-void

    .line 548
    :cond_0
    const-string v1, "ChatMsgAdapter"

    const-string v2, "downloadFile voice"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "mc_record_download_start"

    invoke-static {v2, v3, v4}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 550
    new-instance v1, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$3;-><init>(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;Ljava/io/File;Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;)V

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->get(Ljava/lang/String;Lcom/mechat/loopj/android/http/FileAsyncHttpResponseHandler;)V

    goto :goto_0
.end method

.method private setVoiceDuration(Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;)V
    .locals 5
    .parameter "voiceMessage"

    .prologue
    .line 573
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, localPath:Ljava/lang/String;
    iget-object v3, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v2

    .line 575
    .local v2, mp:Landroid/media/MediaPlayer;
    if-nez v2, :cond_0

    .line 584
    :goto_0
    return-void

    .line 578
    :cond_0
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    div-int/lit16 v0, v3, 0x3e8

    .line 579
    .local v0, duration:I
    if-nez v0, :cond_1

    .line 580
    const/4 v0, 0x1

    .line 582
    :cond_1
    invoke-virtual {p1, v0}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setDuration(I)V

    .line 583
    iget-object v3, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    invoke-virtual {v3, p1}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->updateMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    goto :goto_0
.end method


# virtual methods
.method public addMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    .locals 1
    .parameter "mcMessage"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mcMessageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mcMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 112
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mcMessageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mechat/mechatlibrary/bean/MCMessage;

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getDirection()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 118
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mcMessageList:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mechat/mechatlibrary/bean/MCMessage;

    .line 119
    .local v8, mcMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    const/4 v11, 0x0

    .line 120
    .local v11, viewHolder:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;
    const/4 v9, 0x0

    .line 121
    .local v9, timeViewHolder:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$TimeViewHolder;
    const/4 v5, 0x0

    .line 123
    .local v5, eventViewHolder:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;
    if-nez p2, :cond_1

    .line 125
    invoke-virtual/range {p0 .. p1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->getItemViewType(I)I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 194
    :goto_0
    invoke-virtual {v8}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v14

    packed-switch v14, :pswitch_data_1

    .line 365
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->getItemViewType(I)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_7

    .line 366
    iget-object v14, v9, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$TimeViewHolder;->timeTv:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    check-cast v8, Lcom/mechat/mechatlibrary/bean/MCTimeItem;

    .end local v8           #mcMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    invoke-virtual {v8}, Lcom/mechat/mechatlibrary/bean/MCTimeItem;->getTime()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    :cond_0
    :goto_2
    return-object p2

    .line 127
    .restart local v8       #mcMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    :pswitch_0
    new-instance v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;

    .end local v11           #viewHolder:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;
    invoke-direct {v11}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;-><init>()V

    .line 128
    .restart local v11       #viewHolder:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v15}, Lcom/mechat/mechatlibrary/utils/MResource;->getItemChatDetailLeftId(Landroid/content/Context;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 129
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/mechat/mechatlibrary/utils/MResource;->getItemChatContentTextId(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    .line 130
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/mechat/mechatlibrary/utils/MResource;->getItemChatContentPicId(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->contentImage:Landroid/widget/ImageView;

    .line 131
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/mechat/mechatlibrary/utils/MResource;->getItemChatContentPicRlId(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iput-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->contentImageRl:Landroid/view/View;

    .line 132
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/mechat/mechatlibrary/utils/MResource;->getItemChatContentVoiceId(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->contentVoice:Landroid/widget/TextView;

    .line 133
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    const-string v15, "id"

    const-string v16, "pic_voice"

    invoke-static/range {v14 .. v16}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->voiceImage:Landroid/widget/ImageView;

    .line 134
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    const-string v15, "id"

    const-string v16, "content_voice_rl"

    invoke-static/range {v14 .. v16}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iput-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->voiceRl:Landroid/view/View;

    .line 135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    const-string v15, "id"

    .line 136
    const-string v16, "mc_play_progressbar"

    .line 135
    invoke-static/range {v14 .. v16}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;

    iput-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->playProgressbar:Lcom/mechat/mechatlibrary/custom/RoundProgressBar;

    .line 137
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 140
    :pswitch_1
    new-instance v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;

    .end local v11           #viewHolder:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;
    invoke-direct {v11}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;-><init>()V

    .line 141
    .restart local v11       #viewHolder:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v15}, Lcom/mechat/mechatlibrary/utils/MResource;->getItemChatDetailRightId(Landroid/content/Context;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 142
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/mechat/mechatlibrary/utils/MResource;->getItemChatContentTextId(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    .line 143
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/mechat/mechatlibrary/utils/MResource;->getItemChatContentPicId(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->contentImage:Landroid/widget/ImageView;

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/mechat/mechatlibrary/utils/MResource;->getItemChatContentPicRlId(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iput-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->contentImageRl:Landroid/view/View;

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/mechat/mechatlibrary/utils/MResource;->getItemChatContentVoiceId(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->contentVoice:Landroid/widget/TextView;

    .line 146
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    const-string v15, "id"

    const-string v16, "pic_voice"

    invoke-static/range {v14 .. v16}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->voiceImage:Landroid/widget/ImageView;

    .line 147
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    const-string v15, "id"

    const-string v16, "content_voice_rl"

    invoke-static/range {v14 .. v16}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iput-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->voiceRl:Landroid/view/View;

    .line 148
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    const-string v15, "id"

    .line 149
    const-string v16, "mc_play_progressbar"

    .line 148
    invoke-static/range {v14 .. v16}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;

    iput-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->playProgressbar:Lcom/mechat/mechatlibrary/custom/RoundProgressBar;

    .line 150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/mechat/mechatlibrary/utils/MResource;->getProgressBarId(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ProgressBar;

    iput-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->sendingProgressBar:Landroid/widget/ProgressBar;

    .line 151
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/mechat/mechatlibrary/utils/MResource;->getSendStateId(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->sendState:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 155
    :pswitch_2
    new-instance v9, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$TimeViewHolder;

    .end local v9           #timeViewHolder:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$TimeViewHolder;
    invoke-direct {v9}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$TimeViewHolder;-><init>()V

    .line 156
    .restart local v9       #timeViewHolder:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$TimeViewHolder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v15}, Lcom/mechat/mechatlibrary/utils/MResource;->getItemChatTimeLayoutId(Landroid/content/Context;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 157
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/mechat/mechatlibrary/utils/MResource;->getItemChatTimeId(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v9, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$TimeViewHolder;->timeTv:Landroid/widget/TextView;

    .line 158
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 161
    :pswitch_3
    new-instance v5, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;

    .end local v5           #eventViewHolder:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;
    invoke-direct {v5}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;-><init>()V

    .line 162
    .restart local v5       #eventViewHolder:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v15}, Lcom/mechat/mechatlibrary/utils/MResource;->getItemChatEventLayoutId(Landroid/content/Context;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 163
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/mechat/mechatlibrary/utils/MResource;->getItemChatEventAvatarId(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/mechat/mechatlibrary/custom/CircleImageView;

    iput-object v14, v5, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;->avatarIv:Lcom/mechat/mechatlibrary/custom/CircleImageView;

    .line 164
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/mechat/mechatlibrary/utils/MResource;->getItemChatEventTextId(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v5, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;->joinTv:Landroid/widget/TextView;

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/mechat/mechatlibrary/utils/MResource;->getItemChatJoinEventId(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iput-object v14, v5, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;->joinEvent:Landroid/view/View;

    .line 167
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/mechat/mechatlibrary/utils/MResource;->getItemChatEventAvatar1Id(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/mechat/mechatlibrary/custom/CircleImageView;

    .line 166
    iput-object v14, v5, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;->avatarIv1:Lcom/mechat/mechatlibrary/custom/CircleImageView;

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/mechat/mechatlibrary/utils/MResource;->getItemChatEventAvatar2Id(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/mechat/mechatlibrary/custom/CircleImageView;

    .line 168
    iput-object v14, v5, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;->avatarIv2:Lcom/mechat/mechatlibrary/custom/CircleImageView;

    .line 170
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/mechat/mechatlibrary/utils/MResource;->getItemChatEventAvatar1NameId(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v5, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;->avatarName1:Landroid/widget/TextView;

    .line 171
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/mechat/mechatlibrary/utils/MResource;->getItemChatEventAvatar2NameId(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v5, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;->avatarName2:Landroid/widget/TextView;

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/mechat/mechatlibrary/utils/MResource;->getItemChatRedirectEventId(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iput-object v14, v5, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;->redirectEvent:Landroid/view/View;

    .line 173
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 178
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->getItemViewType(I)I

    move-result v14

    packed-switch v14, :pswitch_data_2

    goto/16 :goto_0

    .line 183
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .end local v11           #viewHolder:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;
    check-cast v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;

    .line 184
    .restart local v11       #viewHolder:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;
    goto/16 :goto_0

    .line 180
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .end local v11           #viewHolder:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;
    check-cast v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;

    .line 181
    .restart local v11       #viewHolder:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;
    goto/16 :goto_0

    .line 186
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .end local v9           #timeViewHolder:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$TimeViewHolder;
    check-cast v9, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$TimeViewHolder;

    .line 187
    .restart local v9       #timeViewHolder:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$TimeViewHolder;
    goto/16 :goto_0

    .line 189
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #eventViewHolder:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;
    check-cast v5, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;

    .restart local v5       #eventViewHolder:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;
    goto/16 :goto_0

    .line 196
    :pswitch_8
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->contentImageRl:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->voiceRl:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v15}, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->getInstance(Landroid/content/Context;)Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;

    move-result-object v15

    invoke-virtual {v8}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getContent()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 202
    :pswitch_9
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->voiceRl:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 207
    :try_start_0
    new-instance v6, Ljava/io/File;

    move-object v0, v8

    check-cast v0, Lcom/mechat/mechatlibrary/bean/MCImageMessage;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v6, imageFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 214
    .end local v6           #imageFile:Ljava/io/File;
    .local v7, isLocalImageExist:Z
    :goto_3
    if-eqz v7, :cond_2

    .line 215
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v14, "file://"

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v14, v8

    check-cast v14, Lcom/mechat/mechatlibrary/bean/MCImageMessage;

    invoke-virtual {v14}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 219
    .local v10, url:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->imageLoader:Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;

    iget-object v15, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->contentImage:Landroid/widget/ImageView;

    new-instance v16, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$1;-><init>(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v10, v15, v0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 258
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->contentImageRl:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 209
    .end local v7           #isLocalImageExist:Z
    .end local v10           #url:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 210
    .local v2, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    .restart local v7       #isLocalImageExist:Z
    goto :goto_3

    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    move-object v14, v8

    .line 217
    check-cast v14, Lcom/mechat/mechatlibrary/bean/MCImageMessage;

    invoke-virtual {v14}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->getPicUrl()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #url:Ljava/lang/String;
    goto :goto_4

    .end local v7           #isLocalImageExist:Z
    .end local v10           #url:Ljava/lang/String;
    :pswitch_a
    move-object v13, v8

    .line 261
    check-cast v13, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    .line 264
    .local v13, voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;
    invoke-virtual {v13}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getDuration()I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_3

    invoke-virtual {v13}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 265
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->setVoiceDuration(Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;)V

    .line 269
    :cond_3
    invoke-virtual {v13}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getDuration()I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_5

    const-string v12, "  "

    .line 270
    .local v12, voiceDuration:Ljava/lang/String;
    :goto_5
    invoke-virtual {v8}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getDirection()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 271
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->contentVoice:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "         "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :goto_6
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->contentImageRl:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->voiceRl:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 279
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->onClickPostion:I

    move/from16 v0, p1

    if-eq v14, v0, :cond_4

    .line 280
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->voiceImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    const-string v16, "drawable"

    const-string v17, "mc_voice_play"

    invoke-static/range {v15 .. v17}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 281
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->playProgressbar:Lcom/mechat/mechatlibrary/custom/RoundProgressBar;

    invoke-virtual {v14}, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->stop()V

    .line 283
    :cond_4
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->voiceRl:Landroid/view/View;

    new-instance v15, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v15, v0, v1, v13}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$2;-><init>(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;ILcom/mechat/mechatlibrary/bean/MCVoiceMessage;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 269
    .end local v12           #voiceDuration:Ljava/lang/String;
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getDuration()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    .line 273
    .restart local v12       #voiceDuration:Ljava/lang/String;
    :cond_6
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->contentVoice:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "         "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 367
    .end local v12           #voiceDuration:Ljava/lang/String;
    .end local v13           #voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->getItemViewType(I)I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_a

    move-object v3, v8

    .line 369
    check-cast v3, Lcom/mechat/mechatlibrary/bean/MCEventMessage;

    .line 370
    .local v3, eventMessage:Lcom/mechat/mechatlibrary/bean/MCEventMessage;
    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->getEventType()Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, eventType:Ljava/lang/String;
    const-string v14, "alloc_us"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "re_alloc_us"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 373
    :cond_8
    iget-object v14, v5, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;->joinTv:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->getUsname()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/mechat/mechatlibrary/utils/MResource;->getJoinChatString(Landroid/content/Context;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 373
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->imageLoader:Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->getAvatarUrl()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v5, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;->avatarIv:Lcom/mechat/mechatlibrary/custom/CircleImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 376
    iget-object v14, v5, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;->joinEvent:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v14, v5, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;->redirectEvent:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 378
    :cond_9
    const-string v14, "redirect"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 379
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->imageLoader:Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->getAvatarUrl()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v5, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;->avatarIv1:Lcom/mechat/mechatlibrary/custom/CircleImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->imageLoader:Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->getRedirectAvatarUrl()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v5, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;->avatarIv2:Lcom/mechat/mechatlibrary/custom/CircleImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 381
    iget-object v14, v5, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;->avatarName1:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->getUsname()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v14, v5, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;->avatarName2:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->getRedirectUsname()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v14, v5, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;->joinEvent:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v14, v5, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$EventViewHolder;->redirectEvent:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 387
    .end local v3           #eventMessage:Lcom/mechat/mechatlibrary/bean/MCEventMessage;
    .end local v4           #eventType:Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->getItemViewType(I)I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_0

    .line 391
    invoke-virtual/range {p0 .. p1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->getItemViewType(I)I

    move-result v14

    if-nez v14, :cond_0

    .line 392
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->sendingProgressBar:Landroid/widget/ProgressBar;

    if-eqz v14, :cond_0

    .line 393
    const-string v14, "sending"

    invoke-virtual {v8}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getStatus()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 394
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->sendingProgressBar:Landroid/widget/ProgressBar;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 395
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->sendState:Landroid/widget/ImageView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 396
    :cond_b
    const-string v14, "arrived"

    invoke-virtual {v8}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getStatus()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 397
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->sendingProgressBar:Landroid/widget/ProgressBar;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 398
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->sendState:Landroid/widget/ImageView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 401
    :cond_c
    const-string v14, "failure"

    invoke-virtual {v8}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getStatus()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 402
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->sendingProgressBar:Landroid/widget/ProgressBar;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 403
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->sendState:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->sendState:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->context:Landroid/content/Context;

    invoke-static {v15}, Lcom/mechat/mechatlibrary/utils/MResource;->getSendFailedId(Landroid/content/Context;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 405
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->sendState:Landroid/widget/ImageView;

    new-instance v15, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$FailedMessageOnClickListener;-><init>(Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v14, v11, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;->sendState:Landroid/widget/ImageView;

    invoke-virtual {v8}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 194
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 178
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x4

    return v0
.end method

.method public stopPlayVoice()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 590
    :cond_0
    return-void
.end method
