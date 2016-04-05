.class public Lcom/boohee/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field protected static final ACTION_LOGIN:Ljava/lang/String; = "com.baidu.pushdemo.action.LOGIN"

.field public static final ACTION_MESSAGE:Ljava/lang/String; = "com.baiud.pushdemo.action.MESSAGE"

.field public static final ACTION_RESPONSE:Ljava/lang/String; = "bccsclient.action.RESPONSE"

.field public static final ACTION_SHOW_MESSAGE:Ljava/lang/String; = "bccsclient.action.SHOW_MESSAGE"

.field protected static final EXTRA_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field public static final RESPONSE_CONTENT:Ljava/lang/String; = "content"

.field public static final RESPONSE_ERRCODE:Ljava/lang/String; = "errcode"

.field public static final RESPONSE_METHOD:Ljava/lang/String; = "method"

.field public static final TAG:Ljava/lang/String; = "PushDemoActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calBmi(FF)F
    .locals 6
    .parameter "height"
    .parameter "weight"

    .prologue
    .line 92
    const/high16 v2, 0x42c8

    div-float v0, p0, v2

    .line 93
    .local v0, h:F
    mul-float v2, v0, v0

    div-float v1, p1, v2

    .line 94
    .local v1, ret:F
    const/high16 v2, 0x4120

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024

    div-double/2addr v2, v4

    double-to-float v2, v2

    return v2
.end method

.method public static getMetaValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "metaKey"

    .prologue
    .line 31
    const/4 v2, 0x0

    .line 32
    .local v2, metaData:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 33
    .local v1, apiKey:Ljava/lang/String;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 34
    :cond_0
    const/4 v3, 0x0

    .line 48
    :goto_0
    return-object v3

    .line 37
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 39
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 40
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 42
    :cond_2
    if-eqz v2, :cond_3

    .line 43
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :cond_3
    :goto_1
    move-object v3, v1

    .line 48
    goto :goto_0

    .line 45
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static hasBind(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 53
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 54
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "bind_flag"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, flag:Ljava/lang/String;
    const-string v2, "ok"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const/4 v2, 0x1

    .line 58
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasVersionTag(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 74
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 75
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "version_tag"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, flag:Ljava/lang/String;
    invoke-static {}, Lcom/boohee/utility/Config;->getVersionName()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, currentVersion:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    const/4 v3, 0x1

    .line 80
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static setBind(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "flag"

    .prologue
    .line 62
    const-string v1, "not"

    .line 63
    .local v1, flagStr:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 64
    const-string v1, "ok"

    .line 66
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 67
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "bind_flag"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    return-void
.end method

.method public static setVersionTag(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 84
    invoke-static {}, Lcom/boohee/utility/Config;->getVersionName()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, currentVersion:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 86
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 87
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "version_tag"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    return-void
.end method
