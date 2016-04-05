.class public Lcom/mechat/mechatlibrary/bean/MCTimeItem;
.super Lcom/mechat/mechatlibrary/bean/MCMessage;
.source "MCTimeItem.java"


# instance fields
.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "content"
    .parameter "type"

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/bean/MCMessage;-><init>()V

    .line 8
    invoke-virtual {p0, p2}, Lcom/mechat/mechatlibrary/bean/MCTimeItem;->setType(I)V

    .line 9
    return-void
.end method


# virtual methods
.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/mechat/mechatlibrary/bean/MCTimeItem;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/mechat/mechatlibrary/bean/MCTimeItem;->time:Ljava/lang/String;

    .line 17
    return-void
.end method
