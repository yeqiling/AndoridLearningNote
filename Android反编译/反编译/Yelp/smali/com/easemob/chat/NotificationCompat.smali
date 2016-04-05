.class public Lcom/easemob/chat/NotificationCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/chat/NotificationCompat$Action;,
        Lcom/easemob/chat/NotificationCompat$BigPictureStyle;,
        Lcom/easemob/chat/NotificationCompat$BigTextStyle;,
        Lcom/easemob/chat/NotificationCompat$Builder;,
        Lcom/easemob/chat/NotificationCompat$InboxStyle;,
        Lcom/easemob/chat/NotificationCompat$NotificationCompatImpl;,
        Lcom/easemob/chat/NotificationCompat$NotificationCompatImplBase;,
        Lcom/easemob/chat/NotificationCompat$NotificationCompatImplGingerbread;,
        Lcom/easemob/chat/NotificationCompat$NotificationCompatImplHoneycomb;,
        Lcom/easemob/chat/NotificationCompat$NotificationCompatImplIceCreamSandwich;,
        Lcom/easemob/chat/NotificationCompat$NotificationCompatImplJellybean;,
        Lcom/easemob/chat/NotificationCompat$Style;
    }
.end annotation


# static fields
.field public static final FLAG_HIGH_PRIORITY:I = 0x80

.field private static final IMPL:Lcom/easemob/chat/NotificationCompat$NotificationCompatImpl; = null

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/easemob/chat/NotificationCompat$NotificationCompatImplJellybean;

    invoke-direct {v0}, Lcom/easemob/chat/NotificationCompat$NotificationCompatImplJellybean;-><init>()V

    sput-object v0, Lcom/easemob/chat/NotificationCompat;->IMPL:Lcom/easemob/chat/NotificationCompat$NotificationCompatImpl;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/easemob/chat/NotificationCompat$NotificationCompatImplIceCreamSandwich;

    invoke-direct {v0}, Lcom/easemob/chat/NotificationCompat$NotificationCompatImplIceCreamSandwich;-><init>()V

    sput-object v0, Lcom/easemob/chat/NotificationCompat;->IMPL:Lcom/easemob/chat/NotificationCompat$NotificationCompatImpl;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    new-instance v0, Lcom/easemob/chat/NotificationCompat$NotificationCompatImplHoneycomb;

    invoke-direct {v0}, Lcom/easemob/chat/NotificationCompat$NotificationCompatImplHoneycomb;-><init>()V

    sput-object v0, Lcom/easemob/chat/NotificationCompat;->IMPL:Lcom/easemob/chat/NotificationCompat$NotificationCompatImpl;

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_3

    new-instance v0, Lcom/easemob/chat/NotificationCompat$NotificationCompatImplGingerbread;

    invoke-direct {v0}, Lcom/easemob/chat/NotificationCompat$NotificationCompatImplGingerbread;-><init>()V

    sput-object v0, Lcom/easemob/chat/NotificationCompat;->IMPL:Lcom/easemob/chat/NotificationCompat$NotificationCompatImpl;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/easemob/chat/NotificationCompat$NotificationCompatImplBase;

    invoke-direct {v0}, Lcom/easemob/chat/NotificationCompat$NotificationCompatImplBase;-><init>()V

    sput-object v0, Lcom/easemob/chat/NotificationCompat;->IMPL:Lcom/easemob/chat/NotificationCompat$NotificationCompatImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/easemob/chat/NotificationCompat$NotificationCompatImpl;
    .locals 1

    sget-object v0, Lcom/easemob/chat/NotificationCompat;->IMPL:Lcom/easemob/chat/NotificationCompat$NotificationCompatImpl;

    return-object v0
.end method
