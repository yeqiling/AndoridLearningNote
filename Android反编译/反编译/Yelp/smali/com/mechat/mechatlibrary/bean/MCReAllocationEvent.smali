.class public Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;
.super Lcom/mechat/mechatlibrary/bean/MCEvent;
.source "MCReAllocationEvent.java"


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private usid:Ljava/lang/String;

.field private usname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/bean/MCEvent;-><init>()V

    .line 9
    const-string v0, "re_alloc_us"

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->setType(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->usid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->usname:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "avatarUrl"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->avatarUrl:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setUsid(Ljava/lang/String;)V
    .locals 0
    .parameter "usid"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->usid:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setUsname(Ljava/lang/String;)V
    .locals 0
    .parameter "usname"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCReAllocationEvent;->usname:Ljava/lang/String;

    .line 18
    return-void
.end method
