.class public Lcom/mechat/mechatlibrary/ui/ConversationActivity;
.super Landroid/app/Activity;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mechat/mechatlibrary/ui/ConversationActivity$ComparatorValues;,
        Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;,
        Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;,
        Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;,
        Lcom/mechat/mechatlibrary/ui/ConversationActivity$OnUploadFinishCallback;,
        Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final ATTENTION_LEAVE_MSG_TIP:I = 0x0

.field private static final ATTENTION_NET_WORK:I = 0x3

.field private static final BACK_TITLE_FROM_INPUTTING:I = 0x2

.field private static final DETECT_SERVICE_INTERNAL_TIME:J = 0x1388L

.field private static final DETECT_SERVICE_STATE:I = 0x11

.field private static final INPUTTING_READY:I = 0x10

.field private static final INPUTTING_TIME_LIMIT:J = 0x3e8L

.field private static final INPUT_STATE_RECORD:I = 0x1

.field private static final INPUT_STATE_SEND:I = 0x2

.field private static final INPUT_STATE_TEXT_OR_VOICE:I = 0x0

.field private static final KEYBOARD_STATE:I = 0x3

.field private static final POP_CANCEL_CONTENT:I = 0x6

.field private static final POP_HIND_CONTENT:I = 0xa

.field private static final POP_RECORD_UP_THEN_CANCEL_CONTENT:I = 0x8

.field private static final POP_SHOW_CONTENT:I = 0x5

.field private static final POP_UPDATE_CONTENT:I = 0x4

.field private static final PRESS_MINI_TIME:J = 0x3e8L

.field private static final RECORD_COUNTDOWN:I = 0xf

.field private static final RECORD_COUNTDOWN_START_TIME:J = 0xc418L

.field private static final RECORD_TIME_UP_AND_SEND:I = 0xe

.field private static final RECORD_TIME_UP_LIMIT_TIME:J = 0xeb28L

.field private static final REQUEST_CODE_CAMERA:I = 0x0

.field private static final REQUEST_CODE_PHOTO:I = 0x1

.field private static final SEND_STATE:I = 0x1

.field private static final SEND_VOICE_MESSAGE:I = 0x9

.field private static final START_LOAD_MESSAGE_COUNT:I = 0x1e

.field private static final STOP_RECORD:I = 0xb

.field private static final TAG:Ljava/lang/String; = "ConversationActivity"

.field private static final TITLE_STATE_AGENT:I = 0x0

.field private static final TITLE_STATE_ALLOCATING_AGENT:I = 0x3

.field private static final TITLE_STATE_LEAVE_MSG:I = 0x1

.field private static final TITLE_STATE_NET_ERROR:I = 0x2

.field private static final TOAST_POP:I = 0xd

.field private static final UPATE_CHAT_LIST:I = 0xc

.field private static final VOICE_STATE:I


# instance fields
.field private BASE:I

.field private SPACE:I

.field private backBtn:Landroid/view/View;

.field private backBtnId:I

.field private cameraBtn:Landroid/widget/Button;

.field private cameraBtnId:I

.field private cameraPicPath:Ljava/lang/String;

.field private chatMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mechat/mechatlibrary/bean/MCMessage;",
            ">;"
        }
    .end annotation
.end field

.field private chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

.field private currentVoiceId:Ljava/lang/String;

.field private expressionBtn:Landroid/widget/Button;

.field private expressionBtnId:I

.field private expressionPanel:Landroid/widget/GridView;

.field private expressionPanelId:I

.field private hasLoadData:Z

.field private inputEt:Landroid/widget/EditText;

.field private inputEtId:I

.field private isCancelRecord:Z

.field private isChatDataReady:Z

.field private isEventDataReady:Z

.field private isHasService:Z

.field private isInputtingFinish:Z

.field private isInputtingReady:Z

.field private isLoadding:Z

.field private isNeedOnline:Z

.field private isNetWork:Z

.field private isOnlineSuc:Z

.field private isPause:Z

.field private isRecordCount:Z

.field private isRecordTimeUp:Z

.field private isStop:Z

.field private isTouchUp:Z

.field private lastEventId:Ljava/lang/String;

.field private lastMsgId:Ljava/lang/String;

.field private listId:I

.field private listView:Landroid/widget/ListView;

.field private loadProgressBar:Landroid/widget/ProgressBar;

.field private loadProgressBarId:I

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mcEventDBManger:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

.field private mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

.field private messageReceiver:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;

.field private myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

.field private myNetworkChangeReceiver:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;

.field private onlineConfig:Lcom/mechat/mechatlibrary/MCOnlineConfig;

.field private orientation:I

.field private popRecordShowStartTime:J

.field private popVoiceMicIv:Landroid/widget/ImageView;

.field private popVoiceTipTv:Landroid/widget/TextView;

.field private preCleanInputting:Z

.field private pressTime:J

.field private singleLineTitle:Landroid/view/View;

.field private singleLineTitleTv:Landroid/widget/TextView;

.field private soundPool:Landroid/media/SoundPool;

.field private spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

.field private threadStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;",
            ">;"
        }
    .end annotation
.end field

.field private titleTipView:Landroid/widget/TextView;

.field private twoLineTitle:Landroid/view/View;

.field private uName:Landroid/widget/TextView;

.field private usName:Landroid/widget/TextView;

.field private voiceHoldView:Landroid/view/View;

.field private voiceHoldViewId:I

.field private voiceMicIv:Landroid/view/View;

.field private voiceMicIvId:I

.field private voiceOrSendBtn:Landroid/widget/Button;

.field private voiceOrSendBtnState:I

.field private voicePop:Landroid/widget/PopupWindow;

.field private voicePreSendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mechat/mechatlibrary/bean/MCMessage;",
            ">;"
        }
    .end annotation
.end field

.field private voiceRecordManager:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

.field private voidHoldViewPressY:F

.field private voidceOrSendBtnId:I

.field private watcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 212
    iput-boolean v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isOnlineSuc:Z

    .line 213
    iput-boolean v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isEventDataReady:Z

    .line 214
    iput-boolean v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isChatDataReady:Z

    .line 215
    iput-boolean v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isHasService:Z

    .line 216
    iput-boolean v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isNetWork:Z

    .line 217
    iput-boolean v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isNeedOnline:Z

    .line 218
    iput-boolean v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->hasLoadData:Z

    .line 232
    iput-boolean v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isPause:Z

    .line 234
    iput-boolean v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isStop:Z

    .line 237
    const-string v0, "1"

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->currentVoiceId:Ljava/lang/String;

    .line 240
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->pressTime:J

    .line 813
    iput-boolean v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isLoadding:Z

    .line 1430
    new-instance v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$1;

    invoke-direct {v0, p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$1;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->watcher:Landroid/text/TextWatcher;

    .line 1462
    iput-boolean v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isInputtingFinish:Z

    .line 1463
    iput-boolean v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isInputtingReady:Z

    .line 1907
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->BASE:I

    .line 1908
    const/16 v0, 0xc8

    iput v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->SPACE:I

    .line 2003
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->threadStateMap:Ljava/util/Map;

    .line 119
    return-void
.end method

.method static synthetic access$0(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1505
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->preClearInputting()V

    return-void
.end method

.method static synthetic access$1(Lcom/mechat/mechatlibrary/ui/ConversationActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 734
    invoke-direct {p0, p1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeInputState(I)V

    return-void
.end method

.method static synthetic access$10(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->usName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/utils/SpManager;
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    return-object v0
.end method

.method static synthetic access$12(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Lcom/mechat/mechatlibrary/bean/MCEvent;)Lcom/mechat/mechatlibrary/bean/MCMessage;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 994
    invoke-direct {p0, p1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->transEventToMessage(Lcom/mechat/mechatlibrary/bean/MCEvent;)Lcom/mechat/mechatlibrary/bean/MCMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13(Lcom/mechat/mechatlibrary/ui/ConversationActivity;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 673
    invoke-direct {p0, p1, p2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeTipUI(IZ)V

    return-void
.end method

.method static synthetic access$14(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$15(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1710
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceMicIv:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$16(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1711
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceTipTv:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$17(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Landroid/widget/PopupWindow;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePop:Landroid/widget/PopupWindow;

    return-void
.end method

.method static synthetic access$18(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isTouchUp:Z

    return v0
.end method

.method static synthetic access$19(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceMicIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1465
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputting()V

    return-void
.end method

.method static synthetic access$20(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceTipTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$21(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1910
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->updateMicStatus()V

    return-void
.end method

.method static synthetic access$22(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1177
    invoke-direct {p0, p1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->createAndPreSendVoiceMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->currentVoiceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24(Lcom/mechat/mechatlibrary/ui/ConversationActivity;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 247
    iput-wide p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popRecordShowStartTime:J

    return-void
.end method

.method static synthetic access$25(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isCancelRecord:Z

    return v0
.end method

.method static synthetic access$26(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;
    .locals 1
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceRecordManager:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    return-object v0
.end method

.method static synthetic access$27(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1575
    invoke-direct {p0, p1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->removeMCVoiceMessageById(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$28(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 247
    iget-wide v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popRecordShowStartTime:J

    return-wide v0
.end method

.method static synthetic access$29(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isRecordTimeUp:Z

    return v0
.end method

.method static synthetic access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
    .locals 1
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    return-object v0
.end method

.method static synthetic access$30(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isRecordCount:Z

    return v0
.end method

.method static synthetic access$31(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1563
    invoke-direct {p0, p1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getMCVoiceMessageById(Ljava/lang/String;)Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$32(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1343
    invoke-direct {p0, p1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->sendMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    return-void
.end method

.method static synthetic access$33(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;
    .locals 1
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    return-object v0
.end method

.method static synthetic access$34(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isRecordTimeUp:Z

    return-void
.end method

.method static synthetic access$35(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isRecordCount:Z

    return-void
.end method

.method static synthetic access$36(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1463
    iput-boolean p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isInputtingReady:Z

    return-void
.end method

.method static synthetic access$37(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 862
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->requestUserOnline()V

    return-void
.end method

.method static synthetic access$38(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isHasService:Z

    return v0
.end method

.method static synthetic access$39(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isOnlineSuc:Z

    return v0
.end method

.method static synthetic access$4(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$40(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isNetWork:Z

    return v0
.end method

.method static synthetic access$41(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isNetWork:Z

    return-void
.end method

.method static synthetic access$42(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isOnlineSuc:Z

    return-void
.end method

.method static synthetic access$43(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->threadStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$44(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1524
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getUnitid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$45(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isStop:Z

    return v0
.end method

.method static synthetic access$46(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isNeedOnline:Z

    return-void
.end method

.method static synthetic access$47(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isHasService:Z

    return-void
.end method

.method static synthetic access$48(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->cameraPicPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$49(Lcom/mechat/mechatlibrary/ui/ConversationActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1186
    iput p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->orientation:I

    return-void
.end method

.method static synthetic access$5(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$50(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 1186
    iget v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->orientation:I

    return v0
.end method

.method static synthetic access$51(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isNeedOnline:Z

    return v0
.end method

.method static synthetic access$52(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 788
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->loadLeaveMsgData()V

    return-void
.end method

.method static synthetic access$53(Lcom/mechat/mechatlibrary/ui/ConversationActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 634
    invoke-direct {p0, p1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeTitleState(I)V

    return-void
.end method

.method static synthetic access$54(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 910
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->requestEventData()V

    return-void
.end method

.method static synthetic access$55(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 942
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->requestMessageData()V

    return-void
.end method

.method static synthetic access$56(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/GridView;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionPanel:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$57(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$58(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$59(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceHoldView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isPause:Z

    return v0
.end method

.method static synthetic access$60(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isCancelRecord:Z

    return-void
.end method

.method static synthetic access$61(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isTouchUp:Z

    return-void
.end method

.method static synthetic access$62(Lcom/mechat/mechatlibrary/ui/ConversationActivity;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    iput p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voidHoldViewPressY:F

    return-void
.end method

.method static synthetic access$63(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 240
    iget-wide v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->pressTime:J

    return-wide v0
.end method

.method static synthetic access$64(Lcom/mechat/mechatlibrary/ui/ConversationActivity;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 240
    iput-wide p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->pressTime:J

    return-void
.end method

.method static synthetic access$65(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->currentVoiceId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$66(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)F
    .locals 1
    .parameter

    .prologue
    .line 238
    iget v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voidHoldViewPressY:F

    return v0
.end method

.method static synthetic access$67(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1263
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->hindSoftKeyboard()V

    return-void
.end method

.method static synthetic access$68(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 815
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->loadMoreData()V

    return-void
.end method

.method static synthetic access$69(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->titleTipView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/media/SoundPool;
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->soundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$70(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->hasLoadData:Z

    return v0
.end method

.method static synthetic access$71(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->lastEventId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$72(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 986
    invoke-direct {p0, p1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->transEventListToMessageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$73(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isEventDataReady:Z

    return-void
.end method

.method static synthetic access$74(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1016
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->tyrInitDatas()V

    return-void
.end method

.method static synthetic access$75(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->lastMsgId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$76(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->lastMsgId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$77(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1589
    invoke-direct {p0, p1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->cleanVoiceMessage(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$78(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePreSendList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$79(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isChatDataReady:Z

    return-void
.end method

.method static synthetic access$8(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->uName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$80(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1462
    iput-boolean p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isInputtingFinish:Z

    return-void
.end method

.method static synthetic access$81(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 1500
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->preCleanInputting:Z

    return v0
.end method

.method static synthetic access$82(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1513
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->cleanInputting()V

    return-void
.end method

.method static synthetic access$9(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
    .locals 1
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    return-object v0
.end method

.method private changeInputState(I)V
    .locals 6
    .parameter "state"

    .prologue
    const v2, 0x106000d

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 735
    packed-switch p1, :pswitch_data_0

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 737
    :pswitch_0
    const-string v0, "ConversationActivity"

    const-string v1, "changeInputState()  INPUT_STATE_TEXT_OR_VOICE"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceHoldView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceMicIv:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 743
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/utils/SpManager;->getShowVoiceMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtn:Landroid/widget/Button;

    const-string v1, "drawable"

    const-string v2, "mc_voice_background"

    invoke-static {p0, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 745
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtn:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 746
    iput v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtnState:I

    .line 752
    :goto_1
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 753
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeInputState(I)V

    goto :goto_0

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 749
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getSendString(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 750
    iput v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtnState:I

    goto :goto_1

    .line 764
    :pswitch_1
    const-string v0, "ConversationActivity"

    const-string v1, "changeInputState()  INPUT_STATE_RECORD"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 766
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 767
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtn:Landroid/widget/Button;

    const-string v1, "drawable"

    const-string v2, "mc_keyboard_background"

    invoke-static {p0, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 768
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtn:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceHoldView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 770
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceMicIv:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 771
    const/4 v0, 0x3

    iput v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtnState:I

    .line 772
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->hindSoftKeyboard()V

    .line 773
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionPanel:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVisibility(I)V

    goto/16 :goto_0

    .line 776
    :pswitch_2
    const-string v0, "ConversationActivity"

    const-string v1, "changeInputState()  INPUT_STATE_SEND"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 779
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceHoldView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 780
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceMicIv:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 782
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getSendString(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 783
    iput v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtnState:I

    goto/16 :goto_0

    .line 735
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private changeTipUI(IZ)V
    .locals 9
    .parameter "tipType"
    .parameter "isShow"

    .prologue
    const/16 v3, 0x11

    const/16 v8, 0x8

    const/high16 v7, -0x3d38

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 674
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->loadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 675
    packed-switch p1, :pswitch_data_0

    .line 698
    :goto_0
    :pswitch_0
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->titleTipView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-nez v1, :cond_3

    .line 700
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v6, v6, v7, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 701
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x258

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 702
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->titleTipView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 703
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->titleTipView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 704
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->twoLineTitle:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 705
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->singleLineTitle:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 732
    .end local v0           #animation:Landroid/view/animation/TranslateAnimation;
    :cond_0
    :goto_1
    return-void

    .line 677
    :pswitch_1
    if-eqz p2, :cond_1

    .line 678
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->titleTipView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 679
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    invoke-virtual {v1, v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->removeMessages(I)V

    .line 680
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v3, v4, v5}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 684
    :cond_1
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->titleTipView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getLeaveMsgTipString(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->titleTipView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getLeaveMsgTipColorYellow(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 686
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->singleLineTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getLeaveMsgTitleString(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    const-string v1, "ConversationActivity"

    const-string v3, "ATTENTION_LEAVE_MSG_TIP changeToTextModel(true)"

    invoke-static {v1, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    if-eqz p2, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isHasService:Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    .line 691
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeInputState(I)V

    .line 692
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->titleTipView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getNoNetToastString(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->titleTipView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getLeaveMsgTipColorRed(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 694
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->singleLineTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getNoNetTitleString(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    const-string v1, "ConversationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ATTENTION_NET_WORK "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 707
    :cond_3
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->titleTipView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    invoke-direct {p0, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeTitleState(I)V

    .line 709
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v6, v6, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 710
    .restart local v0       #animation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 711
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->titleTipView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 712
    new-instance v1, Lcom/mechat/mechatlibrary/ui/ConversationActivity$9;

    invoke-direct {v1, p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$9;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_1

    .line 675
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private changeTitleState(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 635
    packed-switch p1, :pswitch_data_0

    .line 663
    :goto_0
    return-void

    .line 637
    :pswitch_0
    const-string v0, "ConversationActivity"

    const-string v1, "changeTitleState() TITLE_STATE_AGENT"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->twoLineTitle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->singleLineTitle:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->uName:Landroid/widget/TextView;

    invoke-static {}, Lcom/mechat/mechatlibrary/bean/MCService;->getCurrentService()Lcom/mechat/mechatlibrary/bean/MCService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/bean/MCService;->getUname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->usName:Landroid/widget/TextView;

    invoke-static {}, Lcom/mechat/mechatlibrary/bean/MCService;->getCurrentService()Lcom/mechat/mechatlibrary/bean/MCService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/bean/MCService;->getUsname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 644
    :pswitch_1
    const-string v0, "ConversationActivity"

    const-string v1, "changeTitleState() TITLE_STATE_ALLOCATING_AGENT"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->twoLineTitle:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->singleLineTitle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 647
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->singleLineTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getAllocationUsString(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 650
    :pswitch_2
    const-string v0, "ConversationActivity"

    const-string v1, "changeTitleState() TITLE_STATE_LEAVE_MSG"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->twoLineTitle:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 652
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->singleLineTitle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->singleLineTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getLeaveMsgTitleString(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 656
    :pswitch_3
    const-string v0, "ConversationActivity"

    const-string v1, "changeTitleState() TITLE_STATE_NET_ERROR"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->twoLineTitle:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->singleLineTitle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 659
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->singleLineTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getNoNetTitleString(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private cleanDuplicateEvent(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mechat/mechatlibrary/bean/MCMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1542
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCMessage;>;"
    const-string v5, "ConversationActivity"

    const-string v6, "cleanDuplicateEvent"

    invoke-static {v5, v6}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, i:I
    :goto_0
    const/4 v5, 0x1

    if-gt v0, v5, :cond_0

    .line 1555
    return-void

    .line 1544
    :cond_0
    add-int/lit8 v5, v0, -0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mechat/mechatlibrary/bean/MCMessage;

    .line 1545
    .local v1, message:Lcom/mechat/mechatlibrary/bean/MCMessage;
    add-int/lit8 v5, v0, -0x2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mechat/mechatlibrary/bean/MCMessage;

    .line 1546
    .local v2, preMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    instance-of v5, v1, Lcom/mechat/mechatlibrary/bean/MCEventMessage;

    if-eqz v5, :cond_1

    instance-of v5, v2, Lcom/mechat/mechatlibrary/bean/MCEventMessage;

    if-eqz v5, :cond_1

    .line 1547
    check-cast v1, Lcom/mechat/mechatlibrary/bean/MCEventMessage;

    .end local v1           #message:Lcom/mechat/mechatlibrary/bean/MCMessage;
    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->getEventType()Ljava/lang/String;

    move-result-object v4

    .line 1548
    .local v4, type:Ljava/lang/String;
    check-cast v2, Lcom/mechat/mechatlibrary/bean/MCEventMessage;

    .end local v2           #preMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->getEventType()Ljava/lang/String;

    move-result-object v3

    .line 1549
    .local v3, preType:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "alloc_us"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1551
    add-int/lit8 v5, v0, -0x2

    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1543
    .end local v3           #preType:Ljava/lang/String;
    .end local v4           #type:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private cleanInputting()V
    .locals 5

    .prologue
    .line 1514
    const-string v2, "ConversationActivity"

    const-string v3, " clearInputting "

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1516
    .local v0, paramMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "unitid"

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getUnitid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    const-string v2, "usid"

    invoke-static {}, Lcom/mechat/mechatlibrary/bean/MCService;->getCurrentService()Lcom/mechat/mechatlibrary/bean/MCService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/bean/MCService;->getUsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    const-string v2, "cookie"

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getCookie()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    const-string v2, "content"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    new-instance v1, Lcom/mechat/loopj/android/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/mechat/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 1521
    .local v1, params:Lcom/mechat/loopj/android/http/RequestParams;
    const-string v2, "https://chat.meiqia.com/"

    const-string v3, "mobile/inputting"

    new-instance v4, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;

    invoke-direct {v4}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;-><init>()V

    invoke-static {v2, v3, v1, v4}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 1522
    return-void
.end method

.method private cleanVoiceMessage(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mechat/mechatlibrary/bean/MCMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1590
    .local p1, messageList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCMessage;>;"
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/utils/SpManager;->getShowVoiceMessage()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1591
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_1

    .line 1598
    .end local v0           #i:I
    :cond_0
    return-void

    .line 1592
    .restart local v0       #i:I
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mechat/mechatlibrary/bean/MCMessage;

    .line 1593
    .local v1, message:Lcom/mechat/mechatlibrary/bean/MCMessage;
    const/4 v2, 0x2

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 1594
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1591
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private createAndPreSendVoiceMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "voiceId"

    .prologue
    .line 1178
    new-instance v0, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    invoke-direct {v0}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;-><init>()V

    .line 1179
    .local v0, voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;
    const-string v1, "sending"

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setStatus(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {v0, p1}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setId(Ljava/lang/String;)V

    .line 1182
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePreSendList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    return-void
.end method

.method private createAndSendImageMessage(Ljava/lang/String;Ljava/io/File;)V
    .locals 5
    .parameter "msgId"
    .parameter "imageFile"

    .prologue
    .line 1166
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mechat/mechatlibrary/utils/Utils;->decodeImageFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1167
    .local v0, image:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/utils/Utils;->compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v0}, Lcom/mechat/mechatlibrary/utils/Utils;->saveBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1169
    new-instance v1, Lcom/mechat/mechatlibrary/bean/MCImageMessage;

    invoke-direct {v1}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;-><init>()V

    .line 1170
    .local v1, imageMessage:Lcom/mechat/mechatlibrary/bean/MCImageMessage;
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->setLocalPath(Ljava/lang/String;)V

    .line 1171
    invoke-direct {p0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->preSend(Lcom/mechat/mechatlibrary/bean/MCMessage;)Z

    move-result v2

    .line 1172
    .local v2, isPreSendSuc:Z
    if-eqz v2, :cond_0

    .line 1173
    invoke-direct {p0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->sendMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    .line 1175
    :cond_0
    return-void
.end method

.method private createAndSendTextMessage()V
    .locals 4

    .prologue
    .line 1141
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1142
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    iget-boolean v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isHasService:Z

    if-eqz v2, :cond_2

    .line 1148
    new-instance v1, Lcom/mechat/mechatlibrary/bean/MCTextMessage;

    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;-><init>(Ljava/lang/String;)V

    .line 1152
    .local v1, message:Lcom/mechat/mechatlibrary/bean/MCMessage;
    :goto_1
    invoke-direct {p0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->preSend(Lcom/mechat/mechatlibrary/bean/MCMessage;)Z

    move-result v0

    .line 1153
    .local v0, isPreSendSuc:Z
    if-eqz v0, :cond_0

    .line 1154
    invoke-direct {p0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->sendMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    goto :goto_0

    .line 1150
    .end local v0           #isPreSendSuc:Z
    .end local v1           #message:Lcom/mechat/mechatlibrary/bean/MCMessage;
    :cond_2
    new-instance v1, Lcom/mechat/mechatlibrary/bean/MCLeaveMessage;

    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mechat/mechatlibrary/bean/MCLeaveMessage;-><init>(Ljava/lang/String;)V

    .restart local v1       #message:Lcom/mechat/mechatlibrary/bean/MCMessage;
    goto :goto_1
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->backBtnId:I

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->backBtn:Landroid/view/View;

    .line 468
    iget v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listId:I

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;

    .line 469
    iget v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEtId:I

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    .line 470
    iget v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceHoldViewId:I

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceHoldView:Landroid/view/View;

    .line 471
    iget v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceMicIvId:I

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceMicIv:Landroid/view/View;

    .line 472
    iget v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionBtnId:I

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionBtn:Landroid/widget/Button;

    .line 473
    iget v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionPanelId:I

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionPanel:Landroid/widget/GridView;

    .line 474
    iget v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voidceOrSendBtnId:I

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtn:Landroid/widget/Button;

    .line 475
    iget v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->cameraBtnId:I

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->cameraBtn:Landroid/widget/Button;

    .line 476
    iget v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->loadProgressBarId:I

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->loadProgressBar:Landroid/widget/ProgressBar;

    .line 477
    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getTitleUnameId(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->uName:Landroid/widget/TextView;

    .line 478
    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getTitleUsnameId(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->usName:Landroid/widget/TextView;

    .line 479
    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getTitleChatTitleId(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->twoLineTitle:Landroid/view/View;

    .line 480
    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getTitleLeaveTitleId(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->singleLineTitle:Landroid/view/View;

    .line 481
    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getTitleLeaveTitleTvId(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->singleLineTitleTv:Landroid/widget/TextView;

    .line 482
    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getLeaveMsgTipViewId(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->titleTipView:Landroid/widget/TextView;

    .line 483
    return-void
.end method

.method private getCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/utils/SpManager;->getCookie()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMCVoiceMessageById(Ljava/lang/String;)Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;
    .locals 3
    .parameter "voiceId"

    .prologue
    .line 1564
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePreSendList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1565
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePreSendList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_1

    .line 1572
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 1566
    .restart local v0       #i:I
    :cond_1
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePreSendList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mechat/mechatlibrary/bean/MCMessage;

    .line 1567
    .local v1, mcMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1568
    check-cast v1, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    goto :goto_1

    .line 1565
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private getUnitid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hindSoftKeyboard()V
    .locals 3

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->backBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->backBtn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1267
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1268
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1269
    const-string v0, "ConversationActivity"

    const-string v1, "hindSoftKeyboard()"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    :cond_0
    return-void
.end method

.method private initIds()V
    .locals 2

    .prologue
    .line 454
    const-string v0, "id"

    const-string v1, "chat_back"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->backBtnId:I

    .line 455
    const-string v0, "id"

    const-string v1, "list"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listId:I

    .line 456
    const-string v0, "id"

    const-string v1, "chat_edit"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEtId:I

    .line 457
    const-string v0, "id"

    const-string v1, "voice_hold_view"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceHoldViewId:I

    .line 458
    const-string v0, "id"

    const-string v1, "voice_mic_iv"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceMicIvId:I

    .line 459
    const-string v0, "id"

    const-string v1, "chat_expression_btn"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionBtnId:I

    .line 460
    const-string v0, "id"

    const-string v1, "expression_panel"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionPanelId:I

    .line 461
    const-string v0, "id"

    const-string v1, "voice_or_send"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voidceOrSendBtnId:I

    .line 462
    const-string v0, "id"

    const-string v1, "camera_btn"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->cameraBtnId:I

    .line 463
    const-string v0, "id"

    const-string v1, "progressbar"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->loadProgressBarId:I

    .line 464
    return-void
.end method

.method private initSmiley()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 1043
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1044
    .local v2, imageDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->getInstance(Landroid/content/Context;)Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->getTmpSmileyIds()Ljava/util/List;

    move-result-object v7

    .line 1045
    .local v7, imageIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lt v6, v1, :cond_0

    .line 1050
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getSmileyItemId(Landroid/content/Context;)I

    move-result v3

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "image"

    aput-object v1, v4, v9

    new-array v5, v5, [I

    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getSmileyItemImageViewId(Landroid/content/Context;)I

    move-result v1

    aput v1, v5, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 1051
    .local v0, simpleAdapter:Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionPanel:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1052
    return-void

    .line 1046
    .end local v0           #simpleAdapter:Landroid/widget/SimpleAdapter;
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1047
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "image"

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private inputting()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/4 v3, 0x0

    .line 1466
    iput-boolean v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->preCleanInputting:Z

    .line 1467
    iget-boolean v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isInputtingFinish:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isInputtingReady:Z

    if-eqz v2, :cond_0

    .line 1468
    iput-boolean v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isInputtingFinish:Z

    .line 1469
    iput-boolean v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isInputtingReady:Z

    .line 1470
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    invoke-virtual {v2, v6}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->removeMessages(I)V

    .line 1471
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v6, v4, v5}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1472
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1473
    .local v0, paramMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "unitid"

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getUnitid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    const-string v2, "usid"

    invoke-static {}, Lcom/mechat/mechatlibrary/bean/MCService;->getCurrentService()Lcom/mechat/mechatlibrary/bean/MCService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/bean/MCService;->getUsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    const-string v2, "cookie"

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getCookie()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    const-string v2, "content"

    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    const-string v2, "ConversationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " inputting content = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    new-instance v1, Lcom/mechat/loopj/android/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/mechat/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 1479
    .local v1, params:Lcom/mechat/loopj/android/http/RequestParams;
    const-string v2, "https://chat.meiqia.com/"

    const-string v3, "mobile/inputting"

    new-instance v4, Lcom/mechat/mechatlibrary/ui/ConversationActivity$16;

    invoke-direct {v4, p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$16;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    invoke-static {v2, v3, v1, v4}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 1498
    .end local v0           #paramMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #params:Lcom/mechat/loopj/android/http/RequestParams;
    :cond_0
    return-void
.end method

.method private loadLeaveMsgData()V
    .locals 6

    .prologue
    const/16 v3, 0x1e

    const/4 v4, 0x0

    .line 789
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    invoke-virtual {v2, v3}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getRecentMCMessages(I)Ljava/util/List;

    move-result-object v1

    .line 790
    .local v1, msgList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCMessage;>;"
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 791
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->mcEventDBManger:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    invoke-virtual {v2, v3}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->getRecentMCEvents(I)Ljava/util/List;

    move-result-object v0

    .line 792
    .local v0, eventList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCEvent;>;"
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->transEventListToMessageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 793
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 794
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mechat/mechatlibrary/bean/MCMessage;

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->lastMsgId:Ljava/lang/String;

    .line 796
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 797
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mechat/mechatlibrary/bean/MCEvent;

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/bean/MCEvent;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->lastEventId:Ljava/lang/String;

    .line 800
    :cond_1
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->sortList(Ljava/util/List;)V

    .line 802
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->cleanDuplicateEvent(Ljava/util/List;)V

    .line 804
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    invoke-static {v2}, Lcom/mechat/mechatlibrary/utils/TimeUtils;->addTimeItem(Ljava/util/List;)V

    .line 806
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->loadProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 807
    new-instance v2, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ListView;Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;)V

    iput-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    .line 808
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 809
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 810
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->hasLoadData:Z

    .line 811
    return-void
.end method

.method private loadMoreData()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 816
    iget-boolean v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isLoadding:Z

    if-nez v4, :cond_3

    .line 817
    const-string v4, "ConversationActivity"

    const-string v5, "loadMoreData() load more"

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isLoadding:Z

    .line 819
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 820
    .local v3, position:I
    const/4 v2, 0x0

    .line 821
    .local v2, loadMessageListSize:I
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->lastMsgId:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 822
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    iget-object v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->lastMsgId:Ljava/lang/String;

    iget-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v6}, Lcom/mechat/mechatlibrary/utils/SpManager;->getPageLoadLength()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getMessageList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 823
    .local v1, loadMessageList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCMessage;>;"
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/utils/SpManager;->getShowVoiceMessage()Z

    move-result v4

    if-nez v4, :cond_0

    .line 824
    invoke-direct {p0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->cleanVoiceMessage(Ljava/util/List;)V

    .line 826
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 827
    if-lez v2, :cond_4

    .line 828
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mechat/mechatlibrary/bean/MCMessage;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->lastMsgId:Ljava/lang/String;

    .line 832
    :goto_0
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 834
    .end local v1           #loadMessageList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCMessage;>;"
    :cond_1
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->lastEventId:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 835
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->mcEventDBManger:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    iget-object v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->lastEventId:Ljava/lang/String;

    iget-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v6}, Lcom/mechat/mechatlibrary/utils/SpManager;->getPageLoadLength()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->getMCEvents(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 836
    .local v0, loadEventList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCEvent;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 837
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mechat/mechatlibrary/bean/MCEvent;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/bean/MCEvent;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->lastEventId:Ljava/lang/String;

    .line 841
    :goto_1
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->transEventListToMessageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 843
    .end local v0           #loadEventList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCEvent;>;"
    :cond_2
    if-lez v2, :cond_3

    .line 845
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->sortList(Ljava/util/List;)V

    .line 846
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->cleanDuplicateEvent(Ljava/util/List;)V

    .line 847
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    invoke-static {v4}, Lcom/mechat/mechatlibrary/utils/TimeUtils;->refreshTimeItem(Ljava/util/List;)V

    .line 848
    const-string v4, "ConversationActivity"

    const-string v5, "loadMoreData"

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    add-int/lit8 v3, v4, 0x1

    .line 851
    new-instance v4, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    iget-object v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    iget-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ListView;Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;)V

    iput-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    .line 852
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 853
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 855
    const-string v4, "ConversationActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "position = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iput-boolean v8, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isLoadding:Z

    .line 860
    .end local v2           #loadMessageListSize:I
    .end local v3           #position:I
    :cond_3
    return-void

    .line 830
    .restart local v1       #loadMessageList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCMessage;>;"
    .restart local v2       #loadMessageListSize:I
    .restart local v3       #position:I
    :cond_4
    iput-object v7, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->lastMsgId:Ljava/lang/String;

    goto/16 :goto_0

    .line 839
    .end local v1           #loadMessageList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCMessage;>;"
    .restart local v0       #loadEventList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCEvent;>;"
    :cond_5
    iput-object v7, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->lastEventId:Ljava/lang/String;

    goto :goto_1
.end method

.method private preClearInputting()V
    .locals 1

    .prologue
    .line 1507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->preCleanInputting:Z

    .line 1508
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isInputtingFinish:Z

    if-eqz v0, :cond_0

    .line 1509
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->cleanInputting()V

    .line 1511
    :cond_0
    return-void
.end method

.method private preSend(Lcom/mechat/mechatlibrary/bean/MCMessage;)Z
    .locals 5
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    .line 1313
    const-string v2, "ConversationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "preSend() isNetWork = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isNetWork:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    iget-boolean v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isNetWork:Z

    if-nez v2, :cond_0

    .line 1315
    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getNoNetToastString(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1316
    .local v0, toast:Landroid/widget/Toast;
    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 1317
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1340
    .end local v0           #toast:Landroid/widget/Toast;
    :goto_0
    return v1

    .line 1325
    :cond_0
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1336
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1338
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    invoke-static {v1}, Lcom/mechat/mechatlibrary/utils/TimeUtils;->refreshTimeItem(Ljava/util/List;)V

    .line 1339
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->notifyDataSetChanged()V

    .line 1340
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private removeMCVoiceMessageById(Ljava/lang/String;)V
    .locals 5
    .parameter "voiceId"

    .prologue
    .line 1576
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePreSendList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1587
    :cond_0
    :goto_0
    return-void

    .line 1579
    :cond_1
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePreSendList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_0

    .line 1580
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePreSendList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mechat/mechatlibrary/bean/MCMessage;

    .line 1581
    .local v1, mcMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;
    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1582
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePreSendList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1583
    const-string v2, "ConversationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "removeMCVoiceMessageById = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1579
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private requestEventData()V
    .locals 3

    .prologue
    .line 912
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/utils/SpManager;->getShowEvent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 913
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isEventDataReady:Z

    .line 940
    :goto_0
    return-void

    .line 917
    :cond_0
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isEventDataReady:Z

    if-nez v0, :cond_1

    .line 918
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->getInstance()Lcom/mechat/mechatlibrary/MCClient;

    move-result-object v0

    const/16 v1, 0x1e

    new-instance v2, Lcom/mechat/mechatlibrary/ui/ConversationActivity$11;

    invoke-direct {v2, p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$11;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/mechat/mechatlibrary/MCClient;->getRecentEvents(ILcom/mechat/mechatlibrary/callback/OnGetEventsCallback;)V

    goto :goto_0

    .line 937
    :cond_1
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->tyrInitDatas()V

    .line 938
    const-string v0, "ConversationActivity"

    const-string v1, "requestEventData is ok and try"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestMessageData()V
    .locals 3

    .prologue
    .line 944
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isChatDataReady:Z

    if-nez v0, :cond_0

    .line 945
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->getInstance()Lcom/mechat/mechatlibrary/MCClient;

    move-result-object v0

    const/16 v1, 0x1e

    new-instance v2, Lcom/mechat/mechatlibrary/ui/ConversationActivity$12;

    invoke-direct {v2, p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$12;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/mechat/mechatlibrary/MCClient;->getRecentMessages(ILcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;)V

    .line 984
    :goto_0
    return-void

    .line 982
    :cond_0
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->tyrInitDatas()V

    goto :goto_0
.end method

.method private requestUserOnline()V
    .locals 3

    .prologue
    .line 865
    const-string v0, "ConversationActivity"

    const-string v1, "start letUserOnline  "

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->getInstance()Lcom/mechat/mechatlibrary/MCClient;

    move-result-object v0

    new-instance v1, Lcom/mechat/mechatlibrary/ui/ConversationActivity$10;

    invoke-direct {v1, p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$10;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    .line 903
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->onlineConfig:Lcom/mechat/mechatlibrary/MCOnlineConfig;

    .line 866
    invoke-virtual {v0, v1, v2}, Lcom/mechat/mechatlibrary/MCClient;->letUserOnline(Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;Lcom/mechat/mechatlibrary/MCOnlineConfig;)V

    .line 908
    return-void
.end method

.method private sendLeaveMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 1409
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->getInstance()Lcom/mechat/mechatlibrary/MCClient;

    move-result-object v0

    new-instance v1, Lcom/mechat/mechatlibrary/ui/ConversationActivity$15;

    invoke-direct {v1, p0, p1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$15;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    invoke-virtual {v0, p1, v1}, Lcom/mechat/mechatlibrary/MCClient;->sendLeaveMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;)V

    .line 1427
    return-void
.end method

.method private sendMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 1345
    const-string v0, "ConversationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendMCMessage isOnlineSuc = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isOnlineSuc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isHasService:Z

    if-eqz v0, :cond_0

    .line 1361
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->getInstance()Lcom/mechat/mechatlibrary/MCClient;

    move-result-object v0

    new-instance v1, Lcom/mechat/mechatlibrary/ui/ConversationActivity$14;

    invoke-direct {v1, p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$14;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/mechat/mechatlibrary/MCClient;->sendMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;)V

    .line 1398
    :goto_0
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1401
    return-void

    .line 1396
    :cond_0
    invoke-direct {p0, p1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->sendLeaveMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    goto :goto_0
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->backBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->cameraBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 491
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    new-instance v1, Lcom/mechat/mechatlibrary/ui/ConversationActivity$3;

    invoke-direct {v1, p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$3;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 506
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtn:Landroid/widget/Button;

    new-instance v1, Lcom/mechat/mechatlibrary/ui/ConversationActivity$4;

    invoke-direct {v1, p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$4;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 523
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceHoldView:Landroid/view/View;

    new-instance v1, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;

    invoke-direct {v1, p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 580
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionPanel:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 584
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/mechat/mechatlibrary/ui/ConversationActivity$6;

    invoke-direct {v1, p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$6;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 596
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/mechat/mechatlibrary/ui/ConversationActivity$7;

    invoke-direct {v1, p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$7;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 610
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/mechat/mechatlibrary/ui/ConversationActivity$8;

    invoke-direct {v1, p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$8;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 626
    return-void
.end method

.method private showSoftKeyboard()V
    .locals 3

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 1258
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1259
    const-string v0, "ConversationActivity"

    const-string v1, "showSoftKeyboard()"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    :cond_0
    return-void
.end method

.method private sortList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mechat/mechatlibrary/bean/MCMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1533
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCMessage;>;"
    new-instance v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$ComparatorValues;

    invoke-direct {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$ComparatorValues;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1534
    return-void
.end method

.method private transEventListToMessageList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mechat/mechatlibrary/bean/MCEvent;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mechat/mechatlibrary/bean/MCMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 987
    .local p1, eventList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCEvent;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 988
    .local v1, messageList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 991
    return-object v1

    .line 988
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mechat/mechatlibrary/bean/MCEvent;

    .line 989
    .local v0, mcEvent:Lcom/mechat/mechatlibrary/bean/MCEvent;
    invoke-direct {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->transEventToMessage(Lcom/mechat/mechatlibrary/bean/MCEvent;)Lcom/mechat/mechatlibrary/bean/MCMessage;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private transEventToMessage(Lcom/mechat/mechatlibrary/bean/MCEvent;)Lcom/mechat/mechatlibrary/bean/MCMessage;
    .locals 3
    .parameter "mcEvent"

    .prologue
    .line 995
    new-instance v0, Lcom/mechat/mechatlibrary/bean/MCEventMessage;

    invoke-direct {v0}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;-><init>()V

    .line 996
    .local v0, eventMessage:Lcom/mechat/mechatlibrary/bean/MCEventMessage;
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCEvent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->setId(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCEvent;->getCreatedTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->setCreatedTime(Ljava/lang/String;)V

    .line 998
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->setEventType(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCEvent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 1001
    .local v1, type:Ljava/lang/String;
    const-string v2, "alloc_us"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 1002
    check-cast v2, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->getUsname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->setUsname(Ljava/lang/String;)V

    .line 1003
    check-cast p1, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;

    .end local p1
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->setAvatarUrl(Ljava/lang/String;)V

    .line 1013
    :cond_0
    :goto_0
    return-object v0

    .line 1004
    .restart local p1
    :cond_1
    const-string v2, "redirect"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p1

    .line 1005
    check-cast v2, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->getUsname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->setUsname(Ljava/lang/String;)V

    move-object v2, p1

    .line 1006
    check-cast v2, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->setAvatarUrl(Ljava/lang/String;)V

    move-object v2, p1

    .line 1007
    check-cast v2, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->getRedirectUsname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->setRedirectUsname(Ljava/lang/String;)V

    .line 1008
    check-cast p1, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;

    .end local p1
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->getRedirectAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->setRedirectAvatarUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1009
    .restart local p1
    :cond_2
    const-string v2, "re_alloc_us"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 1010
    check-cast v2, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->getUsname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->setUsname(Ljava/lang/String;)V

    .line 1011
    check-cast p1, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;

    .end local p1
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mechat/mechatlibrary/bean/MCEventMessage;->setAvatarUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private tyrInitDatas()V
    .locals 4

    .prologue
    .line 1018
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isChatDataReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isEventDataReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isOnlineSuc:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isChatDataReady:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isEventDataReady:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isNetWork:Z

    if-nez v0, :cond_2

    .line 1020
    :cond_1
    const-string v0, "ConversationActivity"

    const-string v1, "tyrInitDatas suc"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeTitleState(I)V

    .line 1024
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->sortList(Ljava/util/List;)V

    .line 1026
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->cleanDuplicateEvent(Ljava/util/List;)V

    .line 1028
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    invoke-static {v0}, Lcom/mechat/mechatlibrary/utils/TimeUtils;->addTimeItem(Ljava/util/List;)V

    .line 1030
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->loadProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1031
    new-instance v0, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ListView;Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;)V

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    .line 1032
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1033
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->hasLoadData:Z

    .line 1036
    :cond_2
    return-void
.end method

.method private updateMicStatus()V
    .locals 6

    .prologue
    .line 1911
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceRecordManager:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    iget-object v2, v2, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceMicIv:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 1914
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceRecordManager:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    iget-object v2, v2, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v2

    iget v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->BASE:I

    div-int v1, v2, v3

    .line 1915
    .local v1, ratio:I
    const/4 v0, 0x0

    .line 1916
    .local v0, db:I
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1917
    const-wide/high16 v2, 0x4034

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 1919
    :cond_0
    iget-boolean v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isCancelRecord:Z

    if-nez v2, :cond_1

    .line 1920
    div-int/lit8 v2, v0, 0x4

    packed-switch v2, :pswitch_data_0

    .line 1949
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceMicIv:Landroid/widget/ImageView;

    const-string v3, "drawable"

    const-string v4, "mc_voice_pop_mic_8"

    invoke-static {p0, v3, v4}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1953
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1954
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    const/4 v3, 0x4

    iget v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->SPACE:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1957
    .end local v0           #db:I
    .end local v1           #ratio:I
    :cond_2
    return-void

    .line 1922
    .restart local v0       #db:I
    .restart local v1       #ratio:I
    :pswitch_0
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceMicIv:Landroid/widget/ImageView;

    const-string v3, "drawable"

    const-string v4, "mc_voice_pop_mic_0"

    invoke-static {p0, v3, v4}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1925
    :pswitch_1
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceMicIv:Landroid/widget/ImageView;

    const-string v3, "drawable"

    const-string v4, "mc_voice_pop_mic_1"

    invoke-static {p0, v3, v4}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1928
    :pswitch_2
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceMicIv:Landroid/widget/ImageView;

    const-string v3, "drawable"

    const-string v4, "mc_voice_pop_mic_2"

    invoke-static {p0, v3, v4}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1931
    :pswitch_3
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceMicIv:Landroid/widget/ImageView;

    const-string v3, "drawable"

    const-string v4, "mc_voice_pop_mic_3"

    invoke-static {p0, v3, v4}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1934
    :pswitch_4
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceMicIv:Landroid/widget/ImageView;

    const-string v3, "drawable"

    const-string v4, "mc_voice_pop_mic_4"

    invoke-static {p0, v3, v4}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1937
    :pswitch_5
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceMicIv:Landroid/widget/ImageView;

    const-string v3, "drawable"

    const-string v4, "mc_voice_pop_mic_5"

    invoke-static {p0, v3, v4}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1940
    :pswitch_6
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceMicIv:Landroid/widget/ImageView;

    const-string v3, "drawable"

    const-string v4, "mc_voice_pop_mic_6"

    invoke-static {p0, v3, v4}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1943
    :pswitch_7
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceMicIv:Landroid/widget/ImageView;

    const-string v3, "drawable"

    const-string v4, "mc_voice_pop_mic_7"

    invoke-static {p0, v3, v4}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1946
    :pswitch_8
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->popVoiceMicIv:Landroid/widget/ImageView;

    const-string v3, "drawable"

    const-string v4, "mc_voice_pop_mic_8"

    invoke-static {p0, v3, v4}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1920
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 13
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1190
    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1193
    if-nez p1, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 1194
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    .line 1195
    .local v12, sdState:Ljava/lang/String;
    const-string v0, "mounted"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1229
    .end local v12           #sdState:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1198
    .restart local v12       #sdState:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->orientation:I

    .line 1199
    iget-object v10, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->cameraPicPath:Ljava/lang/String;

    .line 1200
    .local v10, path:Ljava/lang/String;
    const-string v0, "ConversationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cccccccccccc path = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1202
    .local v8, imageFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1204
    .local v9, msgId:Ljava/lang/String;
    invoke-direct {p0, v9, v8}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->createAndSendImageMessage(Ljava/lang/String;Ljava/io/File;)V

    .line 1209
    .end local v8           #imageFile:Ljava/io/File;
    .end local v9           #msgId:Ljava/lang/String;
    .end local v10           #path:Ljava/lang/String;
    .end local v12           #sdState:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    if-eqz p3, :cond_3

    .line 1210
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1211
    .local v1, selectedImage:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    .line 1212
    .local v2, filePathColumns:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1213
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1214
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1215
    .local v7, columnIndex:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1216
    .local v11, picturePath:Ljava/lang/String;
    const-string v0, "ConversationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "picturePath = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1219
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1220
    .restart local v8       #imageFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1222
    .restart local v9       #msgId:Ljava/lang/String;
    invoke-direct {p0, v9, v8}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->createAndSendImageMessage(Ljava/lang/String;Ljava/io/File;)V

    .line 1226
    .end local v1           #selectedImage:Landroid/net/Uri;
    .end local v2           #filePathColumns:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #columnIndex:I
    .end local v8           #imageFile:Ljava/io/File;
    .end local v9           #msgId:Ljava/lang/String;
    .end local v11           #picturePath:Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1227
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeInputState(I)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "arg0"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1056
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 1057
    .local v3, id:I
    iget v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->backBtnId:I

    if-ne v3, v4, :cond_1

    .line 1058
    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->finish()V

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    iget v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->listId:I

    if-eq v3, v4, :cond_0

    .line 1061
    iget v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEtId:I

    if-eq v3, v4, :cond_0

    .line 1063
    iget v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionBtnId:I

    if-ne v3, v4, :cond_3

    .line 1065
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionPanel:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1066
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionPanel:Landroid/widget/GridView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1067
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->showSoftKeyboard()V

    goto :goto_0

    .line 1069
    :cond_2
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->hindSoftKeyboard()V

    .line 1070
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionPanel:Landroid/widget/GridView;

    invoke-virtual {v4, v7}, Landroid/widget/GridView;->setSelection(I)V

    .line 1071
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionPanel:Landroid/widget/GridView;

    invoke-virtual {v4, v7}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 1074
    :cond_3
    iget v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->expressionPanelId:I

    if-eq v3, v4, :cond_0

    .line 1076
    iget v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voidceOrSendBtnId:I

    if-ne v3, v4, :cond_6

    .line 1078
    const-string v4, "ConversationActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "voidceOrSendBtnId onClick() state = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtnState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtnState:I

    if-ne v4, v8, :cond_4

    .line 1081
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->createAndSendTextMessage()V

    .line 1082
    invoke-direct {p0, v7}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeInputState(I)V

    goto :goto_0

    .line 1083
    :cond_4
    iget v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtnState:I

    if-nez v4, :cond_5

    .line 1084
    invoke-direct {p0, v8}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeInputState(I)V

    .line 1085
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->hindSoftKeyboard()V

    goto :goto_0

    .line 1086
    :cond_5
    iget v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceOrSendBtnState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 1087
    invoke-direct {p0, v7}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeInputState(I)V

    .line 1088
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->showSoftKeyboard()V

    goto :goto_0

    .line 1091
    :cond_6
    iget v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->cameraBtnId:I

    if-ne v3, v4, :cond_0

    .line 1093
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->hindSoftKeyboard()V

    .line 1094
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1095
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getDialogCameraString(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getDialogPhotoString(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    .line 1096
    .local v2, choice:[Ljava/lang/String;
    new-instance v4, Lcom/mechat/mechatlibrary/ui/ConversationActivity$13;

    invoke-direct {v4, p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$13;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1130
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1131
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getDialogTitleString(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1132
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v4, "ConversationActivity"

    invoke-static {v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v5, "ConversationActivity#onCreate"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 252
    invoke-virtual {p0, v10}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->requestWindowFeature(I)Z

    .line 253
    const-string v4, "layout"

    const-string v5, "mc_conversation_activity"

    invoke-static {p0, v4, v5}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->setContentView(I)V

    .line 254
    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 257
    iput-boolean v11, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isPause:Z

    .line 258
    iput-boolean v11, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isStop:Z

    .line 259
    new-instance v4, Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-direct {v4, p0}, Lcom/mechat/mechatlibrary/utils/SpManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    .line 260
    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->getInstance(Landroid/content/Context;)Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;

    .line 261
    invoke-static {p0}, Lcom/mechat/mechatlibrary/MCMessageManager;->init(Landroid/content/Context;)V

    .line 262
    invoke-static {p0}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->init(Landroid/content/Context;)Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v4

    iput-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    .line 263
    invoke-static {p0}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->init(Landroid/content/Context;)Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    move-result-object v4

    iput-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->mcEventDBManger:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    .line 264
    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "string"

    const-string v6, "mc_formattersStr"

    invoke-static {p0, v5, v6}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "string"

    const-string v7, "mc_today"

    invoke-static {p0, v6, v7}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 265
    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "string"

    const-string v8, "mc_tomorrow"

    invoke-static {p0, v7, v8}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 264
    invoke-static {v4, v5, v6}, Lcom/mechat/mechatlibrary/utils/TimeUtils;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "onlineConfig"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/mechat/mechatlibrary/MCOnlineConfig;

    iput-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->onlineConfig:Lcom/mechat/mechatlibrary/MCOnlineConfig;

    .line 267
    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/Utils;->isNetWork(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isNetWork:Z

    .line 269
    new-instance v4, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v4}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v4, v10}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 270
    .local v3, options:Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;
    new-instance v4, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v4, p0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    .line 271
    .local v0, config:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    invoke-static {}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 273
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->initIds()V

    .line 274
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->findViews()V

    .line 275
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->setListeners()V

    .line 276
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->initSmiley()V

    .line 279
    invoke-direct {p0, v11}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeInputState(I)V

    .line 281
    invoke-direct {p0, v12}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeTitleState(I)V

    .line 283
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 285
    new-instance v4, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    invoke-direct {v4, p0, v9}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;)V

    iput-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    .line 287
    new-instance v4, Landroid/media/SoundPool;

    const/4 v5, 0x5

    invoke-direct {v4, v10, v12, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->soundPool:Landroid/media/SoundPool;

    .line 288
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->soundPool:Landroid/media/SoundPool;

    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/MResource;->getMessageSoundId(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, p0, v5, v10}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 289
    new-instance v4, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    invoke-direct {v4, p0, v9}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;)V

    iput-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceRecordManager:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    .line 291
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    if-nez v4, :cond_0

    .line 292
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;

    .line 294
    :cond_0
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePreSendList:Ljava/util/List;

    if-nez v4, :cond_1

    .line 295
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePreSendList:Ljava/util/List;

    .line 298
    :cond_1
    iget-boolean v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isNetWork:Z

    if-eqz v4, :cond_2

    .line 299
    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v5}, Lcom/mechat/mechatlibrary/utils/SpManager;->getAppKey()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;

    invoke-direct {v6, p0, p1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$2;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Landroid/os/Bundle;)V

    invoke-static {v4, v5, v6}, Lcom/mechat/mechatlibrary/MCClient;->init(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/mechatlibrary/callback/OnInitCallback;)V

    .line 344
    :goto_1
    new-instance v4, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;

    invoke-direct {v4, p0, v9}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;)V

    iput-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->messageReceiver:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;

    .line 345
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 346
    .local v1, intentFilter:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/MCMessageManager;->getNewMessageReceivedAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/MCMessageManager;->getReAllocationEventAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/MCMessageManager;->getServiceInputtingAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/MCMessageManager;->getUserIsRedirectedEventAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->messageReceiver:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 353
    new-instance v4, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;

    invoke-direct {v4, p0, v9}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;)V

    iput-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myNetworkChangeReceiver:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;

    .line 354
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 355
    .local v2, mFilter:Landroid/content/IntentFilter;
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myNetworkChangeReceiver:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 358
    const-string v4, "ConversationActivity"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 363
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line -1
    .end local v0           #config:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    .end local v2           #mFilter:Landroid/content/IntentFilter;
    .end local v3           #options:Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;
    :catch_0
    move-exception v4

    const/4 v4, 0x0

    :try_start_1
    const-string v5, "ConversationActivity#onCreate"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 339
    .restart local v0       #config:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    .restart local v3       #options:Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;
    :cond_2
    invoke-direct {p0, v12, v10}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeTipUI(IZ)V

    .line 340
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->loadLeaveMsgData()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 433
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 435
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceRecordManager:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceRecordManager:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->releaseVoiceRes()V

    .line 437
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceRecordManager:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->isActivityDestory:Z

    .line 439
    :cond_0
    const-string v0, "ConversationActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1248
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->getInstance(Landroid/content/Context;)Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;

    move-result-object v0

    .line 1249
    .local v0, chatSmileyParser:Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->getTmpSmileyTexts()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 1250
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1251
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1252
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 402
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isPause:Z

    .line 404
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->cleanInputting()V

    .line 405
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->removeMessages(I)V

    .line 406
    const-string v0, "ConversationActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 367
    const-string v3, "ConversationActivity"

    const-string v4, "onResume"

    invoke-static {v3, v4}, Lcom/mechat/mechatlibrary/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 369
    iput-boolean v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isPause:Z

    .line 371
    iget-boolean v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isStop:Z

    if-eqz v3, :cond_2

    .line 373
    new-instance v3, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;

    invoke-direct {v3, p0, v6}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;)V

    iput-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->messageReceiver:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;

    .line 374
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 375
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/MCMessageManager;->getNewMessageReceivedAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/MCMessageManager;->getReAllocationEventAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/MCMessageManager;->getServiceInputtingAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/MCMessageManager;->getUserIsRedirectedEventAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->messageReceiver:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 382
    new-instance v3, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;

    invoke-direct {v3, p0, v6}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;)V

    iput-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myNetworkChangeReceiver:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;

    .line 383
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 384
    .local v1, mFilter:Landroid/content/IntentFilter;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myNetworkChangeReceiver:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 387
    iget-boolean v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isOnlineSuc:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isHasService:Z

    if-eqz v3, :cond_0

    .line 388
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/mechat/mechatlibrary/MechatService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    .local v2, mechatService:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 392
    .end local v2           #mechatService:Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    if-eqz v3, :cond_1

    .line 393
    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->notifyDataSetChanged()V

    .line 396
    :cond_1
    iput-boolean v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isStop:Z

    .line 398
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    .end local v1           #mFilter:Landroid/content/IntentFilter;
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 445
    const-string v0, "isNeedOnline"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    const-string v0, "isHasService"

    iget-boolean v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isHasService:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 448
    const-string v0, "cameraPicPath"

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->cameraPicPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v0, "orientation"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 450
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 451
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    .line 411
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 412
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isStop:Z

    .line 413
    const-string v1, "ConversationActivity"

    const-string v2, "onStop"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->getInstance()Lcom/mechat/mechatlibrary/MCClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/MCClient;->letUserOffline()V

    .line 415
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mechat/mechatlibrary/MechatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 416
    .local v0, mechatService:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->stopService(Landroid/content/Intent;)Z

    .line 417
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->messageReceiver:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MessageReceiver;

    invoke-virtual {p0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 418
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myNetworkChangeReceiver:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyNetworkChangeReceiver;

    invoke-virtual {p0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 420
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMsgAdapter:Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;->stopPlayVoice()V

    .line 429
    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1234
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mailto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1235
    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1237
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1238
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1244
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 1243
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
