.class public Lcom/umeng/update/UmengUpdateAgent;
.super Ljava/lang/Object;
.source "UmengUpdateAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/update/UmengUpdateAgent$a;
    }
.end annotation


# static fields
.field private static a:Lcom/umeng/update/UmengUpdateListener;

.field private static b:Lcom/umeng/update/UmengDialogButtonListener;

.field private static c:Lcom/umeng/update/UmengDownloadListener;

.field private static d:Landroid/content/Context;

.field private static e:Lcom/umeng/update/c;

.field private static f:Landroid/os/Handler;

.field private static g:Z

.field private static h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->a:Lcom/umeng/update/UmengUpdateListener;

    .line 29
    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->b:Lcom/umeng/update/UmengDialogButtonListener;

    .line 30
    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->c:Lcom/umeng/update/UmengDownloadListener;

    .line 33
    new-instance v0, Lcom/umeng/update/c;

    invoke-direct {v0}, Lcom/umeng/update/c;-><init>()V

    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/c;

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/update/UmengUpdateAgent;->g:Z

    .line 38
    const-class v0, Lcom/umeng/update/UmengUpdateAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter

    .prologue
    .line 27
    sput-object p0, Lcom/umeng/update/UmengUpdateAgent;->d:Landroid/content/Context;

    return-object p0
.end method

.method static a(ILandroid/content/Context;Lcom/umeng/update/UpdateResponse;Ljava/io/File;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 459
    packed-switch p0, :pswitch_data_0

    .line 469
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->b:Lcom/umeng/update/UmengDialogButtonListener;

    if-eqz v0, :cond_0

    .line 470
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->b:Lcom/umeng/update/UmengDialogButtonListener;

    invoke-interface {v0, p0}, Lcom/umeng/update/UmengDialogButtonListener;->onClick(I)V

    .line 472
    :cond_0
    return-void

    .line 461
    :pswitch_1
    invoke-static {p1, p2, p3}, Lcom/umeng/update/UmengUpdateAgent;->a(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;Ljava/io/File;)V

    goto :goto_0

    .line 464
    :pswitch_2
    invoke-static {p1, p2}, Lcom/umeng/update/UmengUpdateAgent;->ignoreUpdate(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V

    goto :goto_0

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(ILcom/umeng/update/UpdateResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/umeng/update/UmengUpdateAgent;->b(ILcom/umeng/update/UpdateResponse;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/umeng/update/UmengUpdateAgent;->b(Landroid/content/Context;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-static {p0, p1, p2}, Lcom/umeng/update/UmengUpdateAgent;->b(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;I)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 486
    if-nez p2, :cond_0

    .line 487
    invoke-static {p0, p1}, Lcom/umeng/update/UmengUpdateAgent;->startDownload(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V

    .line 491
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-static {p0, p2}, Lcom/umeng/update/UmengUpdateAgent;->startInstall(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0
.end method

.method static synthetic b()Lcom/umeng/update/UmengUpdateListener;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->a:Lcom/umeng/update/UmengUpdateListener;

    return-object v0
.end method

.method private static b(ILcom/umeng/update/UpdateResponse;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 191
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 192
    iput p0, v0, Landroid/os/Message;->what:I

    .line 193
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 195
    sget-object v1, Lcom/umeng/update/UmengUpdateAgent;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 254
    if-nez p0, :cond_0

    .line 255
    :try_start_0
    const-string v0, "update"

    const-string v1, "unexpected null context in update"

    invoke-static {v0, v1}, Lu/upd/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :goto_0
    return-void

    .line 258
    :cond_0
    new-instance v0, Lcom/umeng/update/UmengUpdateAgent$1;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/umeng/update/UmengUpdateAgent$1;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->f:Landroid/os/Handler;

    .line 278
    invoke-static {p0}, Lcom/umeng/update/UmengUpdateAgent;->c(Landroid/content/Context;)Z

    .line 279
    invoke-static {p0}, Lu/upd/a;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 280
    invoke-static {}, Lcom/umeng/update/UpdateConfig;->isSilentDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/update/UmengUpdateAgent;->b(ILcom/umeng/update/UpdateResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    const-string v1, "update"

    const-string v2, "Exception occurred in Mobclick.update(). "

    invoke-static {v1, v2, v0}, Lu/upd/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 284
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/umeng/update/UpdateConfig;->isUpdateOnlyWifi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    invoke-static {}, Lcom/umeng/update/UpdateConfig;->isUpdateForce()Z

    move-result v0

    if-nez v0, :cond_2

    .line 286
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/update/UmengUpdateAgent;->b(ILcom/umeng/update/UpdateResponse;)V

    goto :goto_0

    .line 291
    :cond_2
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/c;

    invoke-virtual {v0}, Lcom/umeng/update/c;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/update/UmengUpdateAgent;->b(ILcom/umeng/update/UpdateResponse;)V

    .line 293
    const-string v0, "update"

    const-string v1, "Is updating now."

    invoke-static {v0, v1}, Lu/upd/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->f:Landroid/os/Handler;

    new-instance v1, Lcom/umeng/update/UmengUpdateAgent$2;

    invoke-direct {v1, p0}, Lcom/umeng/update/UmengUpdateAgent$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 307
    :cond_3
    sput-object p0, Lcom/umeng/update/UmengUpdateAgent;->d:Landroid/content/Context;

    .line 309
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/update/UmengUpdateAgent$a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/umeng/update/UmengUpdateAgent$a;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Landroid/os/Message;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 682
    invoke-static {}, Lcom/umeng/update/UmengUpdateAgent;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/umeng/update/UmengUpdateAgent;->getUpdateFromPushMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 684
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 685
    const-string v0, "UpdateStatus"

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 686
    const-string v3, "UpdateResponse"

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/umeng/update/UpdateResponse;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 687
    const-string v0, "UpdateListener"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 688
    const-string v0, "com.umeng.message.action.autoupdate"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 690
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateFromPushMessage(Z)V

    .line 691
    const-string v0, "UmengUpdateAgent"

    const-string v1, "UpdateFromPushMessage"

    invoke-static {v0, v1}, Lu/upd/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 331
    :try_start_0
    invoke-static {p0, p1}, Lcom/umeng/update/UmengUpdateAgent;->isIgnore(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-static {p0, p1}, Lcom/umeng/update/UmengUpdateAgent;->downloadedFile(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)Ljava/io/File;

    move-result-object v2

    .line 335
    if-eqz v2, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 336
    :goto_1
    if-nez v1, :cond_1

    invoke-static {}, Lcom/umeng/update/UpdateConfig;->isSilentDownload()Z

    move-result v0

    if-nez v0, :cond_3

    .line 337
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 339
    :pswitch_0
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/c;

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/umeng/update/c;->a(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;ZLjava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    const-string v1, "update"

    const-string v2, "Fail to create update dialog box."

    invoke-static {v1, v2, v0}, Lu/upd/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    move v1, v0

    .line 335
    goto :goto_1

    .line 342
    :pswitch_1
    :try_start_1
    const-string v0, "notification"

    .line 343
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 344
    const/4 v3, 0x0

    sget-object v4, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/c;

    .line 346
    invoke-virtual {v4, p0, p1, v1, v2}, Lcom/umeng/update/c;->b(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;ZLjava/io/File;)Lcom/umeng/update/c$a;

    move-result-object v1

    .line 347
    invoke-virtual {v1}, Lcom/umeng/update/c$a;->a()Landroid/app/Notification;

    move-result-object v1

    .line 344
    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 352
    :cond_3
    invoke-static {p0, p1}, Lcom/umeng/update/UmengUpdateAgent;->startDownload(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static c()Z
    .locals 4

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 57
    :try_start_0
    const-string v0, "com.umeng.message.PushAgent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_0
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 58
    :catch_0
    move-exception v0

    .line 60
    sget-object v2, Lcom/umeng/update/UmengUpdateAgent;->h:Ljava/lang/String;

    const-string v3, "isIncludesUmengPushSDK"

    invoke-static {v2, v3, v0}, Lu/upd/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 538
    invoke-static {}, Lcom/umeng/update/UpdateConfig;->isUpdateCheck()Z

    move-result v0

    if-nez v0, :cond_1

    .line 678
    :cond_0
    :goto_0
    return v1

    .line 542
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".BuildConfig"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 544
    const-string v2, "DEBUG"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 545
    if-eqz v0, :cond_0

    .line 554
    :try_start_1
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 555
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->f:Landroid/os/Handler;

    new-instance v1, Lcom/umeng/update/UmengUpdateAgent$3;

    invoke-direct {v1, p0}, Lcom/umeng/update/UmengUpdateAgent$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v1, v4

    .line 564
    goto :goto_0

    .line 566
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 568
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1005

    .line 567
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 572
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_4

    move v2, v4

    move v0, v4

    .line 573
    :goto_1
    :try_start_2
    iget-object v3, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 574
    const-string v3, "com.umeng.update.UpdateDialogActivity"

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v5, v5, v2

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 575
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 573
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v4

    .line 580
    :cond_5
    if-nez v0, :cond_6

    .line 581
    sget-object v1, Lcom/umeng/update/UmengUpdateAgent;->f:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/update/UmengUpdateAgent$4;

    invoke-direct {v2, p0}, Lcom/umeng/update/UmengUpdateAgent$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v4

    .line 591
    goto :goto_0

    .line 594
    :cond_6
    :try_start_3
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_8

    move v2, v4

    move v0, v4

    .line 595
    :goto_2
    :try_start_4
    iget-object v3, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_9

    .line 596
    const-string v3, "com.umeng.update.net.DownloadingService"

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    aget-object v5, v5, v2

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 597
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v1

    .line 595
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    move v0, v4

    .line 602
    :cond_9
    if-nez v0, :cond_a

    .line 603
    sget-object v1, Lcom/umeng/update/UmengUpdateAgent;->f:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/update/UmengUpdateAgent$5;

    invoke-direct {v2, p0}, Lcom/umeng/update/UmengUpdateAgent$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move v1, v4

    .line 613
    goto/16 :goto_0

    .line 619
    :cond_a
    :try_start_5
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_e

    move v5, v4

    move v0, v4

    move v2, v4

    move v3, v4

    .line 620
    :goto_3
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v7

    if-ge v5, v7, :cond_f

    .line 621
    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v8, v8, v5

    .line 622
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    move v3, v1

    .line 620
    :cond_b
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 624
    :cond_c
    const-string v7, "android.permission.ACCESS_NETWORK_STATE"

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v8, v8, v5

    .line 625
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    move v2, v1

    .line 626
    goto :goto_4

    .line 627
    :cond_d
    const-string v7, "android.permission.INTERNET"

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v8, v8, v5

    .line 628
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v7

    if-eqz v7, :cond_b

    move v0, v1

    .line 629
    goto :goto_4

    :cond_e
    move v0, v4

    move v2, v4

    move v3, v4

    .line 633
    :cond_f
    if-eqz v3, :cond_10

    if-eqz v2, :cond_10

    if-eqz v0, :cond_10

    move v0, v1

    .line 635
    :goto_5
    if-nez v0, :cond_11

    .line 636
    :try_start_6
    sget-object v1, Lcom/umeng/update/UmengUpdateAgent;->f:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/update/UmengUpdateAgent$6;

    invoke-direct {v2, p0}, Lcom/umeng/update/UmengUpdateAgent$6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move v1, v4

    .line 646
    goto/16 :goto_0

    :cond_10
    move v0, v4

    .line 633
    goto :goto_5

    .line 650
    :cond_11
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 651
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".R$string"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 650
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 652
    const-string v2, "UMUpdateCheck"

    .line 653
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 654
    const-string v2, "2.6.0.1.20150312"

    .line 655
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 654
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    .line 658
    :goto_6
    if-nez v0, :cond_0

    .line 664
    :goto_7
    :try_start_8
    sget-object v1, Lcom/umeng/update/UmengUpdateAgent;->f:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/update/UmengUpdateAgent$7;

    invoke-direct {v2, p0}, Lcom/umeng/update/UmengUpdateAgent$7;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    move v1, v0

    .line 678
    goto/16 :goto_0

    .line 661
    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_7

    .line 675
    :catch_1
    move-exception v0

    move v0, v4

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_8

    .line 548
    :catch_3
    move-exception v0

    goto/16 :goto_0

    :cond_12
    move v0, v4

    goto :goto_6
.end method

.method public static downloadedFile(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)Ljava/io/File;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".apk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 400
    :try_start_0
    const-string v0, "/apk"

    const/4 v3, 0x1

    new-array v3, v3, [Z

    invoke-static {v0, p0, v3}, Lcom/umeng/update/net/j;->a(Ljava/lang/String;Landroid/content/Context;[Z)Ljava/io/File;

    move-result-object v3

    .line 401
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    .line 404
    invoke-static {v0}, Lu/upd/n;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 403
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    :goto_0
    return-object v0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 409
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 411
    goto :goto_0
.end method

.method public static forceUpdate(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 217
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/umeng/update/UpdateConfig;->setUpdateForce(Z)V

    .line 218
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/update/UpdateConfig;->setSilentDownload(Z)V

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->b(Landroid/content/Context;)V

    .line 220
    return-void
.end method

.method public static getUpdateFromPushMessage()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/umeng/update/UmengUpdateAgent;->g:Z

    return v0
.end method

.method public static ignoreUpdate(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 439
    iget-object v0, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/umeng/update/UpdateConfig;->saveIgnoreMd5(Landroid/content/Context;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public static isIgnore(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 424
    iget-object v0, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    .line 426
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->getIgnoreMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-static {}, Lcom/umeng/update/UpdateConfig;->isUpdateForce()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAppkey(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->setAppkey(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static setChannel(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->setChannel(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static setDefault()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 41
    invoke-static {v1}, Lcom/umeng/update/UmengUpdateAgent;->setDeltaUpdate(Z)V

    .line 42
    invoke-static {v1}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateAutoPopup(Z)V

    .line 43
    invoke-static {v1}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateOnlyWifi(Z)V

    .line 44
    invoke-static {v1}, Lcom/umeng/update/UmengUpdateAgent;->setRichNotification(Z)V

    .line 45
    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setDialogListener(Lcom/umeng/update/UmengDialogButtonListener;)V

    .line 46
    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setDownloadListener(Lcom/umeng/update/UmengDownloadListener;)V

    .line 47
    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateListener(Lcom/umeng/update/UmengUpdateListener;)V

    .line 48
    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setAppkey(Ljava/lang/String;)V

    .line 49
    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setChannel(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateUIStyle(I)V

    .line 51
    return-void
.end method

.method public static setDeltaUpdate(Z)V
    .locals 0
    .parameter

    .prologue
    .line 117
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->setDeltaUpdate(Z)V

    .line 118
    return-void
.end method

.method public static setDialogListener(Lcom/umeng/update/UmengDialogButtonListener;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    sput-object p0, Lcom/umeng/update/UmengUpdateAgent;->b:Lcom/umeng/update/UmengDialogButtonListener;

    .line 177
    return-void
.end method

.method public static setDownloadListener(Lcom/umeng/update/UmengDownloadListener;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    sput-object p0, Lcom/umeng/update/UmengUpdateAgent;->c:Lcom/umeng/update/UmengDownloadListener;

    .line 188
    return-void
.end method

.method public static setRichNotification(Z)V
    .locals 0
    .parameter

    .prologue
    .line 155
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->setRichNotification(Z)V

    .line 156
    return-void
.end method

.method public static setSlotId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->setSlotId(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public static setUpdateAutoPopup(Z)V
    .locals 0
    .parameter

    .prologue
    .line 95
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->setUpdateAutoPopup(Z)V

    .line 96
    return-void
.end method

.method public static setUpdateCheckConfig(Z)V
    .locals 0
    .parameter

    .prologue
    .line 75
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->setUpdateCheck(Z)V

    .line 76
    return-void
.end method

.method public static setUpdateFromPushMessage(Z)V
    .locals 0
    .parameter

    .prologue
    .line 67
    sput-boolean p0, Lcom/umeng/update/UmengUpdateAgent;->g:Z

    .line 68
    return-void
.end method

.method public static setUpdateListener(Lcom/umeng/update/UmengUpdateListener;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    sput-object p0, Lcom/umeng/update/UmengUpdateAgent;->a:Lcom/umeng/update/UmengUpdateListener;

    .line 166
    return-void
.end method

.method public static setUpdateOnlyWifi(Z)V
    .locals 0
    .parameter

    .prologue
    .line 85
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->setUpdateOnlyWifi(Z)V

    .line 86
    return-void
.end method

.method public static setUpdateUIStyle(I)V
    .locals 0
    .parameter

    .prologue
    .line 107
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->setStyle(I)V

    .line 108
    return-void
.end method

.method public static showUpdateDialog(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/umeng/update/UmengUpdateAgent;->b(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;I)V

    .line 371
    return-void
.end method

.method public static showUpdateNotification(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 383
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/umeng/update/UmengUpdateAgent;->b(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;I)V

    .line 384
    return-void
.end method

.method public static silentUpdate(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/update/UpdateConfig;->setUpdateForce(Z)V

    .line 206
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/umeng/update/UpdateConfig;->setSilentDownload(Z)V

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->b(Landroid/content/Context;)V

    .line 208
    return-void
.end method

.method public static startDownload(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 519
    iget-boolean v0, p1, Lcom/umeng/update/UpdateResponse;->delta:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/umeng/update/UpdateConfig;->isDeltaUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/c;

    iget-object v2, p1, Lcom/umeng/update/UpdateResponse;->origin:Ljava/lang/String;

    iget-object v3, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    iget-object v4, p1, Lcom/umeng/update/UpdateResponse;->path:Ljava/lang/String;

    iget-object v5, p1, Lcom/umeng/update/UpdateResponse;->patch_md5:Ljava/lang/String;

    sget-object v6, Lcom/umeng/update/UmengUpdateAgent;->c:Lcom/umeng/update/UmengDownloadListener;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/update/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/update/UmengDownloadListener;)V

    .line 522
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/c;

    invoke-virtual {v0}, Lcom/umeng/update/c;->b()V

    .line 528
    :goto_0
    return-void

    .line 524
    :cond_0
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/c;

    iget-object v2, p1, Lcom/umeng/update/UpdateResponse;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    sget-object v6, Lcom/umeng/update/UmengUpdateAgent;->c:Lcom/umeng/update/UmengDownloadListener;

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/update/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/update/UmengDownloadListener;)V

    .line 526
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/c;

    invoke-virtual {v0}, Lcom/umeng/update/c;->c()V

    goto :goto_0
.end method

.method public static startInstall(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 502
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 503
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 504
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 507
    return-void
.end method

.method public static update(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 229
    invoke-static {v0}, Lcom/umeng/update/UpdateConfig;->setUpdateForce(Z)V

    .line 230
    invoke-static {v0}, Lcom/umeng/update/UpdateConfig;->setSilentDownload(Z)V

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->b(Landroid/content/Context;)V

    .line 232
    return-void
.end method

.method public static update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    invoke-static {p1}, Lcom/umeng/update/UpdateConfig;->setAppkey(Ljava/lang/String;)V

    .line 247
    invoke-static {p2}, Lcom/umeng/update/UpdateConfig;->setChannel(Ljava/lang/String;)V

    .line 249
    invoke-static {p0}, Lcom/umeng/update/UmengUpdateAgent;->update(Landroid/content/Context;)V

    .line 250
    return-void
.end method
