.class public Lcom/easemob/util/VoiceRecorder;
.super Ljava/lang/Object;


# static fields
.field static final EXTENSION:Ljava/lang/String; = ".amr"

.field static final PREFIX:Ljava/lang/String; = "voice"


# instance fields
.field private file:Ljava/io/File;

.field private handler:Landroid/os/Handler;

.field private isRecording:Z

.field recorder:Landroid/media/MediaRecorder;

.field private startTime:J

.field private voiceFileName:Ljava/lang/String;

.field private voiceFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/util/VoiceRecorder;->isRecording:Z

    iput-object v1, p0, Lcom/easemob/util/VoiceRecorder;->voiceFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/easemob/util/VoiceRecorder;->voiceFileName:Ljava/lang/String;

    iput-object p1, p0, Lcom/easemob/util/VoiceRecorder;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/easemob/util/VoiceRecorder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/util/VoiceRecorder;->isRecording:Z

    return v0
.end method

.method static synthetic access$1(Lcom/easemob/util/VoiceRecorder;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/easemob/util/VoiceRecorder;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public discardRecording()V
    .locals 1

    iget-object v0, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    iget-object v0, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    iget-object v0, p0, Lcom/easemob/util/VoiceRecorder;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/util/VoiceRecorder;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/util/VoiceRecorder;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/easemob/util/VoiceRecorder;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/util/VoiceRecorder;->isRecording:Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    :cond_0
    return-void
.end method

.method public getVoiceFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".amr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceFilePath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/easemob/util/PathUtil;->getInstance()Lcom/easemob/util/PathUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/util/PathUtil;->getVoicePath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder;->voiceFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/util/VoiceRecorder;->isRecording:Z

    return v0
.end method

.method public startRecording(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/util/VoiceRecorder;->file:Ljava/io/File;

    :try_start_0
    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    :cond_0
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    const/16 v2, 0x1f40

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    invoke-virtual {p0, p2}, Lcom/easemob/util/VoiceRecorder;->getVoiceFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/easemob/util/VoiceRecorder;->voiceFileName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/easemob/util/VoiceRecorder;->getVoiceFilePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/easemob/util/VoiceRecorder;->voiceFilePath:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/easemob/util/VoiceRecorder;->voiceFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/easemob/util/VoiceRecorder;->file:Ljava/io/File;

    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/easemob/util/VoiceRecorder;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/easemob/util/VoiceRecorder;->isRecording:Z

    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/easemob/util/VoiceRecorder$1;

    invoke-direct {v2, p0}, Lcom/easemob/util/VoiceRecorder$1;-><init>(Lcom/easemob/util/VoiceRecorder;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/easemob/util/VoiceRecorder;->startTime:J

    const-string v1, "voice"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start voice recording to file:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/easemob/util/VoiceRecorder;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder;->file:Ljava/io/File;

    if-nez v1, :cond_1

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "voice"

    const-string v2, "prepare() failed"

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/easemob/util/VoiceRecorder;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public stopRecoding()I
    .locals 6

    const/4 v1, 0x0

    const/16 v0, -0x3f3

    iget-object v2, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_3

    iput-boolean v1, p0, Lcom/easemob/util/VoiceRecorder;->isRecording:Z

    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder;->file:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/easemob/util/VoiceRecorder;->startTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    const-string v1, "voice"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "voice recording finished. seconds:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " file length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/easemob/util/VoiceRecorder;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
