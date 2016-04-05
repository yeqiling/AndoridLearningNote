.class public Lcom/easemob/chat/NotificationCompat$BigPictureStyle;
.super Lcom/easemob/chat/NotificationCompat$Style;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPictureStyle"
.end annotation


# instance fields
.field mBigLargeIcon:Landroid/graphics/Bitmap;

.field mBigLargeIconSet:Z

.field mPicture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/easemob/chat/NotificationCompat$Style;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/easemob/chat/NotificationCompat$Builder;)V
    .locals 0

    invoke-direct {p0}, Lcom/easemob/chat/NotificationCompat$Style;-><init>()V

    invoke-virtual {p0, p1}, Lcom/easemob/chat/NotificationCompat$BigPictureStyle;->setBuilder(Lcom/easemob/chat/NotificationCompat$Builder;)V

    return-void
.end method


# virtual methods
.method public bigLargeIcon(Landroid/graphics/Bitmap;)Lcom/easemob/chat/NotificationCompat$BigPictureStyle;
    .locals 1

    iput-object p1, p0, Lcom/easemob/chat/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    return-object p0
.end method

.method public bigPicture(Landroid/graphics/Bitmap;)Lcom/easemob/chat/NotificationCompat$BigPictureStyle;
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcom/easemob/chat/NotificationCompat$BigPictureStyle;
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcom/easemob/chat/NotificationCompat$BigPictureStyle;
    .locals 1

    iput-object p1, p0, Lcom/easemob/chat/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    return-object p0
.end method
