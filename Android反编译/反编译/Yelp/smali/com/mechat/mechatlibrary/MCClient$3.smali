.class Lcom/mechat/mechatlibrary/MCClient$3;
.super Ljava/lang/Object;
.source "MCClient.java"

# interfaces
.implements Lcom/mechat/mechatlibrary/callback/OnInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/MCClient;->letUserOnline(Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;Lcom/mechat/mechatlibrary/MCOnlineConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/MCClient;

.field private final synthetic val$onlineConfig:Lcom/mechat/mechatlibrary/MCOnlineConfig;

.field private final synthetic val$userOnlineCallback:Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/MCClient;Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;Lcom/mechat/mechatlibrary/MCOnlineConfig;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MCClient$3;->this$0:Lcom/mechat/mechatlibrary/MCClient;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/MCClient$3;->val$userOnlineCallback:Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;

    iput-object p3, p0, Lcom/mechat/mechatlibrary/MCClient$3;->val$onlineConfig:Lcom/mechat/mechatlibrary/MCOnlineConfig;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCClient$3;->val$userOnlineCallback:Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;

    invoke-interface {v0, p1}, Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;->onFailure(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCClient$3;->this$0:Lcom/mechat/mechatlibrary/MCClient;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCClient$3;->val$userOnlineCallback:Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;

    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$3;->val$onlineConfig:Lcom/mechat/mechatlibrary/MCOnlineConfig;

    #calls: Lcom/mechat/mechatlibrary/MCClient;->requestOnline(Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;Lcom/mechat/mechatlibrary/MCOnlineConfig;)V
    invoke-static {v0, v1, v2}, Lcom/mechat/mechatlibrary/MCClient;->access$7(Lcom/mechat/mechatlibrary/MCClient;Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;Lcom/mechat/mechatlibrary/MCOnlineConfig;)V

    .line 410
    return-void
.end method
