.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
.super Landroid/os/Handler;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;


# direct methods
.method private constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1713
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1713
    invoke-direct {p0, p1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .parameter "msg"

    .prologue
    .line 1716
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1717
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 1896
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1719
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->uName:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$8(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/TextView;

    move-result-object v22

    invoke-static {}, Lcom/mechat/mechatlibrary/bean/MCService;->getCurrentService()Lcom/mechat/mechatlibrary/bean/MCService;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/mechat/mechatlibrary/bean/MCService;->getUname()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1722
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePop:Landroid/widget/PopupWindow;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$14(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/PopupWindow;

    move-result-object v22

    if-nez v22, :cond_1

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v23, v0

    const-string v24, "layout"

    const-string v25, "mc_voice_pop"

    invoke-static/range {v23 .. v25}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 1725
    .local v13, popContent:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    const-string v24, "id"

    const-string v25, "mc_voice_pop_iv"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceMicIv:Landroid/widget/ImageView;
    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$15(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Landroid/widget/ImageView;)V

    .line 1726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    const-string v24, "id"

    const-string v25, "mc_voice_pop_tv"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceTipTv:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$16(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Landroid/widget/TextView;)V

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    new-instance v23, Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v24, v0

    const/high16 v25, 0x4334

    invoke-static/range {v24 .. v25}, Lcom/mechat/mechatlibrary/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v25, v0

    const/high16 v26, 0x433e

    invoke-static/range {v25 .. v26}, Lcom/mechat/mechatlibrary/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v13, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePop:Landroid/widget/PopupWindow;
    invoke-static/range {v22 .. v23}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$17(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Landroid/widget/PopupWindow;)V

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePop:Landroid/widget/PopupWindow;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$14(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/PopupWindow;

    move-result-object v22

    const v23, 0x1030002

    invoke-virtual/range {v22 .. v23}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1731
    .end local v13           #popContent:Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePop:Landroid/widget/PopupWindow;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$14(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/PopupWindow;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v22

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isTouchUp:Z
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$18(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 1732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceMicIv:Landroid/widget/ImageView;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$19(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/ImageView;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v23, v0

    const-string v24, "drawable"

    const-string v25, "mc_voice_pop_mic_0"

    invoke-static/range {v23 .. v25}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceTipTv:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$20(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v23, v0

    const-string v24, "string"

    const-string v25, "mc_record_up_and_cancel"

    invoke-static/range {v23 .. v25}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(I)V

    .line 1734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceMicIv:Landroid/widget/ImageView;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$19(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/ImageView;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v23, v0

    const-string v24, "drawable"

    const-string v25, "mc_voice_pop_mic_0"

    invoke-static/range {v23 .. v25}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePop:Landroid/widget/PopupWindow;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$14(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/PopupWindow;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;
    invoke-static/range {v23 .. v23}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$5(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v23

    const/16 v24, 0x11

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v22 .. v26}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->updateMicStatus()V
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$21(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    .line 1739
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 1740
    .local v20, voiceId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->createAndPreSendVoiceMessage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$22(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)V

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$9(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v19

    .line 1743
    .local v19, timeUpMsg:Landroid/os/Message;
    const/16 v22, 0xe

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->currentVoiceId:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$23(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$9(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    move-result-object v22

    const-wide/32 v24, 0xeb28

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$9(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 1748
    .local v4, countDownMsg:Landroid/os/Message;
    const/16 v22, 0xf

    move/from16 v0, v22

    iput v0, v4, Landroid/os/Message;->what:I

    .line 1749
    const/16 v22, 0xa

    move/from16 v0, v22

    iput v0, v4, Landroid/os/Message;->arg1:I

    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$9(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    move-result-object v22

    const-wide/32 v24, 0xc418

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v1, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popRecordShowStartTime:J
    invoke-static {v0, v1, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$24(Lcom/mechat/mechatlibrary/ui/ConversationActivity;J)V

    goto/16 :goto_0

    .line 1757
    .end local v4           #countDownMsg:Landroid/os/Message;
    .end local v19           #timeUpMsg:Landroid/os/Message;
    .end local v20           #voiceId:Ljava/lang/String;
    :pswitch_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePop:Landroid/widget/PopupWindow;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$14(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/PopupWindow;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1761
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isCancelRecord:Z
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$25(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceRecordManager:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$26(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->currentVoiceId:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$23(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->stopRecord(Ljava/lang/String;)V

    .line 1763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->currentVoiceId:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$23(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/lang/String;

    move-result-object v23

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->removeMCVoiceMessageById(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$27(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1758
    :catch_0
    move-exception v7

    .line 1759
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v22, "ConversationActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "POP_HIND_CONTENT = "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1766
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popRecordShowStartTime:J
    invoke-static/range {v24 .. v24}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$28(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)J

    move-result-wide v24

    sub-long v22, v22, v24

    const-wide/16 v24, 0x3e8

    cmp-long v22, v22, v24

    if-gtz v22, :cond_3

    const/4 v8, 0x1

    .line 1767
    .local v8, isRecordTooShort:Z
    :goto_2
    if-eqz v8, :cond_4

    .line 1768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceRecordManager:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$26(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->currentVoiceId:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$23(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->stopRecord(Ljava/lang/String;)V

    .line 1769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->currentVoiceId:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$23(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/lang/String;

    move-result-object v23

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->removeMCVoiceMessageById(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$27(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)V

    .line 1770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v23, v0

    const-string v24, "string"

    const-string v25, "mc_record_record_time_is_short"

    invoke-static/range {v23 .. v25}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v22

    .line 1771
    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1766
    .end local v8           #isRecordTooShort:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 1775
    .restart local v8       #isRecordTooShort:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isRecordTimeUp:Z
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$29(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z

    move-result v22

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isCancelRecord:Z
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$25(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z

    move-result v22

    if-nez v22, :cond_0

    if-nez v8, :cond_0

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$9(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v15

    .line 1777
    .local v15, sendMsg:Landroid/os/Message;
    const/16 v22, 0xb

    move/from16 v0, v22

    iput v0, v15, Landroid/os/Message;->what:I

    .line 1778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->currentVoiceId:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$23(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$9(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1783
    .end local v8           #isRecordTooShort:Z
    .end local v15           #sendMsg:Landroid/os/Message;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceTipTv:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$20(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/TextView;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isRecordCount:Z
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$30(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceTipTv:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$20(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v24, v0

    const-string v25, "string"

    const-string v26, "mc_record_up_and_cancel"

    invoke-static/range {v24 .. v26}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1788
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceMicIv:Landroid/widget/ImageView;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$19(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/ImageView;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceTipTv:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$20(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/TextView;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->updateMicStatus()V
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$21(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    goto/16 :goto_0

    .line 1793
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceMicIv:Landroid/widget/ImageView;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$19(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/ImageView;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceTipTv:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$20(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/TextView;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceMicIv:Landroid/widget/ImageView;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$19(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/ImageView;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v23, v0

    const-string v24, "drawable"

    const-string v25, "mc_voice_pop_cancel"

    invoke-static/range {v23 .. v25}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceTipTv:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$20(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v24, v0

    const-string v25, "string"

    const-string v26, "mc_record_cancel"

    invoke-static/range {v24 .. v26}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1799
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->notifyDataSetChanged()V

    .line 1800
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    .line 1801
    .local v16, sendVoiceId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getMCVoiceMessageById(Ljava/lang/String;)Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;
    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$31(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    move-result-object v11

    .line 1802
    .local v11, message:Lcom/mechat/mechatlibrary/bean/MCMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->sendMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    invoke-static {v0, v11}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$32(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    goto/16 :goto_0

    .line 1805
    .end local v11           #message:Lcom/mechat/mechatlibrary/bean/MCMessage;
    .end local v16           #sendVoiceId:Ljava/lang/String;
    :pswitch_8
    const-string v22, "ConversationActivity"

    const-string v23, "handler UPATE_CHAT_LIST"

    invoke-static/range {v22 .. v23}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1811
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 1812
    .restart local v20       #voiceId:Ljava/lang/String;
    const-string v22, "ConversationActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "handler STOP_RECORD voiceId = "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceRecordManager:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$26(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->stopRecord(Ljava/lang/String;)V

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getMCVoiceMessageById(Ljava/lang/String;)Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;
    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$31(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    move-result-object v21

    .line 1816
    .local v21, voiceMsg:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;
    if-eqz v21, :cond_0

    .line 1818
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/Utils;->getVoiceStorePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1819
    .local v10, localPath:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setLocalPath(Ljava/lang/String;)V

    .line 1820
    const-string v22, "ConversationActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "handler STOP_RECORD localPath = "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v12

    .line 1822
    .local v12, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v12}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v22

    move/from16 v0, v22

    div-int/lit16 v6, v0, 0x3e8

    .line 1823
    .local v6, duration:I
    if-nez v6, :cond_5

    .line 1824
    const/4 v6, 0x1

    .line 1826
    :cond_5
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setDuration(I)V

    .line 1829
    const-string v22, "ConversationActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "first save id = "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$33(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->saveMCMessageForNoExist(Lcom/mechat/mechatlibrary/bean/MCMessage;)J

    .line 1833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$4(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->notifyDataSetChanged()V

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->sendMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$32(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1838
    .end local v6           #duration:I
    .end local v10           #localPath:Ljava/lang/String;
    .end local v12           #mp:Landroid/media/MediaPlayer;
    :catch_1
    move-exception v7

    .line 1840
    .local v7, e:Ljava/lang/Exception;
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setLocalPath(Ljava/lang/String;)V

    .line 1841
    const-string v22, "ConversationActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "handler STOP_RECORD "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1846
    .end local v7           #e:Ljava/lang/Exception;
    .end local v20           #voiceId:Ljava/lang/String;
    .end local v21           #voiceMsg:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isRecordTimeUp:Z
    invoke-static/range {v22 .. v23}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$34(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    .line 1847
    invoke-virtual/range {p0 .. p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v17

    .line 1848
    .local v17, stopMsg:Landroid/os/Message;
    const/16 v22, 0xb

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1849
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1850
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1852
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePop:Landroid/widget/PopupWindow;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$14(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/PopupWindow;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1853
    :catch_2
    move-exception v7

    .line 1854
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v22, "ConversationActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "POP_HIND_CONTENT = "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1859
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .end local v17           #stopMsg:Landroid/os/Message;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePop:Landroid/widget/PopupWindow;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$14(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/PopupWindow;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceMicIv:Landroid/widget/ImageView;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$19(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/ImageView;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceTipTv:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$20(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/TextView;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1860
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 1861
    .local v9, leaveSecond:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isRecordCount:Z
    invoke-static/range {v22 .. v23}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$35(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    const-string v23, "string"

    const-string v24, "mc_record_count_down"

    invoke-static/range {v22 .. v24}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 1864
    .local v14, resId:I
    if-nez v14, :cond_7

    .line 1865
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "\u8fd8\u53ef\u4ee5\u518d\u8bf4 "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " \u79d2"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1870
    .local v18, str:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isCancelRecord:Z
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$25(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 1871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceTipTv:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$20(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1873
    :cond_6
    add-int/lit8 v9, v9, -0x1

    .line 1874
    invoke-virtual/range {p0 .. p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 1875
    .local v5, countdownMsg:Landroid/os/Message;
    const/16 v22, 0xf

    move/from16 v0, v22

    iput v0, v5, Landroid/os/Message;->what:I

    .line 1876
    iput v9, v5, Landroid/os/Message;->arg1:I

    .line 1877
    const-wide/16 v22, 0x3e8

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v5, v1, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1878
    const-string v22, "ConversationActivity"

    const-string v23, "RECORD_COUNTDOWN"

    invoke-static/range {v22 .. v23}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1867
    .end local v5           #countdownMsg:Landroid/os/Message;
    .end local v18           #str:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1868
    .restart local v18       #str:Ljava/lang/String;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    .line 1883
    .end local v9           #leaveSecond:I
    .end local v14           #resId:I
    .end local v18           #str:Ljava/lang/String;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v23, v0

    const-string v24, "string"

    const-string v25, "mc_record_no_permission"

    invoke-static/range {v23 .. v25}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 1884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->currentVoiceId:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$23(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/lang/String;

    move-result-object v23

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->removeMCVoiceMessageById(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$27(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)V

    .line 1885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1888
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isInputtingReady:Z
    invoke-static/range {v22 .. v23}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$36(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    goto/16 :goto_0

    .line 1891
    :pswitch_e
    const-string v22, "ConversationActivity"

    const-string v23, "DETECT_SERVICE_STATE"

    invoke-static/range {v22 .. v23}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    const/16 v22, 0x11

    const-wide/16 v24, 0x1388

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-object/from16 v22, v0

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->requestUserOnline()V
    invoke-static/range {v22 .. v22}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$37(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    goto/16 :goto_0

    .line 1717
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_9
        :pswitch_8
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
