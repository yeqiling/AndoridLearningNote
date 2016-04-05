.class public interface abstract Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;
.super Ljava/lang/Object;
.source "OnGetEventsCallback.java"


# virtual methods
.method public abstract onFailure(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mechat/mechatlibrary/bean/MCEvent;",
            ">;)V"
        }
    .end annotation
.end method
