.class public Lcom/mechat/mechatlibrary/MCUserConfig$PersonalAccount;
.super Ljava/lang/Object;
.source "MCUserConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/mechatlibrary/MCUserConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersonalAccount"
.end annotation


# static fields
.field public static final NICK_NAME:Ljava/lang/String; = "appNickName"

.field public static final USER_NAME:Ljava/lang/String; = "appUserName"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
