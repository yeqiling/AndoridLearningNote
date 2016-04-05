.class public Lcom/mechat/mechatlibrary/bean/MCService;
.super Ljava/lang/Object;
.source "MCService.java"


# static fields
.field private static mCurrentService:Lcom/mechat/mechatlibrary/bean/MCService;


# instance fields
.field private ulogo:Ljava/lang/String;

.field private uname:Ljava/lang/String;

.field private usavatar:Ljava/lang/String;

.field private usid:Ljava/lang/String;

.field private usname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getCurrentService()Lcom/mechat/mechatlibrary/bean/MCService;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/mechat/mechatlibrary/bean/MCService;->mCurrentService:Lcom/mechat/mechatlibrary/bean/MCService;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/mechat/mechatlibrary/bean/MCService;

    invoke-direct {v0}, Lcom/mechat/mechatlibrary/bean/MCService;-><init>()V

    sput-object v0, Lcom/mechat/mechatlibrary/bean/MCService;->mCurrentService:Lcom/mechat/mechatlibrary/bean/MCService;

    .line 19
    :cond_0
    sget-object v0, Lcom/mechat/mechatlibrary/bean/MCService;->mCurrentService:Lcom/mechat/mechatlibrary/bean/MCService;

    return-object v0
.end method

.method public static setCurrentService(Lcom/mechat/mechatlibrary/bean/MCService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 23
    sput-object p0, Lcom/mechat/mechatlibrary/bean/MCService;->mCurrentService:Lcom/mechat/mechatlibrary/bean/MCService;

    .line 24
    return-void
.end method


# virtual methods
.method public getUlogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCService;->ulogo:Ljava/lang/String;

    return-object v0
.end method

.method public getUname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCService;->uname:Ljava/lang/String;

    return-object v0
.end method

.method public getUsavatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCService;->usavatar:Ljava/lang/String;

    return-object v0
.end method

.method public getUsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCService;->usid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCService;->usname:Ljava/lang/String;

    return-object v0
.end method

.method public setUlogo(Ljava/lang/String;)V
    .locals 0
    .parameter "ulogo"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCService;->ulogo:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setUname(Ljava/lang/String;)V
    .locals 0
    .parameter "uname"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCService;->uname:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setUsavatar(Ljava/lang/String;)V
    .locals 0
    .parameter "usavatar"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCService;->usavatar:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setUsid(Ljava/lang/String;)V
    .locals 0
    .parameter "usid"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCService;->usid:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setUsname(Ljava/lang/String;)V
    .locals 0
    .parameter "usname"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCService;->usname:Ljava/lang/String;

    .line 60
    return-void
.end method
