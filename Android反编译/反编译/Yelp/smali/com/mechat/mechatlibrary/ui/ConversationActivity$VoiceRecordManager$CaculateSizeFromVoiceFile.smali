.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaculateSizeFromVoiceFile"
.end annotation


# instance fields
.field private lastFileSize:I

.field private runTimeLimt:I

.field private startFileSize:I

.field final synthetic this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

.field private voiceId:Ljava/lang/String;

.field private voiceOutputPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "voiceId"
    .parameter "voiceOutputPath"

    .prologue
    const/4 v0, 0x0

    .line 2312
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2317
    iput v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->startFileSize:I

    .line 2318
    iput v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->lastFileSize:I

    .line 2319
    iput v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->runTimeLimt:I

    .line 2313
    iput-object p2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->voiceId:Ljava/lang/String;

    .line 2314
    iput-object p3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->voiceOutputPath:Ljava/lang/String;

    .line 2315
    return-void
.end method

.method static synthetic access$0(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;)I
    .locals 1
    .parameter

    .prologue
    .line 2319
    iget v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->runTimeLimt:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 2323
    iget v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->runTimeLimt:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->runTimeLimt:I

    .line 2326
    iget-object v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->voiceOutputPath:Ljava/lang/String;

    invoke-static {v5}, Lcom/mechat/mechatlibrary/utils/Utils;->getFileBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2327
    .local v0, lastFileByte:[B
    array-length v5, v0

    iput v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->lastFileSize:I

    .line 2328
    iget-object v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    iget v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->startFileSize:I

    iget v7, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->lastFileSize:I

    iget v8, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->startFileSize:I

    sub-int/2addr v7, v8

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->subBytes([BII)[B
    invoke-static {v5, v0, v6, v7}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->access$0(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;[BII)[B

    move-result-object v4

    .line 2329
    .local v4, uploadFileByte:[B
    iget v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->lastFileSize:I

    iput v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->startFileSize:I

    .line 2330
    const-string v5, "ConversationActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isRecording = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->isRecording:Z
    invoke-static {v7}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->access$1(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "       voiceid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->voiceId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2333
    .local v2, startTime:J
    iget-object v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;
    invoke-static {v5}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;)Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-result-object v5

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->threadStateMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$43(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->voiceId:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;

    .line 2334
    .local v1, recordThreadState:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;
    if-eqz v1, :cond_0

    array-length v5, v4

    if-nez v5, :cond_1

    .line 2360
    :cond_0
    :goto_0
    return-void

    .line 2337
    :cond_1
    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2338
    iget-object v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    iget-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->voiceId:Ljava/lang/String;

    new-instance v7, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile$1;

    invoke-direct {v7, p0, v2, v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile$1;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;J)V

    invoke-virtual {v5, v6, v4, v7}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->uploadVoiceFileBlock(Ljava/lang/String;[BLcom/mechat/mechatlibrary/ui/ConversationActivity$OnUploadFinishCallback;)V

    goto :goto_0

    .line 2357
    :cond_2
    iget-object v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    iget-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->voiceId:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->finishUploadVoiceFile(Ljava/lang/String;[B)V

    goto :goto_0
.end method
