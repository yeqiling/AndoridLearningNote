.class public Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;
.super Lcom/mechat/mechatlibrary/bean/MCEvent;
.source "MCAllocationEvent.java"


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private usid:Ljava/lang/String;

.field private usname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/bean/MCEvent;-><init>()V

    .line 10
    const-string v0, "alloc_us"

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->setType(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->usid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->usname:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "avatarUrl"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->avatarUrl:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setUsid(Ljava/lang/String;)V
    .locals 0
    .parameter "usid"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->usid:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setUsname(Ljava/lang/String;)V
    .locals 0
    .parameter "usname"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->usname:Ljava/lang/String;

    .line 19
    return-void
.end method
