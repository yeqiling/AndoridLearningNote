.class Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler$ResponderHandler;
.super Landroid/os/Handler;
.source "AsyncHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponderHandler"
.end annotation


# instance fields
.field private final mResponder:Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;


# direct methods
.method constructor <init>(Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 0
    .parameter "mResponder"

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler$ResponderHandler;->mResponder:Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;

    .line 130
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler$ResponderHandler;->mResponder:Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;

    invoke-virtual {v0, p1}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 135
    return-void
.end method
