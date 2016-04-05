.class public Lcom/boohee/one/easemob/widget/PasteEditText;
.super Landroid/widget/EditText;
.source "PasteEditText.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/boohee/one/easemob/widget/PasteEditText;->context:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object p1, p0, Lcom/boohee/one/easemob/widget/PasteEditText;->context:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput-object p1, p0, Lcom/boohee/one/easemob/widget/PasteEditText;->context:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "lengthBefore"
    .parameter "lengthAfter"

    .prologue
    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EASEMOBIMG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/boohee/one/easemob/widget/PasteEditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 75
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1
    .parameter "id"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    return v0
.end method
