.class public Lcom/boohee/widgets/EmojiEditText;
.super Landroid/widget/EditText;
.source "EmojiEditText.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private emojiGetter:Landroid/text/Html$ImageGetter;

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/boohee/widgets/EmojiEditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/widgets/EmojiEditText;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Lcom/boohee/widgets/EmojiEditText$1;

    invoke-direct {v0, p0}, Lcom/boohee/widgets/EmojiEditText$1;-><init>(Lcom/boohee/widgets/EmojiEditText;)V

    iput-object v0, p0, Lcom/boohee/widgets/EmojiEditText;->emojiGetter:Landroid/text/Html$ImageGetter;

    .line 36
    iput-object p1, p0, Lcom/boohee/widgets/EmojiEditText;->context:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Lcom/boohee/widgets/EmojiEditText$1;

    invoke-direct {v0, p0}, Lcom/boohee/widgets/EmojiEditText$1;-><init>(Lcom/boohee/widgets/EmojiEditText;)V

    iput-object v0, p0, Lcom/boohee/widgets/EmojiEditText;->emojiGetter:Landroid/text/Html$ImageGetter;

    .line 31
    iput-object p1, p0, Lcom/boohee/widgets/EmojiEditText;->context:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v0, Lcom/boohee/widgets/EmojiEditText$1;

    invoke-direct {v0, p0}, Lcom/boohee/widgets/EmojiEditText$1;-><init>(Lcom/boohee/widgets/EmojiEditText;)V

    iput-object v0, p0, Lcom/boohee/widgets/EmojiEditText;->emojiGetter:Landroid/text/Html$ImageGetter;

    .line 26
    iput-object p1, p0, Lcom/boohee/widgets/EmojiEditText;->context:Landroid/content/Context;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/widgets/EmojiEditText;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/boohee/widgets/EmojiEditText;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/boohee/widgets/EmojiEditText;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setEmojiText(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/boohee/widgets/EmojiEditText;->text:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/boohee/utils/EmojiUtils;->convetToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    iget-object v1, p0, Lcom/boohee/widgets/EmojiEditText;->emojiGetter:Landroid/text/Html$ImageGetter;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    .line 43
    .local v0, spanned:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/boohee/widgets/EmojiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method
