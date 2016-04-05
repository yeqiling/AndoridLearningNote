.class Lcom/mechat/mechatlibrary/MCUserConfig$1;
.super Ljava/lang/Object;
.source "MCUserConfig.java"

# interfaces
.implements Lcom/mechat/mechatlibrary/callback/OnInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/MCUserConfig;->updateInfo(Landroid/content/Context;Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/MCUserConfig;

.field private final synthetic val$mapParams:Ljava/util/Map;

.field private final synthetic val$spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

.field private final synthetic val$updateUserInfoCallback:Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/MCUserConfig;Ljava/util/Map;Lcom/mechat/mechatlibrary/utils/SpManager;Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MCUserConfig$1;->this$0:Lcom/mechat/mechatlibrary/MCUserConfig;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/MCUserConfig$1;->val$mapParams:Ljava/util/Map;

    iput-object p3, p0, Lcom/mechat/mechatlibrary/MCUserConfig$1;->val$spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    iput-object p4, p0, Lcom/mechat/mechatlibrary/MCUserConfig$1;->val$updateUserInfoCallback:Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCUserConfig$1;->val$updateUserInfoCallback:Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCUserConfig$1;->val$updateUserInfoCallback:Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;

    invoke-interface {v0, p1}, Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;->onFailure(Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCUserConfig$1;->this$0:Lcom/mechat/mechatlibrary/MCUserConfig;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCUserConfig$1;->val$mapParams:Ljava/util/Map;

    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCUserConfig$1;->val$spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    iget-object v3, p0, Lcom/mechat/mechatlibrary/MCUserConfig$1;->val$updateUserInfoCallback:Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;

    #calls: Lcom/mechat/mechatlibrary/MCUserConfig;->requestUpdate(Ljava/util/Map;Lcom/mechat/mechatlibrary/utils/SpManager;Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;)V
    invoke-static {v0, v1, v2, v3}, Lcom/mechat/mechatlibrary/MCUserConfig;->access$0(Lcom/mechat/mechatlibrary/MCUserConfig;Ljava/util/Map;Lcom/mechat/mechatlibrary/utils/SpManager;Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;)V

    .line 117
    return-void
.end method
