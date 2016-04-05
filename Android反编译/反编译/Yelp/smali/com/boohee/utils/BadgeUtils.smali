.class public Lcom/boohee/utils/BadgeUtils;
.super Ljava/lang/Object;
.source "BadgeUtils.java"


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/boohee/utils/BadgeUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/utils/BadgeUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBadge(Lcom/boohee/myview/NewBadgeView;Landroid/view/View;I)V
    .locals 3
    .parameter "badge"
    .parameter "targetView"
    .parameter "count"

    .prologue
    const/16 v1, 0x14

    const/4 v2, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/myview/NewBadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 32
    invoke-virtual {p0}, Lcom/boohee/myview/NewBadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 33
    invoke-virtual {p0, p1}, Lcom/boohee/myview/NewBadgeView;->setTargetView(Landroid/view/View;)V

    .line 34
    const v0, 0x800035

    invoke-virtual {p0, v0}, Lcom/boohee/myview/NewBadgeView;->setBadgeGravity(I)V

    .line 35
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/boohee/myview/NewBadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    const/4 v0, 0x5

    const/16 v1, 0x19

    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/boohee/myview/NewBadgeView;->setBadgeMargin(IIII)V

    .line 37
    if-lez p2, :cond_1

    .line 38
    invoke-virtual {p0, v2}, Lcom/boohee/myview/NewBadgeView;->setVisibility(I)V

    .line 39
    invoke-virtual {p0, v2}, Lcom/boohee/myview/NewBadgeView;->setHideOnNull(Z)V

    goto :goto_0

    .line 41
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/boohee/myview/NewBadgeView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static addPaddingBadge(Lcom/boohee/myview/NewBadgeView;Landroid/view/View;I)V
    .locals 3
    .parameter "badge"
    .parameter "targetView"
    .parameter "count"

    .prologue
    const/16 v1, 0x14

    const/4 v2, 0x0

    .line 62
    if-nez p0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/myview/NewBadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 66
    invoke-virtual {p0}, Lcom/boohee/myview/NewBadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67
    invoke-virtual {p0, p1}, Lcom/boohee/myview/NewBadgeView;->setTargetView(Landroid/view/View;)V

    .line 68
    const v0, 0x800035

    invoke-virtual {p0, v0}, Lcom/boohee/myview/NewBadgeView;->setBadgeGravity(I)V

    .line 69
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/boohee/myview/NewBadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const/4 v0, 0x5

    const/16 v1, 0x19

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/boohee/myview/NewBadgeView;->setPadding(IIII)V

    .line 71
    if-lez p2, :cond_1

    .line 72
    invoke-virtual {p0, v2}, Lcom/boohee/myview/NewBadgeView;->setVisibility(I)V

    .line 73
    invoke-virtual {p0, v2}, Lcom/boohee/myview/NewBadgeView;->setHideOnNull(Z)V

    goto :goto_0

    .line 75
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/boohee/myview/NewBadgeView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static getLauncherClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 171
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const/4 v7, 0x0

    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 175
    .local v6, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 176
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 177
    .local v3, pkgName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 178
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 182
    .end local v3           #pkgName:Ljava/lang/String;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initBadgeView(Landroid/content/Context;Lcom/boohee/myview/NewBadgeView;Landroid/view/View;)V
    .locals 3
    .parameter "context"
    .parameter "badgeView"
    .parameter "targetView"

    .prologue
    .line 53
    new-instance p1, Lcom/boohee/myview/NewBadgeView;

    .end local p1
    invoke-direct {p1, p0}, Lcom/boohee/myview/NewBadgeView;-><init>(Landroid/content/Context;)V

    .line 54
    .restart local p1
    invoke-virtual {p1, p2}, Lcom/boohee/myview/NewBadgeView;->setTargetView(Landroid/view/View;)V

    .line 55
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/boohee/myview/NewBadgeView;->setBadgeGravity(I)V

    .line 56
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/boohee/myview/NewBadgeView;->setTextColor(I)V

    .line 57
    const/16 v0, 0xa

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/boohee/myview/NewBadgeView;->setBackground(II)V

    .line 58
    return-void
.end method

.method public static setIconBadge(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "count"

    .prologue
    .line 80
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-static {p0, p1}, Lcom/boohee/utils/BadgeUtils;->setToSamsumg(Landroid/content/Context;I)V

    goto :goto_0

    .line 85
    :cond_2
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {p0, p1}, Lcom/boohee/utils/BadgeUtils;->setToSony(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static setToSamsumg(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "count"

    .prologue
    .line 156
    invoke-static {p0}, Lcom/boohee/utils/BadgeUtils;->getLauncherClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, launcherClassName:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 160
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "badge_count"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string v2, "badge_count_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v2, "badge_count_class_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static setToSony(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "count"

    .prologue
    .line 132
    invoke-static {p0}, Lcom/boohee/utils/BadgeUtils;->getLauncherClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, launcherClassName:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x1

    .line 137
    .local v0, isShow:Z
    if-gtz p1, :cond_1

    .line 138
    const/4 v0, 0x0

    .line 140
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v2, localIntent:Landroid/content/Intent;
    const-string v3, "com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    const-string v3, "com.sonyericsson.home.action.UPDATE_BADGE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v3, "com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v3, "com.sonyericsson.home.intent.extra.badge.MESSAGE"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    const-string v3, "com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static setToXiaoMi(Landroid/content/Context;I)V
    .locals 14
    .parameter "context"
    .parameter "count"

    .prologue
    const v13, 0x18a92

    .line 91
    invoke-static {p0}, Lcom/boohee/utils/BadgeUtils;->getLauncherClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, launcherClassName:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 97
    .local v8, nm:Landroid/app/NotificationManager;
    const/4 v9, 0x0

    .line 98
    .local v9, notification:Landroid/app/Notification;
    const/4 v3, 0x1

    .line 100
    .local v3, isMiUIV6:Z
    :try_start_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    .local v0, builder:Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u60a8\u6709"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u672a\u8bfb\u6d88\u606f"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 102
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u60a8\u6709"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u672a\u8bfb\u6d88\u606f"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 103
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 104
    const v10, 0x7f02030c

    invoke-virtual {v0, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 105
    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 106
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 107
    const-string v10, "android.app.MiuiNotification"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 108
    .local v7, miuiNotificationClass:Ljava/lang/Class;
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 109
    .local v6, miuiNotification:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "messageCount"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 110
    .local v2, field:Ljava/lang/reflect/Field;
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v6, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "extraNotification"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 113
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 114
    invoke-virtual {v2, v9, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    if-eqz v9, :cond_0

    if-eqz v3, :cond_0

    .line 126
    invoke-virtual {v8, v13, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 115
    .end local v0           #builder:Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v6           #miuiNotification:Ljava/lang/Object;
    .end local v7           #miuiNotificationClass:Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 116
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    const/4 v3, 0x0

    .line 119
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v5, localIntent:Landroid/content/Intent;
    const-string v10, "android.intent.extra.update_application_component_name"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v10, "android.intent.extra.update_application_message_text"

    invoke-virtual {v5, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    if-eqz v9, :cond_0

    if-eqz v3, :cond_0

    .line 126
    invoke-virtual {v8, v13, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 124
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #localIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v10

    if-eqz v9, :cond_2

    if-eqz v3, :cond_2

    .line 126
    invoke-virtual {v8, v13, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_2
    throw v10
.end method
