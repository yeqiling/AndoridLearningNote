.class public interface abstract Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;
.super Ljava/lang/Object;
.source "OnGetMessagesCallback.java"


# virtual methods
.method public abstract onFailure(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mechat/mechatlibrary/bean/MCMessage;",
            ">;)V"
        }
    .end annotation
.end method
