.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;


# direct methods
.method private constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1618
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1618
    invoke-direct {p0, p1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1623
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 1626
    .local v9, action:Ljava/lang/String;
    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/MCMessageManager;->getNewMessageReceivedAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1627
    const-string v2, "ConversationActivity"

    const-string v3, "receive msg from broadcast"

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    const-string v2, "msgId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1631
    .local v15, msgId:Ljava/lang/String;
    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/mechat/mechatlibrary/MCMessageManager;->getMessage(Ljava/lang/String;)Lcom/mechat/mechatlibrary/bean/MCMessage;

    move-result-object v14

    .line 1633
    .local v14, message:Lcom/mechat/mechatlibrary/bean/MCMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v14, :cond_1

    .line 1634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$4(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$4(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/mechat/mechatlibrary/utils/TimeUtils;->refreshTimeItem(Ljava/util/List;)V

    .line 1636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->notifyDataSetChanged()V

    .line 1638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$5(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v11

    .line 1640
    .local v11, lastVisiblePosition:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ne v11, v2, :cond_0

    .line 1641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$5(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static {v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 1646
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isPause:Z
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$6(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioManager;

    .line 1648
    .local v12, mAudioManager:Landroid/media/AudioManager;
    invoke-virtual {v12}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->soundPool:Landroid/media/SoundPool;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$7(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/media/SoundPool;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1706
    .end local v11           #lastVisiblePosition:I
    .end local v12           #mAudioManager:Landroid/media/AudioManager;
    .end local v14           #message:Lcom/mechat/mechatlibrary/bean/MCMessage;
    .end local v15           #msgId:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1658
    :cond_2
    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/MCMessageManager;->getServiceInputtingAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->uName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$8(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    invoke-static {v4}, Lcom/mechat/mechatlibrary/utils/MResource;->getInputtingTitleString(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$9(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    move-result-object v2

    const/4 v3, 0x2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1664
    :cond_3
    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/MCMessageManager;->getUserIsRedirectedEventAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1666
    const-string v2, "eventId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1668
    .local v10, eventId:Ljava/lang/String;
    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/mechat/mechatlibrary/MCMessageManager;->getEvent(Ljava/lang/String;)Lcom/mechat/mechatlibrary/bean/MCEvent;

    move-result-object v13

    .line 1670
    .local v13, mcEvent:Lcom/mechat/mechatlibrary/bean/MCEvent;
    if-eqz v13, :cond_1

    .line 1671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->usName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$10(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {}, Lcom/mechat/mechatlibrary/bean/MCService;->getCurrentService()Lcom/mechat/mechatlibrary/bean/MCService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/bean/MCService;->getUsname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$11(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/utils/SpManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/utils/SpManager;->getShowEvent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1675
    const-string v2, "ConversationActivity"

    const-string v3, "onUserIsRedirected set usName"

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->transEventToMessage(Lcom/mechat/mechatlibrary/bean/MCEvent;)Lcom/mechat/mechatlibrary/bean/MCMessage;
    invoke-static {v2, v13}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$12(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Lcom/mechat/mechatlibrary/bean/MCEvent;)Lcom/mechat/mechatlibrary/bean/MCMessage;

    move-result-object v17

    .line 1677
    .local v17, redirectEvent:Lcom/mechat/mechatlibrary/bean/MCMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$4(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$4(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/mechat/mechatlibrary/utils/TimeUtils;->refreshTimeItem(Ljava/util/List;)V

    .line 1679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1684
    .end local v10           #eventId:Ljava/lang/String;
    .end local v13           #mcEvent:Lcom/mechat/mechatlibrary/bean/MCEvent;
    .end local v17           #redirectEvent:Lcom/mechat/mechatlibrary/bean/MCMessage;
    :cond_4
    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/MCMessageManager;->getReAllocationEventAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1687
    const-string v2, "eventId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1689
    .restart local v10       #eventId:Ljava/lang/String;
    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/mechat/mechatlibrary/MCMessageManager;->getEvent(Ljava/lang/String;)Lcom/mechat/mechatlibrary/bean/MCEvent;

    move-result-object v13

    .line 1691
    .restart local v13       #mcEvent:Lcom/mechat/mechatlibrary/bean/MCEvent;
    if-eqz v13, :cond_1

    .line 1692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->usName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$10(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {}, Lcom/mechat/mechatlibrary/bean/MCService;->getCurrentService()Lcom/mechat/mechatlibrary/bean/MCService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/bean/MCService;->getUsname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$11(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/utils/SpManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/utils/SpManager;->getShowEvent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->transEventToMessage(Lcom/mechat/mechatlibrary/bean/MCEvent;)Lcom/mechat/mechatlibrary/bean/MCMessage;
    invoke-static {v2, v13}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$12(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Lcom/mechat/mechatlibrary/bean/MCEvent;)Lcom/mechat/mechatlibrary/bean/MCMessage;

    move-result-object v16

    .line 1698
    .local v16, reAllocationEvent:Lcom/mechat/mechatlibrary/bean/MCMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$4(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$4(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/mechat/mechatlibrary/utils/TimeUtils;->refreshTimeItem(Ljava/util/List;)V

    .line 1700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->notifyDataSetChanged()V

    .line 1702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeTipUI(IZ)V
    invoke-static {v2, v3, v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$13(Lcom/mechat/mechatlibrary/ui/ConversationActivity;IZ)V

    goto/16 :goto_0
.end method
