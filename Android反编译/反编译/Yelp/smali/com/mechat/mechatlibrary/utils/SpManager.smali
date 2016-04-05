.class public Lcom/mechat/mechatlibrary/utils/SpManager;
.super Ljava/lang/Object;
.source "SpManager.java"


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->sp:Landroid/content/SharedPreferences;

    .line 15
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    .line 16
    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mechat_appkey"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mechat_cookie"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHasUploadDeviceInfo()Z
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mechat_upload_device_info"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInnerName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mechat_innerName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageLoadLength()I
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mechat_page_load_length"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getShowEvent()Z
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mechat_show_event"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShowVoiceMessage()Z
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mechat_show_voicemessage"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUnitIdByInnerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "innerName"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mechat_unitid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrspMsg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mechat_urspmsg"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrspTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mechat_ursptime"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisitIp()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mechat_visitip"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHasVisit(Ljava/lang/String;)Z
    .locals 2
    .parameter "cookie"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 2
    .parameter "appkey"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mechat_appkey"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 21
    return-void
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 2
    .parameter "cookie"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mechat_cookie"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    return-void
.end method

.method public setHasUploadDeviceInfo(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mechat_upload_device_info"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 132
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    return-void
.end method

.method public setHasVisit(Ljava/lang/String;Z)V
    .locals 1
    .parameter "cookie"
    .parameter "value"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 78
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    return-void
.end method

.method public setInnerName(Ljava/lang/String;)V
    .locals 2
    .parameter "innerName"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mechat_innerName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    return-void
.end method

.method public setPageLoadLength(I)V
    .locals 2
    .parameter "length"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mechat_page_load_length"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 96
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    return-void
.end method

.method public setShowEvent(Z)V
    .locals 2
    .parameter "showEvent"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mechat_show_event"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 87
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    return-void
.end method

.method public setShowVoiceMessage(Z)V
    .locals 2
    .parameter "showVoiceMessage"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mechat_show_voicemessage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    return-void
.end method

.method public setUnitiIdByInnerName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "innerName"
    .parameter "unitid"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    return-void
.end method

.method public setUnitid(Ljava/lang/String;)V
    .locals 2
    .parameter "unitid"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mechat_unitid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    return-void
.end method

.method public setUrspMsg(Ljava/lang/String;)V
    .locals 2
    .parameter "urspmsg"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mechat_urspmsg"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    return-void
.end method

.method public setUrspTime(Ljava/lang/String;)V
    .locals 2
    .parameter "ursptime"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mechat_ursptime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    return-void
.end method

.method public setVisitIp(Ljava/lang/String;)V
    .locals 2
    .parameter "visitIp"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mechat_visitip"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/SpManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    return-void
.end method
