.class public Lcom/mechat/mechatlibrary/errorcode/ConnectErrorCode;
.super Ljava/lang/Object;
.source "ConnectErrorCode.java"


# static fields
.field public static final INIT_APP_KEY_UNAVAILABLE:Ljava/lang/String; = "appKey is unavailable"

.field public static final INIT_NOT_SUCCESS:Ljava/lang/String; = "initialize SDK not success, please check the initialization"

.field public static final INIT_SUCCESS:Ljava/lang/String; = "initialize SDK success"

.field public static final LETUSERONLINE_NOT_SUCCESS:Ljava/lang/String; = "before use this methond, must use MCClient.getInstance().leftUserOnline() first"

.field public static final TIME_OUT:Ljava/lang/String; = "timed out"

.field public static final UNKNOW:Ljava/lang/String; = "unknow"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
