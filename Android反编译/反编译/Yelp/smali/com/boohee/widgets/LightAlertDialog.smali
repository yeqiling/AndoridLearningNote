.class public Lcom/boohee/widgets/LightAlertDialog;
.super Landroid/app/AlertDialog;
.source "LightAlertDialog.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 29
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/boohee/widgets/LightAlertDialog;
    .locals 3
    .parameter "context"

    .prologue
    .line 39
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 40
    new-instance v0, Lcom/boohee/widgets/LightAlertDialog;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/boohee/widgets/LightAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 45
    .local v0, dialog:Lcom/boohee/widgets/LightAlertDialog;
    :goto_0
    return-object v0

    .line 42
    .end local v0           #dialog:Lcom/boohee/widgets/LightAlertDialog;
    :cond_0
    new-instance v0, Lcom/boohee/widgets/LightAlertDialog;

    invoke-direct {v0, p0}, Lcom/boohee/widgets/LightAlertDialog;-><init>(Landroid/content/Context;)V

    .line 43
    .restart local v0       #dialog:Lcom/boohee/widgets/LightAlertDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/LightAlertDialog;->setInverseBackgroundForced(Z)V

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;I)Lcom/boohee/widgets/LightAlertDialog;
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 86
    invoke-static {p0}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    .line 87
    .local v0, dialog:Lcom/boohee/widgets/LightAlertDialog;
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/LightAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 88
    return-object v0
.end method

.method public static create(Landroid/content/Context;II)Lcom/boohee/widgets/LightAlertDialog;
    .locals 2
    .parameter "context"
    .parameter "title"
    .parameter "resId"

    .prologue
    .line 72
    invoke-static {p0}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    .line 73
    .local v0, dialog:Lcom/boohee/widgets/LightAlertDialog;
    invoke-virtual {v0, p1}, Lcom/boohee/widgets/LightAlertDialog;->setTitle(I)V

    .line 74
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/LightAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 75
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/boohee/widgets/LightAlertDialog;
    .locals 1
    .parameter "context"
    .parameter "message"

    .prologue
    .line 99
    invoke-static {p0}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    .line 100
    .local v0, dialog:Lcom/boohee/widgets/LightAlertDialog;
    invoke-virtual {v0, p1}, Lcom/boohee/widgets/LightAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 101
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/widgets/LightAlertDialog;
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 57
    invoke-static {p0}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    .line 58
    .local v0, dialog:Lcom/boohee/widgets/LightAlertDialog;
    invoke-virtual {v0, p1}, Lcom/boohee/widgets/LightAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v0, p2}, Lcom/boohee/widgets/LightAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 60
    return-object v0
.end method


# virtual methods
.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;
    .locals 1
    .parameter "resId"
    .parameter "listener"

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/boohee/widgets/LightAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButton(Landroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;
    .locals 1
    .parameter "listener"

    .prologue
    .line 167
    const/high16 v0, 0x104

    invoke-virtual {p0, v0, p1}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 178
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/boohee/widgets/LightAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 179
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;
    .locals 2
    .parameter "redId"
    .parameter "listener"

    .prologue
    .line 133
    const/4 v0, -0x3

    invoke-virtual {p0}, Lcom/boohee/widgets/LightAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/boohee/widgets/LightAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 134
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;
    .locals 1
    .parameter "redId"
    .parameter "listener"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/boohee/widgets/LightAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(Landroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;
    .locals 1
    .parameter "listener"

    .prologue
    .line 122
    const v0, 0x104000a

    invoke-virtual {p0, v0, p1}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 145
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/boohee/widgets/LightAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 146
    return-object p0
.end method
