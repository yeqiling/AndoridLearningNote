.class Lcom/umeng/update/net/DownloadingService$1;
.super Landroid/os/Handler;
.source "DownloadingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/update/net/DownloadingService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/update/net/DownloadingService;


# direct methods
.method constructor <init>(Lcom/umeng/update/net/DownloadingService;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 348
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 461
    :goto_0
    return-void

    .line 350
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/umeng/update/net/a$a;

    .line 351
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 353
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "filename"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 355
    const/16 v1, 0x27

    const/4 v2, -0x1

    const/4 v5, -0x1

    invoke-static {v4, v1, v2, v5}, Lcom/umeng/update/net/j;->a(Ljava/lang/String;III)Z

    .line 357
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cancel old notification...."

    invoke-static {v1, v2}, Lu/upd/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v5, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    const/high16 v1, 0x1000

    invoke-virtual {v5, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 361
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    iget-object v1, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    .line 364
    invoke-static {v1}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v6, 0x800

    invoke-static {v1, v2, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 368
    iget-boolean v1, v0, Lcom/umeng/update/net/a$a;->h:Z

    if-eqz v1, :cond_1

    .line 369
    new-instance v1, Landroid/app/Notification;

    const v6, 0x1080082

    iget-object v7, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    .line 371
    invoke-static {v7}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    .line 372
    invoke-static {v8}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lu/upd/l;->m(Landroid/content/Context;)I

    move-result v8

    .line 371
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 374
    iget-object v6, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    .line 376
    invoke-static {v6}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/umeng/update/net/a$a;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    .line 378
    invoke-static {v8}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    .line 379
    invoke-static {v9}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lu/upd/l;->m(Landroid/content/Context;)I

    move-result v9

    .line 378
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 375
    invoke-virtual {v1, v6, v7, v8, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object v2, v1

    .line 396
    :goto_1
    const/16 v1, 0x10

    iput v1, v2, Landroid/app/Notification;->flags:I

    .line 398
    iget-object v6, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    iget-object v1, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    const-string v7, "notification"

    invoke-virtual {v1, v7}, Lcom/umeng/update/net/DownloadingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-static {v6, v1}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/DownloadingService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 400
    iget-object v1, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/update/net/DownloadingService;->c(Lcom/umeng/update/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v1

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 403
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Show new  notification...."

    invoke-static {v1, v2}, Lu/upd/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/c;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v2}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/umeng/update/net/c;->a(Landroid/content/Context;)Z

    move-result v1

    .line 406
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v2

    const-string v6, "isAppOnForeground = %1$B"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 407
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    .line 406
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lu/upd/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/umeng/update/net/a$a;->h:Z

    if-nez v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/update/net/DownloadingService;->c(Lcom/umeng/update/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v1

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 415
    iget-object v1, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 418
    :cond_0
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%1$10s downloaded. Saved to: %2$s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v0, v0, Lcom/umeng/update/net/a$a;->b:Ljava/lang/String;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v4, v5, v0

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lu/upd/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not install. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lu/upd/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->c(Lcom/umeng/update/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v0

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 382
    :cond_1
    :try_start_1
    new-instance v1, Landroid/app/Notification;

    const v6, 0x1080082

    iget-object v7, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    .line 384
    invoke-static {v7}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    .line 385
    invoke-static {v8}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lu/upd/l;->k(Landroid/content/Context;)I

    move-result v8

    .line 384
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 387
    iget-object v6, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    .line 389
    invoke-static {v6}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/umeng/update/net/a$a;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    .line 391
    invoke-static {v8}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    .line 392
    invoke-static {v9}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lu/upd/l;->k(Landroid/content/Context;)I

    move-result v9

    .line 391
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 388
    invoke-virtual {v1, v6, v7, v8, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v1

    goto/16 :goto_1

    .line 430
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/umeng/update/net/a$a;

    .line 431
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 432
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 434
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->c(Lcom/umeng/update/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 435
    new-instance v0, Landroid/app/Notification;

    const v1, 0x1080081

    iget-object v2, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    .line 437
    invoke-static {v2}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    .line 438
    invoke-static {v5}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lu/upd/l;->n(Landroid/content/Context;)I

    move-result v5

    .line 437
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v0, v1, v2, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 440
    iget-object v1, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    .line 441
    invoke-static {v1}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x800

    .line 440
    invoke-static {v1, v10, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 443
    iget-object v2, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    .line 445
    invoke-static {v2}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    .line 446
    invoke-static {v5}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lu/upd/a;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    .line 447
    invoke-static {v7}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    .line 448
    invoke-static {v8}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lu/upd/l;->n(Landroid/content/Context;)I

    move-result v8

    .line 447
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 444
    invoke-virtual {v0, v2, v5, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 450
    iget-object v1, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/update/net/DownloadingService;->c(Lcom/umeng/update/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v1

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 452
    const-string v0, ".patch"

    const-string v1, ".apk"

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 453
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    .line 454
    invoke-static {v0}, Lcom/umeng/update/util/DeltaUpdate;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 455
    new-instance v0, Lcom/umeng/update/net/c$c;

    iget-object v1, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/umeng/update/net/DownloadingService$1;->a:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v2}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct/range {v0 .. v5}, Lcom/umeng/update/net/c$c;-><init>(Lcom/umeng/update/net/c;Landroid/content/Context;ILcom/umeng/update/net/a$a;Ljava/lang/String;)V

    .line 457
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object v7, v1, v10

    aput-object v5, v1, v11

    aput-object v6, v1, v12

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/umeng/update/net/c$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_2
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
