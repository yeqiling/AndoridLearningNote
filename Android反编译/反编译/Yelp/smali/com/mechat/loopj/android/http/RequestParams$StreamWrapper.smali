.class public Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;
.super Ljava/lang/Object;
.source "RequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/loopj/android/http/RequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamWrapper"
.end annotation


# instance fields
.field public final autoClose:Z

.field public final contentType:Ljava/lang/String;

.field public final inputStream:Ljava/io/InputStream;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "inputStream"
    .parameter "name"
    .parameter "contentType"
    .parameter "autoClose"

    .prologue
    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput-object p1, p0, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    .line 577
    iput-object p2, p0, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    .line 578
    iput-object p3, p0, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    .line 579
    iput-boolean p4, p0, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;->autoClose:Z

    .line 580
    return-void
.end method

.method static newInstance(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;
    .locals 1
    .parameter "inputStream"
    .parameter "name"
    .parameter "contentType"
    .parameter "autoClose"

    .prologue
    .line 583
    new-instance v0, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;

    .line 586
    if-nez p2, :cond_0

    const-string p2, "application/octet-stream"

    .line 583
    .end local p2
    :cond_0
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
