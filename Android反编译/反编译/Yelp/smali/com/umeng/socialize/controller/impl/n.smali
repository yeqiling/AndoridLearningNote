.class public final Lcom/umeng/socialize/controller/impl/n;
.super Ljava/lang/Object;
.source "ShareServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/ShareService;


# static fields
.field public static d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;


# instance fields
.field a:Lcom/umeng/socialize/bean/SocializeEntity;

.field b:Lcom/umeng/socialize/controller/UMSocialService;

.field c:Lcom/umeng/socialize/bean/SocializeConfig;

.field private e:Z

.field private f:Lcom/umeng/socialize/view/ai;

.field private g:Landroid/app/ProgressDialog;

.field private h:Z

.field private final i:Ljava/lang/String;

.field private j:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/controller/impl/n;->d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 89
    iput-boolean v1, p0, Lcom/umeng/socialize/controller/impl/n;->e:Z

    .line 93
    iput-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    .line 95
    iput-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->g:Landroid/app/ProgressDialog;

    .line 100
    iput-boolean v1, p0, Lcom/umeng/socialize/controller/impl/n;->h:Z

    .line 102
    const-class v0, Lcom/umeng/socialize/controller/impl/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->i:Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 116
    return-void
.end method

.method private a(Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)Lcom/umeng/socialize/bean/MultiStatus;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v7, -0x67

    .line 718
    if-nez p3, :cond_0

    .line 719
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    const/16 v1, -0x66

    invoke-direct {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    .line 753
    :goto_0
    return-object v0

    .line 721
    :cond_0
    iget-object v0, p3, Lcom/umeng/socialize/bean/UMShareMsg;->mWeiBoId:Ljava/lang/String;

    .line 723
    if-eqz p2, :cond_1

    array-length v1, p2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 724
    :cond_1
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    const/16 v1, -0x69

    invoke-direct {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    goto :goto_0

    .line 727
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 728
    new-instance v6, Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-direct {v6}, Lcom/umeng/socialize/net/base/SocializeClient;-><init>()V

    .line 729
    new-instance v0, Lcom/umeng/socialize/net/r;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 730
    aget-object v1, p2, v4

    iget-object v3, v1, Lcom/umeng/socialize/bean/SNSPair;->mPaltform:Ljava/lang/String;

    aget-object v1, p2, v4

    iget-object v4, v1, Lcom/umeng/socialize/bean/SNSPair;->mUsid:Ljava/lang/String;

    move-object v1, p1

    move-object v5, p3

    .line 729
    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/net/r;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/UMShareMsg;)V

    invoke-virtual {v6, v0}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v1

    .line 731
    if-nez v1, :cond_3

    .line 732
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    invoke-direct {v0, v7}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    goto :goto_0

    .line 735
    :cond_3
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    iget v2, v1, Lcom/umeng/socialize/net/base/SocializeReseponse;->mStCode:I

    iget-object v1, v1, Lcom/umeng/socialize/net/base/SocializeReseponse;->mMsg:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 738
    :cond_4
    new-instance v0, Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-direct {v0}, Lcom/umeng/socialize/net/base/SocializeClient;-><init>()V

    .line 739
    new-instance v1, Lcom/umeng/socialize/net/p;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/umeng/socialize/net/p;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    .line 738
    check-cast v0, Lcom/umeng/socialize/net/q;

    .line 741
    if-nez v0, :cond_5

    .line 742
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    invoke-direct {v0, v7}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    goto :goto_0

    .line 744
    :cond_5
    const-string v1, ""

    .line 745
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#### ShareMultiResponse toString : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/umeng/socialize/net/q;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 744
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v1, v0, Lcom/umeng/socialize/net/q;->c:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eqz v1, :cond_6

    .line 748
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, v0, Lcom/umeng/socialize/net/q;->c:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/umeng/socialize/net/q;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/umeng/socialize/bean/SocializeEntity;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    :cond_6
    new-instance v1, Lcom/umeng/socialize/bean/MultiStatus;

    iget v2, v0, Lcom/umeng/socialize/net/q;->mStCode:I

    iget-object v3, v0, Lcom/umeng/socialize/net/q;->mMsg:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(ILjava/lang/String;)V

    .line 752
    iget-object v0, v0, Lcom/umeng/socialize/net/q;->a:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/bean/MultiStatus;->setPlatformCode(Ljava/util/Map;)V

    move-object v0, v1

    .line 753
    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/n;Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)Lcom/umeng/socialize/bean/MultiStatus;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 716
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/n;->a(Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)Lcom/umeng/socialize/bean/MultiStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/n;)Lcom/umeng/socialize/view/ai;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    return-object v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 366
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 367
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 368
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 382
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 371
    :catch_1
    move-exception v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 373
    :catch_2
    move-exception v0

    .line 374
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 375
    :catch_3
    move-exception v0

    .line 376
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 377
    :catch_4
    move-exception v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 379
    :catch_5
    move-exception v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private final a()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v0, v0, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    .line 123
    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    .line 126
    :cond_0
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/n;->b(Landroid/app/Activity;)V

    .line 251
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/n;->c(Landroid/app/Activity;)V

    .line 252
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/4 v2, 0x0

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->DOUBAN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->removePlatform([Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 253
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;[B)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0, p2}, Lcom/umeng/socialize/controller/UMSocialService;->setShareContent(Ljava/lang/String;)V

    .line 173
    :cond_0
    if-eqz p3, :cond_1

    .line 174
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    new-instance v1, Lcom/umeng/socialize/media/UMImage;

    invoke-direct {v1, p1, p3}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;[B)V

    invoke-interface {v0, v1}, Lcom/umeng/socialize/controller/UMSocialService;->setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/umeng/socialize/controller/UMSocialService;->setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 534
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/umeng/socialize/view/ShareActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 535
    const-string v0, "dc"

    .line 536
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, v2, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    .line 535
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    const-string v0, "sns"

    .line 538
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    .line 537
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    invoke-static {p1, p2}, Lcom/umeng/socialize/utils/OauthHelper;->isAuthenticatedAndTokenNotExpired(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/impl/n;->e:Z

    if-eqz v0, :cond_0

    .line 544
    invoke-static {p1, p2}, Lcom/umeng/socialize/utils/OauthHelper;->getUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v0

    .line 545
    iput-boolean v3, p0, Lcom/umeng/socialize/controller/impl/n;->e:Z

    .line 546
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/umeng/socialize/controller/impl/n;->postShare(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 601
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0, p3}, Lcom/umeng/socialize/bean/SocializeConfig;->contains(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0, p3}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 552
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 556
    :cond_2
    const-string v0, ""

    .line 555
    invoke-static {p1, p2, v0, v3}, Lcom/umeng/socialize/utils/LoadingDialog;->createProgressDialog(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->g:Landroid/app/ProgressDialog;

    .line 557
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 558
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->g:Landroid/app/ProgressDialog;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 561
    :cond_3
    new-instance v0, Lcom/umeng/socialize/controller/impl/q;

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/umeng/socialize/controller/impl/q;-><init>(Lcom/umeng/socialize/controller/impl/n;Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;Landroid/content/Intent;)V

    .line 597
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->g:Landroid/app/ProgressDialog;

    invoke-static {v1}, Lcom/umeng/socialize/utils/SocializeUtils;->safeShowDialog(Landroid/app/Dialog;)V

    .line 599
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v1, p1, p2, v0}, Lcom/umeng/socialize/controller/UMSocialService;->doOauthVerify(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/umeng/socialize/controller/impl/InitializeController;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 766
    new-instance v0, Lcom/umeng/socialize/controller/impl/s;

    invoke-direct {v0, p0, p2, p1}, Lcom/umeng/socialize/controller/impl/s;-><init>(Lcom/umeng/socialize/controller/impl/n;Lcom/umeng/socialize/controller/impl/InitializeController;Landroid/content/Context;)V

    .line 776
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/s;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    .line 777
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/n;Landroid/content/Context;Lcom/umeng/socialize/controller/impl/InitializeController;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 764
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/controller/impl/n;->a(Landroid/content/Context;Lcom/umeng/socialize/controller/impl/InitializeController;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/n;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/umeng/socialize/controller/impl/n;->e:Z

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 343
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 344
    invoke-virtual {v0, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 354
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 347
    :catch_1
    move-exception v0

    .line 348
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 349
    :catch_2
    move-exception v0

    .line 350
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 351
    :catch_3
    move-exception v0

    .line 352
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 698
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    instance-of v0, v0, Lcom/umeng/socialize/controller/impl/InitializeController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    check-cast v0, Lcom/umeng/socialize/controller/impl/InitializeController;

    .line 699
    invoke-virtual {v0, p1}, Lcom/umeng/socialize/controller/impl/InitializeController;->a(Landroid/content/Context;)Z

    move-result v0

    .line 702
    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "-1"

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, v2, Lcom/umeng/socialize/bean/SocializeEntity;->mEntityKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v2}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/socialize/bean/SocializeEntity;->mEntityKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/umeng/socialize/bean/SocializeEntity;->mEntityKey:Ljava/lang/String;

    .line 705
    :cond_0
    return v0

    .line 700
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/n;Landroid/content/Context;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 697
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/n;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/umeng/socialize/controller/impl/n;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->g:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 785
    sget-object v0, Lcom/umeng/socialize/utils/SocializeUtils;->deleteUris:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 786
    sget-object v0, Lcom/umeng/socialize/utils/SocializeUtils;->deleteUris:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 787
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 788
    sget-object v0, Lcom/umeng/socialize/utils/SocializeUtils;->deleteUris:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/umeng/socialize/utils/BitmapUtils;->PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 793
    const-string v2, "image_uri_cache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 794
    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/SocializeUtils;->saveObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    :cond_0
    return-void

    .line 788
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 789
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 790
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 789
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 10
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 262
    const-string v0, "deault_id"

    .line 264
    new-array v1, v6, [Ljava/lang/Class;

    .line 265
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v5

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    .line 267
    new-array v2, v6, [Ljava/lang/Object;

    .line 268
    aput-object p1, v2, v5

    aput-object v0, v2, v4

    aput-object v0, v2, v3

    .line 271
    new-array v0, v4, [Ljava/lang/Class;

    .line 272
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v5

    .line 274
    new-array v3, v4, [Ljava/lang/Object;

    .line 275
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    .line 277
    const-string v4, "com.umeng.socialize.weixin.controller.UMWXHandler"

    .line 278
    const-string v5, "addToSocialSDK"

    .line 279
    const-string v6, "setToCircle"

    .line 282
    iget-object v7, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    sget-object v8, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v8}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getReqCode()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v7

    if-nez v7, :cond_0

    .line 283
    invoke-direct {p0, v4, v1, v2}, Lcom/umeng/socialize/controller/impl/n;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 284
    if-eqz v7, :cond_0

    .line 285
    invoke-direct {p0, v7, v5, v9, v9}, Lcom/umeng/socialize/controller/impl/n;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 289
    :cond_0
    iget-object v7, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    sget-object v8, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v8}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getReqCode()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v7

    if-nez v7, :cond_1

    .line 290
    invoke-direct {p0, v4, v1, v2}, Lcom/umeng/socialize/controller/impl/n;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 291
    if-eqz v1, :cond_1

    .line 292
    invoke-direct {p0, v1, v6, v0, v3}, Lcom/umeng/socialize/controller/impl/n;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 293
    invoke-direct {p0, v1, v5, v9, v9}, Lcom/umeng/socialize/controller/impl/n;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 296
    :cond_1
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 1026
    sget-object v0, Lcom/umeng/socialize/controller/impl/n;->d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-nez v0, :cond_0

    .line 1027
    new-instance v0, Lcom/umeng/socialize/controller/impl/v;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/controller/impl/v;-><init>(Lcom/umeng/socialize/controller/impl/n;Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/socialize/controller/impl/n;->d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 1058
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 858
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 859
    invoke-static {p1, v0}, Lcom/umeng/socialize/utils/OauthHelper;->getUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v1

    .line 860
    invoke-static {p1, v0}, Lcom/umeng/socialize/utils/OauthHelper;->isAuthenticatedAndTokenNotExpired(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/umeng/socialize/controller/impl/n;->postShare(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 866
    :goto_0
    return-void

    .line 863
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/controller/impl/n;->e:Z

    .line 864
    invoke-virtual {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/n;->postShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/umeng/socialize/controller/impl/n;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->i:Ljava/lang/String;

    return-object v0
.end method

.method private c(Landroid/app/Activity;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 305
    const-string v0, "deault_id"

    .line 306
    const-string v1, "com.umeng.socialize.sso.QZoneSsoHandler"

    .line 307
    const-string v2, "com.umeng.socialize.sso.UMQQSsoHandler"

    .line 308
    const-string v3, "addToSocialSDK"

    .line 309
    new-array v4, v10, [Ljava/lang/Class;

    .line 310
    const-class v5, Landroid/app/Activity;

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v9

    .line 312
    new-array v5, v10, [Ljava/lang/Object;

    .line 313
    aput-object p1, v5, v6

    aput-object v0, v5, v8

    aput-object v0, v5, v9

    .line 317
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    sget-object v6, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v6}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getReqCode()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 318
    invoke-direct {p0, v1, v4, v5}, Lcom/umeng/socialize/controller/impl/n;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_0

    .line 320
    invoke-direct {p0, v0, v3, v7, v7}, Lcom/umeng/socialize/controller/impl/n;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getReqCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 325
    invoke-direct {p0, v2, v4, v5}, Lcom/umeng/socialize/controller/impl/n;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_1

    .line 327
    invoke-direct {p0, v0, v3, v7, v7}, Lcom/umeng/socialize/controller/impl/n;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 330
    :cond_1
    return-void
.end method

.method private c(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 878
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getPlatformMap()Ljava/util/Map;

    move-result-object v0

    .line 879
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    .line 878
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 880
    if-eqz v0, :cond_0

    .line 881
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0, p1, v1, p3}, Lcom/umeng/socialize/bean/SnsPlatform;->performClick(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 884
    :cond_0
    return-void
.end method

.method private d(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 391
    new-instance v0, Lcom/umeng/socialize/controller/impl/p;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/controller/impl/p;-><init>(Lcom/umeng/socialize/controller/impl/n;Landroid/app/Activity;)V

    .line 414
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v1, p1, v0}, Lcom/umeng/socialize/controller/UMSocialService;->showLoginDialog(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;)V

    .line 415
    return-void
.end method

.method static synthetic d(Lcom/umeng/socialize/controller/impl/n;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/impl/n;->e:Z

    return v0
.end method

.method static synthetic e(Lcom/umeng/socialize/controller/impl/n;)V
    .locals 0
    .parameter

    .prologue
    .line 784
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/n;->b()V

    return-void
.end method

.method private e(Landroid/app/Activity;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 425
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->i:Ljava/lang/String;

    const-string v2, "### activity == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :goto_0
    return v0

    .line 429
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    invoke-virtual {v1}, Lcom/umeng/socialize/view/ai;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    const-string v1, "\u5206\u4eab\u9762\u677f\u5df2\u6253\u5f00"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 434
    :cond_2
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-virtual {v1, p1, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->getAllPlatforms(Landroid/content/Context;Lcom/umeng/socialize/controller/UMSocialService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 435
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->i:Ljava/lang/String;

    const-string v2, "### \u5e73\u53f0\u6570\u91cf\u4e3a0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v1, "\u5e73\u53f0\u6570\u91cf\u4e3a0"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 439
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public directShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 811
    invoke-static {p1, p2}, Lcom/umeng/socialize/utils/SocializeUtils;->platformCheck(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 844
    :goto_0
    return-void

    .line 815
    :cond_0
    if-nez p3, :cond_1

    .line 816
    invoke-static {}, Lcom/umeng/socialize/utils/ListenerUtils;->createSnsPostListener()Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    move-result-object p3

    .line 819
    :cond_1
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/n;->a()V

    .line 822
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 823
    const/16 v1, 0x8

    .line 822
    invoke-virtual {v0, p1, p2, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 825
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareType()Lcom/umeng/socialize/bean/ShareType;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/ShareType;->NORMAL:Lcom/umeng/socialize/bean/ShareType;

    if-ne v0, v1, :cond_2

    .line 827
    invoke-static {p2}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 834
    :goto_1
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/n;->b(Landroid/content/Context;)V

    .line 836
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    sget-object v1, Lcom/umeng/socialize/controller/impl/n;->d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 838
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->isCustomPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 839
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/n;->c(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0

    .line 830
    :cond_2
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_1

    .line 841
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/n;->b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0
.end method

.method public dismissShareBoard()V
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ai;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ai;->dismiss()V

    .line 1080
    :cond_0
    return-void
.end method

.method public isOpenShareBoard()Z
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ai;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1085
    :goto_0
    return v0

    .line 1084
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openShare(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 206
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/n;->a()V

    .line 208
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/n;->e(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/n;->a(Landroid/app/Activity;)V

    .line 212
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0, p1, v1, v4}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    .line 215
    new-instance v0, Lcom/umeng/socialize/view/abs/b;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/view/abs/b;-><init>(Landroid/content/Context;)V

    .line 216
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 217
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 216
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/abs/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    new-instance v1, Lcom/umeng/socialize/view/ai;

    .line 220
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, v2, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    invoke-static {v2}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/umeng/socialize/view/ai;-><init>(Landroid/content/Context;Lcom/umeng/socialize/view/abs/b;Lcom/umeng/socialize/controller/UMSocialService;)V

    .line 219
    iput-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    .line 221
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    invoke-virtual {v1, v4}, Lcom/umeng/socialize/view/ai;->setFocusable(Z)V

    .line 222
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/view/ai;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->j:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/view/ai;->a(Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;)V

    .line 224
    new-instance v1, Lcom/umeng/socialize/controller/impl/o;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/controller/impl/o;-><init>(Lcom/umeng/socialize/controller/impl/n;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/abs/b;->a(Landroid/view/View$OnClickListener;)V

    .line 232
    if-eqz p2, :cond_1

    .line 233
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0, p2}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 236
    :cond_1
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/impl/n;->h:Z

    if-eqz v0, :cond_2

    .line 237
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/n;->d(Landroid/app/Activity;)V

    goto :goto_0

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 240
    const/16 v2, 0x50

    .line 239
    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/umeng/socialize/view/ai;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public openShare(Landroid/app/Activity;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 189
    iput-boolean p2, p0, Lcom/umeng/socialize/controller/impl/n;->h:Z

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/n;->openShare(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 192
    return-void
.end method

.method public postShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 468
    invoke-static {p1, p2}, Lcom/umeng/socialize/utils/SocializeUtils;->platformCheck(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    :goto_0
    return-void

    .line 471
    :cond_0
    if-nez p3, :cond_1

    .line 472
    invoke-static {}, Lcom/umeng/socialize/utils/ListenerUtils;->createSnsPostListener()Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    move-result-object p3

    .line 475
    :cond_1
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/n;->a()V

    .line 476
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 477
    const/4 v1, 0x2

    .line 476
    invoke-virtual {v0, p1, p2, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 480
    invoke-static {p2}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 483
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/n;->b(Landroid/content/Context;)V

    .line 484
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    sget-object v1, Lcom/umeng/socialize/controller/impl/n;->d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 487
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->isCustomPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 488
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/n;->c(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0

    .line 490
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/n;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0
.end method

.method public postShare(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 507
    invoke-static {p3}, Lcom/umeng/socialize/utils/SocializeUtils;->isValidPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/n;->a()V

    .line 512
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v4

    .line 514
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->setShareMsg(Lcom/umeng/socialize/bean/UMShareMsg;)V

    .line 520
    :goto_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->setFireCallback(Z)V

    .line 521
    invoke-virtual {p3}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/socialize/controller/impl/n;->postShareByCustomPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0

    .line 516
    :cond_1
    new-instance v4, Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-direct {v4}, Lcom/umeng/socialize/bean/UMShareMsg;-><init>()V

    .line 517
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    .line 518
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/umeng/socialize/bean/UMShareMsg;->setMediaData(Lcom/umeng/socialize/media/UMediaObject;)V

    goto :goto_1
.end method

.method public postShareByCustomPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 617
    invoke-static {p3}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v7

    .line 618
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/n;->a()V

    .line 620
    new-instance v0, Lcom/umeng/socialize/controller/impl/r;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/umeng/socialize/controller/impl/r;-><init>(Lcom/umeng/socialize/controller/impl/n;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 688
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/r;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    .line 689
    return-void
.end method

.method public postShareByID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 983
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/n;->a()V

    .line 984
    new-instance v0, Lcom/umeng/socialize/controller/impl/u;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/umeng/socialize/controller/impl/u;-><init>(Lcom/umeng/socialize/controller/impl/n;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1017
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/u;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    .line 1018
    return-void
.end method

.method public varargs postShareMulti(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 898
    if-nez p1, :cond_1

    .line 899
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->i:Ljava/lang/String;

    const-string v1, "\u8bf7\u4f20\u9012\u4e00\u4e2a\u6709\u6548\u7684Context\u5bf9\u8c61"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    if-eqz p3, :cond_2

    array-length v0, p3

    if-nez v0, :cond_3

    .line 904
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->i:Ljava/lang/String;

    const-string v1, "\u5206\u4eab\u7684\u5e73\u53f0\u4e3a\u7a7a\uff0c\u8bf7\u4f20\u9012\u6709\u6548\u7684\u5206\u4eab\u5e73\u53f0"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 908
    :cond_3
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/n;->a()V

    .line 910
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 911
    invoke-static {}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getShareMultiPlatforms()[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 912
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 913
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 914
    if-eqz p3, :cond_7

    .line 915
    array-length v3, p3

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_4

    .line 922
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 925
    :goto_2
    invoke-static {p1, v6, v0}, Lcom/umeng/socialize/utils/SocializeUtils;->getOauthedPlatforms(Landroid/content/Context;Ljava/util/Map;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)[Lcom/umeng/socialize/bean/SNSPair;

    move-result-object v4

    .line 927
    new-instance v5, Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-direct {v5}, Lcom/umeng/socialize/bean/UMShareMsg;-><init>()V

    .line 928
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    .line 929
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/umeng/socialize/bean/UMShareMsg;->setMediaData(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 930
    if-eqz v4, :cond_6

    array-length v0, v4

    if-lez v0, :cond_6

    .line 932
    new-instance v0, Lcom/umeng/socialize/controller/impl/t;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/umeng/socialize/controller/impl/t;-><init>(Lcom/umeng/socialize/controller/impl/n;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;Ljava/util/Map;)V

    .line 966
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/t;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    goto :goto_0

    .line 915
    :cond_4
    aget-object v4, p3, v0

    .line 916
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 917
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 919
    :cond_5
    iget-object v5, p0, Lcom/umeng/socialize/controller/impl/n;->i:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u4e0d\u652f\u6301\u4e00\u952e\u5206\u4eab\u5230\u591a\u4e2a\u5e73\u53f0"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 969
    :cond_6
    if-eqz p2, :cond_0

    .line 970
    invoke-interface {p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;->onStart()V

    .line 971
    const/16 v0, -0x69

    .line 972
    new-instance v1, Lcom/umeng/socialize/bean/MultiStatus;

    invoke-direct {v1, v0}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    .line 973
    invoke-virtual {v1, v6}, Lcom/umeng/socialize/bean/MultiStatus;->setPlatformCode(Ljava/util/Map;)V

    .line 974
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-interface {p2, v1, v0, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;->onComplete(Lcom/umeng/socialize/bean/MultiStatus;ILcom/umeng/socialize/bean/SocializeEntity;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, p3

    goto :goto_2
.end method

.method public setShareBoardListener(Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/n;->j:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;

    .line 1069
    return-void
.end method

.method public shareEmail(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 451
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getPlatformMap()Ljava/util/Map;

    move-result-object v0

    .line 452
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    .line 451
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 453
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/umeng/socialize/bean/SnsPlatform;->performClick(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 454
    return-void
.end method

.method public shareSms(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 444
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getPlatformMap()Ljava/util/Map;

    move-result-object v0

    .line 445
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 446
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/umeng/socialize/bean/SnsPlatform;->performClick(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 447
    return-void
.end method

.method public shareTo(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;[B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/n;->a()V

    .line 143
    invoke-direct {p0, p1, p3, p4}, Lcom/umeng/socialize/controller/impl/n;->a(Landroid/app/Activity;Ljava/lang/String;[B)V

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/umeng/socialize/controller/impl/n;->postShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 145
    return-void
.end method

.method public shareTo(Landroid/app/Activity;Ljava/lang/String;[B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/n;->a()V

    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/n;->a(Landroid/app/Activity;Ljava/lang/String;[B)V

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/n;->openShare(Landroid/app/Activity;Z)V

    .line 161
    return-void
.end method
