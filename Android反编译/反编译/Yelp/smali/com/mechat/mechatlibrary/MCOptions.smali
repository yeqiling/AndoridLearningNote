.class public Lcom/mechat/mechatlibrary/MCOptions;
.super Ljava/lang/Object;
.source "MCOptions.java"


# instance fields
.field private spManager:Lcom/mechat/mechatlibrary/utils/SpManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-direct {v0, p1}, Lcom/mechat/mechatlibrary/utils/SpManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mechat/mechatlibrary/MCOptions;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    .line 13
    return-void
.end method


# virtual methods
.method public setShowAgentJoinEvent(Z)V
    .locals 1
    .parameter "showEvent"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCOptions;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v0, p1}, Lcom/mechat/mechatlibrary/utils/SpManager;->setShowEvent(Z)V

    .line 23
    return-void
.end method

.method public setShowVoiceMessage(Z)V
    .locals 1
    .parameter "showVoiceMessage"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCOptions;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v0, p1}, Lcom/mechat/mechatlibrary/utils/SpManager;->setShowVoiceMessage(Z)V

    .line 33
    return-void
.end method
