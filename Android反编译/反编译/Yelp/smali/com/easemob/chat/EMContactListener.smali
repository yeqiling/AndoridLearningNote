.class public interface abstract Lcom/easemob/chat/EMContactListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onContactAdded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onContactAgreed(Ljava/lang/String;)V
.end method

.method public abstract onContactDeleted(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onContactInvited(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onContactRefused(Ljava/lang/String;)V
.end method
