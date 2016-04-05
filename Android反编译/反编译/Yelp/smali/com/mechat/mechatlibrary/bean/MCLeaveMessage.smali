.class public Lcom/mechat/mechatlibrary/bean/MCLeaveMessage;
.super Lcom/mechat/mechatlibrary/bean/MCMessage;
.source "MCLeaveMessage.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/bean/MCMessage;-><init>()V

    .line 6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/bean/MCLeaveMessage;->setType(I)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/mechat/mechatlibrary/bean/MCLeaveMessage;->setContent(Ljava/lang/String;)V

    .line 8
    return-void
.end method
