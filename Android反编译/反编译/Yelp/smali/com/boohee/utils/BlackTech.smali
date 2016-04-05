.class public Lcom/boohee/utils/BlackTech;
.super Ljava/lang/Object;
.source "BlackTech.java"


# static fields
.field public static final API_DEBUG_PREFS:Ljava/lang/String; = "api_debug_prefs"

.field public static final IP_DEBUG_MANUAL:Ljava/lang/String; = "ip_debug_manual_prefs"

.field public static final IP_DIRECT_CONNECT_PREFS:Ljava/lang/String; = "ip_direct_prefs"

.field public static sCurrentTime:J

.field public static sTimes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableApiSwitch(Landroid/support/v7/widget/Toolbar;Landroid/app/Activity;)V
    .locals 1
    .parameter "toolbar"
    .parameter "activity"

    .prologue
    .line 38
    new-instance v0, Lcom/boohee/utils/BlackTech$1;

    invoke-direct {v0, p1}, Lcom/boohee/utils/BlackTech$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public static isApiDebug()Z
    .locals 3

    .prologue
    .line 69
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "api_debug_prefs"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isIPDirectConnect()Z
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "ip_direct_prefs"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isIPManualConnect()Z
    .locals 3

    .prologue
    .line 125
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 126
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "ip_debug_manual_prefs"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static setIPDirectConnect(Z)V
    .locals 3
    .parameter "isDirect"

    .prologue
    .line 115
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 116
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 117
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "ip_direct_prefs"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    return-void
.end method

.method public static switchApiDebug()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 75
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "api_debug_prefs"

    const-string v4, "api_debug_prefs"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    return-void
.end method

.method public static switchIPDebug(Landroid/support/v7/widget/Toolbar;Landroid/app/Activity;)V
    .locals 1
    .parameter "toolbar"
    .parameter "activity"

    .prologue
    .line 85
    new-instance v0, Lcom/boohee/utils/BlackTech$2;

    invoke-direct {v0}, Lcom/boohee/utils/BlackTech$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method public static switchIPManualDirect()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 131
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 132
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "ip_debug_manual_prefs"

    const-string v4, "ip_debug_manual_prefs"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    return-void
.end method
