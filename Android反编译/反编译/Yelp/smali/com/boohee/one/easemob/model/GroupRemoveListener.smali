.class public abstract Lcom/boohee/one/easemob/model/GroupRemoveListener;
.super Ljava/lang/Object;
.source "GroupRemoveListener.java"

# interfaces
.implements Lcom/easemob/EMGroupChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationAccept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "groupId"
    .parameter "groupName"
    .parameter "accepter"

    .prologue
    .line 32
    return-void
.end method

.method public onApplicationDeclined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "groupId"
    .parameter "groupName"
    .parameter "decliner"
    .parameter "reason"

    .prologue
    .line 38
    return-void
.end method

.method public onApplicationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "groupId"
    .parameter "groupName"
    .parameter "applyer"
    .parameter "reason"

    .prologue
    .line 26
    return-void
.end method

.method public onInvitationAccpted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "groupId"
    .parameter "inviter"
    .parameter "reason"

    .prologue
    .line 44
    return-void
.end method

.method public onInvitationDeclined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "groupId"
    .parameter "invitee"
    .parameter "reason"

    .prologue
    .line 50
    return-void
.end method

.method public onInvitationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "groupId"
    .parameter "groupName"
    .parameter "inviter"
    .parameter "reason"

    .prologue
    .line 20
    return-void
.end method
