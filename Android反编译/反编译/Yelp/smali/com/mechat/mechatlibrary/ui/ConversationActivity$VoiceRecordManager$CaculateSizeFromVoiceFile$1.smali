.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile$1;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/mechat/mechatlibrary/ui/ConversationActivity$OnUploadFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;

.field private final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile$1;->this$2:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;

    iput-wide p2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile$1;->val$startTime:J

    .line 2338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploadFinish()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1388

    .line 2342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2343
    .local v2, endTime:J
    iget-wide v4, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile$1;->val$startTime:J

    sub-long v4, v2, v4

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 2345
    const-wide/16 v4, 0x1388

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2350
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile$1;->this$2:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->runTimeLimt:I
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->access$0(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;)I

    move-result v1

    const/16 v4, 0xe

    if-ge v1, v4, :cond_1

    .line 2351
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile$1;->this$2:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$CaculateSizeFromVoiceFile;->run()V

    .line 2353
    :cond_1
    return-void

    .line 2346
    :catch_0
    move-exception v0

    .line 2347
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
