.class public Lcom/boohee/utils/KeyBoardUtils;
.super Ljava/lang/Object;
.source "KeyBoardUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeAll(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 49
    if-nez p0, :cond_1

    .line 60
    .end local p0
    .local v0, e:Ljava/lang/Exception;
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return-void

    .line 51
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local p0
    :cond_1
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 54
    .restart local v1       #imm:Landroid/view/inputmethod/InputMethodManager;
    :try_start_0
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 55
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeKeybord(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 3
    .parameter "context"
    .parameter "editText"

    .prologue
    .line 39
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 41
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 42
    return-void
.end method

.method public static openKeybord(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 3
    .parameter "context"
    .parameter "editText"

    .prologue
    const/4 v2, 0x2

    .line 25
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 27
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 28
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 30
    return-void
.end method
