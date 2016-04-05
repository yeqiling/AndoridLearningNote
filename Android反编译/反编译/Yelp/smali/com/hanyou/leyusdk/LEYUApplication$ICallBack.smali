.class public interface abstract Lcom/hanyou/leyusdk/LEYUApplication$ICallBack;
.super Ljava/lang/Object;
.source "LEYUApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hanyou/leyusdk/LEYUApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICallBack"
.end annotation


# virtual methods
.method public abstract OnCompleted(Ljava/lang/String;)V
.end method

.method public abstract ReturnAccessToken(Ljava/lang/String;)V
.end method

.method public abstract onFailed(Ljava/lang/String;)V
.end method
