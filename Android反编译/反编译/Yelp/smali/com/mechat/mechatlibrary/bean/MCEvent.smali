.class public Lcom/mechat/mechatlibrary/bean/MCEvent;
.super Ljava/lang/Object;
.source "MCEvent.java"


# static fields
.field public static final TYPE_ALLOCATION_SERVER:Ljava/lang/String; = "alloc_us"

.field public static final TYPE_REDIRECT:Ljava/lang/String; = "redirect"

.field public static final TYPE_RE_ALLOCATION_SERVER:Ljava/lang/String; = "re_alloc_us"


# instance fields
.field private createdTime:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCEvent;->id:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCEvent;->createdTime:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getCreatedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCEvent;->createdTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCEvent;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCEvent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCreatedTime(Ljava/lang/String;)V
    .locals 0
    .parameter "createdTime"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCEvent;->createdTime:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCEvent;->id:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCEvent;->type:Ljava/lang/String;

    .line 40
    return-void
.end method
