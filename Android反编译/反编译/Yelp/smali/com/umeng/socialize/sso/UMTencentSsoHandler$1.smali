.class Lcom/umeng/socialize/sso/UMTencentSsoHandler$1;
.super Ljava/lang/Object;
.source "UMTencentSsoHandler.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$OnSnsPlatformClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/sso/UMTencentSsoHandler;->createNewPlatform()Lcom/umeng/socialize/bean/CustomPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/sso/UMTencentSsoHandler;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/sso/UMTencentSsoHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/sso/UMTencentSsoHandler$1;->this$0:Lcom/umeng/socialize/sso/UMTencentSsoHandler;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 2
    .parameter "context"
    .parameter "entity"
    .parameter "listener"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/umeng/socialize/sso/UMTencentSsoHandler$1;->this$0:Lcom/umeng/socialize/sso/UMTencentSsoHandler;

    iget-object v1, p0, Lcom/umeng/socialize/sso/UMTencentSsoHandler$1;->this$0:Lcom/umeng/socialize/sso/UMTencentSsoHandler;

    iget-object v1, v1, Lcom/umeng/socialize/sso/UMTencentSsoHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    invoke-virtual {v0, v1, p2, p3}, Lcom/umeng/socialize/sso/UMTencentSsoHandler;->handleOnClick(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 122
    return-void
.end method
