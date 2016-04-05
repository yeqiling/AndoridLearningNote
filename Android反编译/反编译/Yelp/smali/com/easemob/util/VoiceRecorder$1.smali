.class Lcom/easemob/util/VoiceRecorder$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/util/VoiceRecorder;->startRecording(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/util/VoiceRecorder;


# direct methods
.method constructor <init>(Lcom/easemob/util/VoiceRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/util/VoiceRecorder$1;->this$0:Lcom/easemob/util/VoiceRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/easemob/util/VoiceRecorder$1;->this$0:Lcom/easemob/util/VoiceRecorder;

    #getter for: Lcom/easemob/util/VoiceRecorder;->isRecording:Z
    invoke-static {v0}, Lcom/easemob/util/VoiceRecorder;->access$0(Lcom/easemob/util/VoiceRecorder;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder$1;->this$0:Lcom/easemob/util/VoiceRecorder;

    iget-object v1, v1, Lcom/easemob/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    div-int/lit16 v1, v1, 0x7fff

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/easemob/util/VoiceRecorder$1;->this$0:Lcom/easemob/util/VoiceRecorder;

    #getter for: Lcom/easemob/util/VoiceRecorder;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/easemob/util/VoiceRecorder;->access$1(Lcom/easemob/util/VoiceRecorder;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "voice"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
