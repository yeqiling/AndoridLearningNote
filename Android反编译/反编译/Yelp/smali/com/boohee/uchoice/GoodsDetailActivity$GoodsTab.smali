.class public final enum Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;
.super Ljava/lang/Enum;
.source "GoodsDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/uchoice/GoodsDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GoodsTab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;

.field public static final enum GOODS:Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;

.field public static final enum POST:Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;


# instance fields
.field private name:Ljava/lang/String;

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v0, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;

    const-string v1, "GOODS"

    const-string v2, "\u5546\u54c1"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;->GOODS:Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;

    new-instance v0, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;

    const-string v1, "POST"

    const-string v2, "\u8bc4\u4ef7"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;->POST:Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;

    sget-object v1, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;->GOODS:Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;

    aput-object v1, v0, v3

    sget-object v1, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;->POST:Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;

    aput-object v1, v0, v4

    sput-object v0, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;->$VALUES:[Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "position"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput p3, p0, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;->position:I

    .line 69
    iput-object p4, p0, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;->name:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;
    .locals 1
    .parameter "name"

    .prologue
    .line 61
    const-class v0, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;

    return-object v0
.end method

.method public static values()[Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;->$VALUES:[Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;

    invoke-virtual {v0}, [Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;->position:I

    return v0
.end method
