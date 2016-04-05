.class Lcom/mechat/mechatlibrary/MCClient$5;
.super Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;
.source "MCClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/MCClient;->letUserOffline()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/MCClient;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/MCClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MCClient$5;->this$0:Lcom/mechat/mechatlibrary/MCClient;

    .line 549
    invoke-direct {p0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"
    .parameter "error"

    .prologue
    .line 557
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"

    .prologue
    .line 553
    return-void
.end method
