.class Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ChatMsgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/mechatlibrary/adapter/ChatMsgAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field contentImage:Landroid/widget/ImageView;

.field contentImageRl:Landroid/view/View;

.field contentText:Landroid/widget/TextView;

.field contentVoice:Landroid/widget/TextView;

.field playProgressbar:Lcom/mechat/mechatlibrary/custom/RoundProgressBar;

.field sendState:Landroid/widget/ImageView;

.field sendingProgressBar:Landroid/widget/ProgressBar;

.field voiceImage:Landroid/widget/ImageView;

.field voiceRl:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
