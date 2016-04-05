.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$StartVoiceRecordThread;
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
    name = "StartVoiceRecordThread"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

.field private voiceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "voiceId"

    .prologue
    .line 2285
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$StartVoiceRecordThread;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2286
    iput-object p2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$StartVoiceRecordThread;->voiceId:Ljava/lang/String;

    .line 2287
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2291
    const-string v2, "ConversationActivity"

    const-string v3, "start init"

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$StartVoiceRecordThread;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;)Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$StartVoiceRecordThread;->voiceId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/Utils;->getVoiceStorePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2295
    .local v1, voiceOutputPath:Ljava/lang/String;
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2299
    :goto_0
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$StartVoiceRecordThread;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->access$3(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;)Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$StartVoiceRecordThread;->voiceId:Ljava/lang/String;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->getMCVoiceMessageById(Ljava/lang/String;)Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;
    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$31(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2300
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;

    iget-object v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$StartVoiceRecordThread;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    iget-object v5, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$StartVoiceRecordThread;->voiceId:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;-><init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2304
    :goto_1
    return-void

    .line 2296
    :catch_0
    move-exception v0

    .line 2297
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 2302
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const-string v2, "ConversationActivity"

    const-string v3, "StartVoiceRecordThread getMCVoiceMessageById(voiceId) = null"

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
