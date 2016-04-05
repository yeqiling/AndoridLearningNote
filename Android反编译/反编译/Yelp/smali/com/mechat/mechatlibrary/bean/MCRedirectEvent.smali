.class public Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;
.super Lcom/mechat/mechatlibrary/bean/MCEvent;
.source "MCRedirectEvent.java"


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private redirectAvatarUrl:Ljava/lang/String;

.field private redirectUsid:Ljava/lang/String;

.field private redirectUsname:Ljava/lang/String;

.field private usid:Ljava/lang/String;

.field private usname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/bean/MCEvent;-><init>()V

    .line 13
    const-string v0, "redirect"

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setType(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->redirectAvatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->redirectUsid:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUsname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->redirectUsname:Ljava/lang/String;

    return-object v0
.end method

.method public getUsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->usid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->usname:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "avatarUrl"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->avatarUrl:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setRedirectAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "redirectAvatarUrl"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->redirectAvatarUrl:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setRedirectUsid(Ljava/lang/String;)V
    .locals 0
    .parameter "redirectUsid"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->redirectUsid:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setRedirectUsname(Ljava/lang/String;)V
    .locals 0
    .parameter "redirectUsname"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->redirectUsname:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setUsid(Ljava/lang/String;)V
    .locals 0
    .parameter "usid"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->usid:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setUsname(Ljava/lang/String;)V
    .locals 0
    .parameter "usname"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->usname:Ljava/lang/String;

    .line 22
    return-void
.end method
