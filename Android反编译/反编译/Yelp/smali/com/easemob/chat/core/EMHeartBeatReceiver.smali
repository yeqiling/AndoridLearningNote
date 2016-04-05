.class public Lcom/easemob/chat/core/EMHeartBeatReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final TAG:Ljava/lang/String; = "ping"


# direct methods
.method public constructor <init>(Lcom/easemob/chat/core/EMConnectionManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1}, Lcom/easemob/chat/StartServiceReceiver;->scheduleNextAlarm(Landroid/content/Context;)V

    return-void
.end method
