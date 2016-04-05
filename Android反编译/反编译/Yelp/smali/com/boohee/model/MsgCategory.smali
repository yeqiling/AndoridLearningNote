.class public Lcom/boohee/model/MsgCategory;
.super Ljava/lang/Object;
.source "MsgCategory.java"


# instance fields
.field public code:Ljava/lang/String;

.field public count:I

.field public iconId:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "iconId"
    .parameter "title"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/boohee/model/MsgCategory;->iconId:I

    .line 22
    iput-object p2, p0, Lcom/boohee/model/MsgCategory;->title:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "iconId"
    .parameter "title"
    .parameter "code"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/boohee/model/MsgCategory;->iconId:I

    .line 16
    iput-object p2, p0, Lcom/boohee/model/MsgCategory;->title:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/boohee/model/MsgCategory;->code:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 26
    iput p1, p0, Lcom/boohee/model/MsgCategory;->count:I

    .line 27
    return-void
.end method
