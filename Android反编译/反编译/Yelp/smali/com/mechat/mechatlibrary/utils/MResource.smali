.class public Lcom/mechat/mechatlibrary/utils/MResource;
.super Ljava/lang/Object;
.source "MResource.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllocationUsString(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 197
    const-string v0, "string"

    const-string v1, "mc_allocate_us"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCopySucString(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 161
    const-string v0, "string"

    const-string v1, "mc_copy_success"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDialogCameraString(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 165
    const-string v0, "string"

    const-string v1, "mc_dialog_camera"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDialogPhotoString(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 169
    const-string v0, "string"

    const-string v1, "mc_dialog_photo"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDialogTitleString(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 173
    const-string v0, "string"

    const-string v1, "mc_dialog_title"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "className"
    .parameter "resName"

    .prologue
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 9
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 10
    .local v0, indentify:I
    return v0
.end method

.method public static getInputtingTitleString(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 185
    const-string v0, "string"

    const-string v1, "mc_title_inputting"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getItemChatContentPicId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    const-string v0, "id"

    const-string v1, "content_pic"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getItemChatContentPicRlId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    const-string v0, "id"

    const-string v1, "content_pic_rl"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getItemChatContentTextId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    const-string v0, "id"

    const-string v1, "content_text"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getItemChatContentVoiceId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 38
    const-string v0, "id"

    const-string v1, "content_voice"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getItemChatDetailLeftId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 18
    const-string v0, "layout"

    const-string v1, "mc_item_chatdetail_left"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getItemChatDetailRightId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 22
    const-string v0, "layout"

    const-string v1, "mc_item_chatdetail_right"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getItemChatEventAvatar1Id(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 67
    const-string v0, "id"

    const-string v1, "avatar1"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getItemChatEventAvatar1NameId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 75
    const-string v0, "id"

    const-string v1, "avatar1_name"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getItemChatEventAvatar2Id(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 71
    const-string v0, "id"

    const-string v1, "avatar2"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getItemChatEventAvatar2NameId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 79
    const-string v0, "id"

    const-string v1, "avatar2_name"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getItemChatEventAvatarId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    const-string v0, "id"

    const-string v1, "avatar"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getItemChatEventLayoutId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    const-string v0, "layout"

    const-string v1, "mc_item_chatdetail_event"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getItemChatEventTextId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 59
    const-string v0, "id"

    const-string v1, "text"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getItemChatJoinEventId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 63
    const-string v0, "id"

    const-string v1, "event_join"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getItemChatRedirectEventId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 83
    const-string v0, "id"

    const-string v1, "event_redirect"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getItemChatTimeId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    const-string v0, "id"

    const-string v1, "timeTv"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getItemChatTimeLayoutId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    const-string v0, "layout"

    const-string v1, "mc_item_chatdetail_time"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getJoinChatString(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 189
    const-string v0, "string"

    const-string v1, "mc_join_chat"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLeaveMsgTipColorRed(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 217
    const-string v0, "color"

    const-string v1, "mc_net_not_work_bg"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLeaveMsgTipColorYellow(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 213
    const-string v0, "color"

    const-string v1, "mc_leave_msg_tip_bg"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLeaveMsgTipString(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 209
    const-string v0, "string"

    const-string v1, "mc_leave_msg_tip"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLeaveMsgTipViewId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 201
    const-string v0, "id"

    const-string v1, "leave_msg_tip"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLeaveMsgTitleString(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 181
    const-string v0, "string"

    const-string v1, "mc_title_leave_msg"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMessageSoundId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 143
    const-string v0, "raw"

    const-string v1, "mc_message"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getNoNetTitleString(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 157
    const-string v0, "string"

    const-string v1, "mc_title_no_net"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getNoNetToastString(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 177
    const-string v0, "string"

    const-string v1, "mc_no_net_toast"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPhotoNotSupportToastString(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 205
    const-string v0, "string"

    const-string v1, "mc_photo_not_support"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getProgressBarId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 117
    const-string v0, "id"

    const-string v1, "progress_bar"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getRedirectToString(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 193
    const-string v0, "string"

    const-string v1, "mc_redirect_to"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSendArriveId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 125
    const-string v0, "drawable"

    const-string v1, "mc_send"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSendFailedId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 129
    const-string v0, "drawable"

    const-string v1, "mc_fail"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSendStateId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 121
    const-string v0, "id"

    const-string v1, "send_state"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSendString(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 153
    const-string v0, "string"

    const-string v1, "mc_send"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSmileyItemId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 134
    const-string v0, "layout"

    const-string v1, "mc_item_smiley"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSmileyItemImageViewId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 138
    const-string v0, "id"

    const-string v1, "smiley_iv"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTitleChatTitleId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 96
    const-string v0, "id"

    const-string v1, "chat_title"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTitleLeaveTitleId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 108
    const-string v0, "id"

    const-string v1, "leave_title"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTitleLeaveTitleTvId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 112
    const-string v0, "id"

    const-string v1, "leave_title_tv"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTitleUnameId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 100
    const-string v0, "id"

    const-string v1, "uname_tv"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTitleUsnameId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 104
    const-string v0, "id"

    const-string v1, "usname_tv"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getVoiceBg(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 148
    const-string v0, "drawable"

    const-string v1, "mc_voice_background"

    invoke-static {p0, v0, v1}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
