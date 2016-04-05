.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$12;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity;->requestMessageData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$12;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0
    .parameter "responseString"

    .prologue
    .line 979
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
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
    .line 949
    .local p1, messageList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 950
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$12;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mechat/mechatlibrary/bean/MCMessage;

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->lastMsgId:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$75(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)V

    .line 951
    const-string v1, "ConversationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "messageList.size() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    const-string v1, "ConversationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "first msg id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$12;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->lastMsgId:Ljava/lang/String;
    invoke-static {v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$76(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    :cond_0
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$12;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$11(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/utils/SpManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/utils/SpManager;->getShowVoiceMessage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 957
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$12;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->cleanVoiceMessage(Ljava/util/List;)V
    invoke-static {v1, p1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$77(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/util/List;)V

    .line 961
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 970
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$12;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$4(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 971
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$12;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    const/4 v2, 0x1

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isChatDataReady:Z
    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$79(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    .line 972
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$12;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->tyrInitDatas()V
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$74(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    .line 973
    const-string v1, "ConversationActivity"

    const-string v2, "requestMessageData ok"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    return-void

    .line 961
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mechat/mechatlibrary/bean/MCMessage;

    .line 962
    .local v0, msg:Lcom/mechat/mechatlibrary/bean/MCMessage;
    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 963
    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$12;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voicePreSendList:Ljava/util/List;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$78(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sending"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 965
    const-string v2, "failure"

    invoke-virtual {v0, v2}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    goto :goto_0
.end method
