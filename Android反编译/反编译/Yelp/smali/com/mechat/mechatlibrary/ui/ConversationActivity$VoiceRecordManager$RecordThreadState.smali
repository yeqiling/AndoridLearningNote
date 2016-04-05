.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;
.super Ljava/lang/Object;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordThreadState"
.end annotation


# instance fields
.field private ctxList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isRecording:Z

.field final synthetic this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;


# direct methods
.method public constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;)V
    .locals 1
    .parameter

    .prologue
    .line 2382
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;->this$1:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;->isRecording:Z

    .line 2383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;->ctxList:Ljava/util/List;

    .line 2384
    return-void
.end method


# virtual methods
.method public addCtxString(Ljava/lang/String;)V
    .locals 1
    .parameter "ctxString"

    .prologue
    .line 2395
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;->ctxList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2396
    return-void
.end method

.method public getCtxString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2399
    const-string v0, ""

    .line 2400
    .local v0, ctxStrings:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;->ctxList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 2407
    return-object v0

    .line 2401
    :cond_0
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;->ctxList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;->ctxList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2400
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2404
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;->ctxList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 2387
    iget-boolean v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;->isRecording:Z

    return v0
.end method

.method public setIsRecording(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 2391
    iput-boolean p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager$RecordThreadState;->isRecording:Z

    .line 2392
    return-void
.end method
