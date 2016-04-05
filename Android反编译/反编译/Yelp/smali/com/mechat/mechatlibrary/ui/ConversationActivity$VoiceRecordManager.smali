.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;
.super Ljava/lang/Object;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceRecordManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;,
        Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;,
        Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$StartVoiceRecordThread;
    }
.end annotation


# static fields
.field private static final RECORD_PAUSE_TIME:J = 0x1388L


# instance fields
.field public isActivityDestory:Z

.field private isRecording:Z

.field public mediaRecorder:Landroid/media/MediaRecorder;

.field final synthetic this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;


# direct methods
.method private constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2011
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2011
    invoke-direct {p0, p1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    return-void
.end method

.method static synthetic access$0(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;[BII)[B
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2371
    invoke-direct {p0, p1, p2, p3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->subBytes([BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 2015
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->isRecording:Z

    return v0
.end method

.method static synthetic access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;)Lcom/mechat/mechatlibrary/ui/ConversationActivity;
    .locals 1
    .parameter

    .prologue
    .line 2011
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    return-object v0
.end method

.method private recordNotSupport()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2043
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    const-string v2, "string"

    const-string v3, "mc_record_not_support"

    invoke-static {v1, v2, v3}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2044
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->changeInputState(I)V
    invoke-static {v0, v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$1(Lcom/mechat/mechatlibrary/ui/ConversationActivity;I)V

    .line 2045
    return-void
.end method

.method private subBytes([BII)[B
    .locals 4
    .parameter "src"
    .parameter "begin"
    .parameter "count"

    .prologue
    .line 2372
    new-array v0, p3, [B

    .line 2373
    .local v0, bs:[B
    move v1, p2

    .local v1, i:I
    :goto_0
    add-int v2, p2, p3

    if-lt v1, v2, :cond_0

    .line 2375
    return-object v0

    .line 2374
    :cond_0
    sub-int v2, v1, p2

    aget-byte v3, p1, v1

    aput-byte v3, v0, v2

    .line 2373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateChatList(Ljava/lang/String;Z)V
    .locals 5
    .parameter "voiceId"
    .parameter "isSuc"

    .prologue
    .line 2258
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->threadStateMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$43(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2259
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getMCVoiceMessageById(Ljava/lang/String;)Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;
    invoke-static {v2, p1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$31(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    move-result-object v0

    .line 2260
    .local v0, message:Lcom/mechat/mechatlibrary/bean/MCMessage;
    const-string v2, "ConversationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateChatList message = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    if-eqz v0, :cond_0

    .line 2262
    if-eqz p2, :cond_1

    .line 2264
    const-string v2, "ConversationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateChatList    isStop = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isStop:Z
    invoke-static {v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$45(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$9(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 2266
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2267
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2268
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$9(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2275
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 2271
    :cond_1
    const-string v2, "failure"

    invoke-virtual {v0, v2}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    .line 2272
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$9(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public finishUploadVoiceFile(Ljava/lang/String;[B)V
    .locals 2
    .parameter "voiceId"
    .parameter "uploadFileByte"

    .prologue
    .line 2183
    const-string v0, "ConversationActivity"

    const-string v1, "start finishUploadVoiceFile()"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    new-instance v0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;

    invoke-direct {v0, p0, p1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$2;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->uploadVoiceFileBlock(Ljava/lang/String;[BLcom/mechat/mechatlibrary/ui/ConversationActivity$OnUploadFinishCallback;)V

    .line 2239
    return-void
.end method

.method public initVoiceRes()V
    .locals 3

    .prologue
    .line 2021
    :try_start_0
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2026
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 2027
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->recordNotSupport()V

    .line 2040
    :goto_0
    return-void

    .line 2022
    :catch_0
    move-exception v0

    .line 2023
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->recordNotSupport()V

    goto :goto_0

    .line 2031
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 2032
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 2033
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 2034
    :catch_1
    move-exception v0

    .line 2035
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "ConversationActivity"

    const-string v2, "initVoiceRes NullPointerException"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2036
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 2037
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "ConversationActivity"

    const-string v2, "initVoiceRes IllegalStateException"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releaseVoiceRes()V
    .locals 1

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 2050
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 2052
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 2053
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 2055
    :cond_0
    return-void
.end method

.method public removeAllThread()V
    .locals 1

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->threadStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$43(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2279
    return-void
.end method

.method public startRecord(Ljava/lang/String;)V
    .locals 9
    .parameter "voiceId"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xd

    .line 2058
    new-instance v2, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;

    invoke-direct {v2, p0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;)V

    .line 2059
    .local v2, recordThreadState:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->threadStateMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$43(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    const-string v4, "ConversationActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startRecord threadStateMap add = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceRecordManager:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;
    invoke-static {v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$26(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->initVoiceRes()V

    .line 2064
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    invoke-static {v4, p1}, Lcom/mechat/mechatlibrary/utils/Utils;->getVoiceStorePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2065
    .local v3, voiceOutputPath:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 2067
    const-string v4, "ConversationActivity"

    const-string v5, "startRecord() voiceOutputPath == null \u60c5\u51b5\u51fa\u73b0\uff0c\u6ce8\u610f\u3002\u3002"

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    :cond_0
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 2072
    :try_start_0
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->prepare()V

    .line 2073
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->start()V

    .line 2074
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
    invoke-static {v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$9(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 2075
    .local v1, popShowMsg:Landroid/os/Message;
    const/4 v4, 0x5

    iput v4, v1, Landroid/os/Message;->what:I

    .line 2076
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2077
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
    invoke-static {v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$9(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2078
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
    invoke-static {v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$9(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->sendEmptyMessage(I)Z

    .line 2079
    const-string v4, "ConversationActivity"

    const-string v5, "finish init"

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2103
    .end local v1           #popShowMsg:Landroid/os/Message;
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->isRecording:Z

    .line 2108
    return-void

    .line 2080
    :catch_0
    move-exception v0

    .line 2081
    .local v0, e:Ljava/lang/IllegalStateException;
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v4, :cond_1

    .line 2082
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->release()V

    .line 2084
    :cond_1
    iput-object v8, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 2085
    const-string v4, "ConversationActivity"

    const-string v5, "StartVoiceRecordThread IllegalStateException"

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 2087
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 2088
    .local v0, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
    invoke-static {v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$9(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->sendEmptyMessage(I)Z

    .line 2089
    const-string v4, "ConversationActivity"

    const-string v5, "StartVoiceRecordThread IOException"

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2091
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 2092
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
    invoke-static {v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$9(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->sendEmptyMessage(I)Z

    .line 2093
    const-string v4, "ConversationActivity"

    const-string v5, "StartVoiceRecordThread IOException"

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 2095
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v0

    .line 2096
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 2097
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v4, :cond_2

    .line 2098
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->release()V

    .line 2100
    :cond_2
    iput-object v8, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 2101
    const-string v4, "ConversationActivity"

    const-string v5, "StartVoiceRecordThread RuntimeException"

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopRecord(Ljava/lang/String;)V
    .locals 7
    .parameter "voiceId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2114
    :try_start_0
    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_0

    .line 2115
    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V

    .line 2116
    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2124
    :cond_0
    iput-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 2125
    iput-boolean v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->isRecording:Z

    .line 2126
    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->threadStateMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$43(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;

    .line 2127
    .local v2, recordThreadState:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;
    if-eqz v2, :cond_1

    .line 2128
    invoke-virtual {v2, v5}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;->setIsRecording(Z)V

    .line 2129
    const-string v3, "ConversationActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "stopRecord and setIsRecording(false) "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    :cond_1
    :goto_0
    const-string v3, "ConversationActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "stopRecord = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    return-void

    .line 2119
    .end local v2           #recordThreadState:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;
    :catch_0
    move-exception v1

    .line 2120
    .local v1, illegalStateException:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v3, "ConversationActivity"

    const-string v4, "stopRecord IllegalStateException"

    invoke-static {v3, v4}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2124
    iput-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 2125
    iput-boolean v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->isRecording:Z

    .line 2126
    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->threadStateMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$43(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;

    .line 2127
    .restart local v2       #recordThreadState:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;
    if-eqz v2, :cond_1

    .line 2128
    invoke-virtual {v2, v5}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;->setIsRecording(Z)V

    .line 2129
    const-string v3, "ConversationActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "stopRecord and setIsRecording(false) "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2121
    .end local v1           #illegalStateException:Ljava/lang/IllegalStateException;
    .end local v2           #recordThreadState:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;
    :catch_1
    move-exception v0

    .line 2122
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v3, "ConversationActivity"

    const-string v4, "stopRecord RuntimeException"

    invoke-static {v3, v4}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2124
    iput-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 2125
    iput-boolean v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->isRecording:Z

    .line 2126
    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->threadStateMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$43(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;

    .line 2127
    .restart local v2       #recordThreadState:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;
    if-eqz v2, :cond_1

    .line 2128
    invoke-virtual {v2, v5}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;->setIsRecording(Z)V

    .line 2129
    const-string v3, "ConversationActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "stopRecord and setIsRecording(false) "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2123
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v2           #recordThreadState:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;
    :catchall_0
    move-exception v3

    .line 2124
    iput-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 2125
    iput-boolean v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->isRecording:Z

    .line 2126
    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->threadStateMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$43(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;

    .line 2127
    .restart local v2       #recordThreadState:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;
    if-eqz v2, :cond_2

    .line 2128
    invoke-virtual {v2, v5}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;->setIsRecording(Z)V

    .line 2129
    const-string v4, "ConversationActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "stopRecord and setIsRecording(false) "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    :cond_2
    throw v3
.end method

.method public uploadFailed(Ljava/lang/String;)V
    .locals 3
    .parameter "voiceId"

    .prologue
    .line 2243
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->currentVoiceId:Ljava/lang/String;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$23(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getMCVoiceMessageById(Ljava/lang/String;)Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;
    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$31(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    move-result-object v0

    .line 2244
    .local v0, message:Lcom/mechat/mechatlibrary/bean/MCMessage;
    if-eqz v0, :cond_0

    .line 2245
    const-string v1, "failure"

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    .line 2246
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$33(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->updateMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    .line 2247
    const-string v1, "ConversationActivity"

    const-string v2, "uploadFailed set STATUS_FAILURE"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->updateChatList(Ljava/lang/String;Z)V

    .line 2250
    const-string v1, "ConversationActivity"

    const-string v2, "uploadFailed"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    return-void
.end method

.method public uploadSuc(Ljava/lang/String;)V
    .locals 1
    .parameter "voiceId"

    .prologue
    .line 2254
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->updateChatList(Ljava/lang/String;Z)V

    .line 2255
    return-void
.end method

.method public uploadVoiceFileBlock(Ljava/lang/String;[BLcom/mechat/mechatlibrary/ui/ConversationActivity$OnUploadFinishCallback;)V
    .locals 6
    .parameter "voiceId"
    .parameter "uoloadFileByte"
    .parameter "onUploadFinishCallback"

    .prologue
    .line 2137
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 2138
    .local v2, entity:Lorg/apache/http/HttpEntity;
    const-string v0, "ConversationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "uploadVoiceFileBlock size = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "https://voiceupload.meiqia.com/upload/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "?unitid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getUnitid()Ljava/lang/String;
    invoke-static {v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$44(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "application/octet-stream"

    .line 2140
    new-instance v4, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$1;

    invoke-direct {v4, p0, p1, p3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$1;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;Ljava/lang/String;Lcom/mechat/mechatlibrary/ui/ConversationActivity$OnUploadFinishCallback;)V

    .line 2178
    invoke-static {}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->getVoiceUploadHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    .line 2139
    invoke-static/range {v0 .. v5}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->postSysc(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;[Lorg/apache/http/Header;)V

    .line 2179
    return-void
.end method
