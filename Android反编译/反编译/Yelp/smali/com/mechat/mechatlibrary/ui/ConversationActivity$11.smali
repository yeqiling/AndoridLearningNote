.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$11;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity;->requestEventData()V
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
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$11;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3
    .parameter "responseString"

    .prologue
    .line 933
    const-string v0, "ConversationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestEventData failed = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mechat/mechatlibrary/bean/MCEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 922
    .local p1, eventList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 923
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$11;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mechat/mechatlibrary/bean/MCEvent;

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/bean/MCEvent;->getId()Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->lastEventId:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$71(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)V

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$11;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->chatMessageList:Ljava/util/List;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$4(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$11;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->transEventListToMessageList(Ljava/util/List;)Ljava/util/List;
    invoke-static {v1, p1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$72(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 926
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$11;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    const/4 v1, 0x1

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isEventDataReady:Z
    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$73(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    .line 927
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$11;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #calls: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->tyrInitDatas()V
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$74(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V

    .line 928
    const-string v0, "ConversationActivity"

    const-string v1, "requestEventData ok"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    return-void
.end method
