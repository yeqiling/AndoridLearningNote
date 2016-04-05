.class Lcom/mechat/mechatlibrary/MCUserConfig$2;
.super Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;
.source "MCUserConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/MCUserConfig;->requestUpdate(Ljava/util/Map;Lcom/mechat/mechatlibrary/utils/SpManager;Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/MCUserConfig;

.field private final synthetic val$updateUserInfoCallback:Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/MCUserConfig;Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MCUserConfig$2;->this$0:Lcom/mechat/mechatlibrary/MCUserConfig;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/MCUserConfig$2;->val$updateUserInfoCallback:Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;

    .line 137
    invoke-direct {p0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 3
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"
    .parameter "error"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCUserConfig$2;->val$updateUserInfoCallback:Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, throwableStr:Ljava/lang/String;
    const-string v1, "timed out"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCUserConfig$2;->val$updateUserInfoCallback:Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;

    const-string v2, "timed out"

    invoke-interface {v1, v2}, Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;->onFailure(Ljava/lang/String;)V

    .line 156
    .end local v0           #throwableStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 153
    .restart local v0       #throwableStr:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCUserConfig$2;->val$updateUserInfoCallback:Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;

    const-string v2, "unknow"

    invoke-interface {v1, v2}, Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 1
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCUserConfig$2;->val$updateUserInfoCallback:Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCUserConfig$2;->val$updateUserInfoCallback:Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;

    invoke-interface {v0}, Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;->onSuccess()V

    .line 144
    :cond_0
    return-void
.end method
