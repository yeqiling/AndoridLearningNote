.class Lcom/hanyou/leyusdk/LEYUUser$Member;
.super Ljava/lang/Object;
.source "LEYUUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hanyou/leyusdk/LEYUUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Member"
.end annotation


# instance fields
.field private memHeadPic:Ljava/lang/String;

.field private memId:I

.field private memMobile:Ljava/lang/String;

.field private memName:Ljava/lang/String;

.field private memUid:I

.field final synthetic this$0:Lcom/hanyou/leyusdk/LEYUUser;


# direct methods
.method constructor <init>(Lcom/hanyou/leyusdk/LEYUUser;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/hanyou/leyusdk/LEYUUser$Member;->this$0:Lcom/hanyou/leyusdk/LEYUUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMemHeadPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/hanyou/leyusdk/LEYUUser$Member;->memHeadPic:Ljava/lang/String;

    return-object v0
.end method

.method public getMemId()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/hanyou/leyusdk/LEYUUser$Member;->memId:I

    return v0
.end method

.method public getMemMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/hanyou/leyusdk/LEYUUser$Member;->memMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getMemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hanyou/leyusdk/LEYUUser$Member;->memName:Ljava/lang/String;

    return-object v0
.end method

.method public getMemUid()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/hanyou/leyusdk/LEYUUser$Member;->memUid:I

    return v0
.end method

.method public setMemHeadPic(Ljava/lang/String;)V
    .locals 0
    .parameter "memHeadPic"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/hanyou/leyusdk/LEYUUser$Member;->memHeadPic:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setMemId(I)V
    .locals 0
    .parameter "memId"

    .prologue
    .line 50
    iput p1, p0, Lcom/hanyou/leyusdk/LEYUUser$Member;->memId:I

    .line 51
    return-void
.end method

.method public setMemMobile(Ljava/lang/String;)V
    .locals 0
    .parameter "memMobile"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/hanyou/leyusdk/LEYUUser$Member;->memMobile:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setMemName(Ljava/lang/String;)V
    .locals 0
    .parameter "memName"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/hanyou/leyusdk/LEYUUser$Member;->memName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setMemUid(I)V
    .locals 0
    .parameter "memUid"

    .prologue
    .line 58
    iput p1, p0, Lcom/hanyou/leyusdk/LEYUUser$Member;->memUid:I

    .line 59
    return-void
.end method
