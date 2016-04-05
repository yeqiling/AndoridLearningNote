.class public Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;
.super Ljava/lang/Object;
.source "JsonObjectUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEventListFromJsonObject(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .parameter "eventArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mechat/mechatlibrary/bean/MCEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v4, mcEventList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCEvent;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v2, v7, :cond_0

    .line 161
    return-object v4

    .line 135
    :cond_0
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 136
    .local v3, jsonObject:Lorg/json/JSONObject;
    const-string v7, "type"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, type:Ljava/lang/String;
    const-string v7, "alloc_us"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 138
    new-instance v0, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;

    invoke-direct {v0}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;-><init>()V

    .line 139
    .local v0, allocationEvent:Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;
    invoke-virtual {v0, v6}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->setType(Ljava/lang/String;)V

    .line 140
    const-string v7, "avatar"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->setAvatarUrl(Ljava/lang/String;)V

    .line 141
    const-string v7, "usid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->setUsid(Ljava/lang/String;)V

    .line 142
    const-string v7, "usname"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->setUsname(Ljava/lang/String;)V

    .line 143
    const-string v7, "createdTime"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->setCreatedTime(Ljava/lang/String;)V

    .line 144
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v0           #allocationEvent:Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v6           #type:Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    .restart local v6       #type:Ljava/lang/String;
    :cond_2
    const-string v7, "redirect"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 146
    new-instance v5, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;

    invoke-direct {v5}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;-><init>()V

    .line 147
    .local v5, redirectEvent:Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;
    invoke-virtual {v5, v6}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setType(Ljava/lang/String;)V

    .line 148
    const-string v7, "avatar"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setAvatarUrl(Ljava/lang/String;)V

    .line 149
    const-string v7, "toavatar"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setRedirectAvatarUrl(Ljava/lang/String;)V

    .line 150
    const-string v7, "createdTime"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setCreatedTime(Ljava/lang/String;)V

    .line 151
    const-string v7, "usid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setUsid(Ljava/lang/String;)V

    .line 152
    const-string v7, "usname"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setUsname(Ljava/lang/String;)V

    .line 153
    const-string v7, "toid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setRedirectUsid(Ljava/lang/String;)V

    .line 154
    const-string v7, "toname"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;->setRedirectUsname(Ljava/lang/String;)V

    .line 155
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 157
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v5           #redirectEvent:Lcom/mechat/mechatlibrary/bean/MCRedirectEvent;
    .end local v6           #type:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 158
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getJsCollection(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 3
    .parameter "list"

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 232
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 234
    .local v1, iter:Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->getJsObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 237
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 241
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    return-object v0

    .line 238
    :cond_1
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->getJsObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static getJsMap(Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
    .parameter "map"

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 211
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 213
    .local v2, iter:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 215
    .local v1, ety:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->getJsValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 216
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->getJsObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 219
    .end local v1           #ety:Ljava/util/Map$Entry;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 226
    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    return-object v0

    .line 220
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 221
    .restart local v1       #ety:Ljava/util/Map$Entry;
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->getJsValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 223
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->getJsObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static getJsObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"

    .prologue
    .line 200
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 201
    check-cast p0, Ljava/util/Map;

    .end local p0
    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->getJsMap(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 205
    .restart local p0
    :goto_0
    return-object v0

    .line 202
    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 203
    check-cast p0, Ljava/util/Collection;

    .end local p0
    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->getJsCollection(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 205
    .restart local p0
    :cond_1
    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->getJsValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static getJsString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "obj"

    .prologue
    .line 246
    if-nez p0, :cond_0

    .line 247
    new-instance p0, Ljava/lang/String;

    .end local p0
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 249
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\\\"

    const-string v2, "\\\\\\\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "\\\\\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJsValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "objValue"

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 254
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->getJsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    return-object v0
.end method

.method public static getMCMessageFromJsonObject(Lorg/json/JSONObject;)Lcom/mechat/mechatlibrary/bean/MCMessage;
    .locals 11
    .parameter "msgObject"

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 59
    const/4 v5, 0x0

    .line 60
    .local v5, type:I
    const-string v10, "type"

    invoke-static {v10, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, typeStr:Ljava/lang/String;
    const-string v10, "image"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 63
    const/4 v5, 0x1

    .line 71
    :cond_0
    :goto_0
    const-string v10, "us"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    move v0, v9

    .line 73
    .local v0, direction:I
    :goto_1
    const-string v10, "unit_welcome"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "us_welcome"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 74
    :cond_1
    const/4 v0, 0x1

    .line 77
    :cond_2
    if-nez v5, :cond_8

    .line 78
    new-instance v4, Lcom/mechat/mechatlibrary/bean/MCTextMessage;

    const-string v9, ""

    invoke-direct {v4, v9}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;-><init>(Ljava/lang/String;)V

    .line 79
    .local v4, textMessage:Lcom/mechat/mechatlibrary/bean/MCTextMessage;
    const-string v9, "content"

    invoke-static {v9, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;->setContent(Ljava/lang/String;)V

    .line 80
    const-string v9, "_id"

    invoke-static {v9, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;->setId(Ljava/lang/String;)V

    .line 81
    const-string v9, "createdTime"

    invoke-static {v9, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;->setCreatedTime(Ljava/lang/String;)V

    .line 82
    const-string v9, "fromName"

    invoke-static {v9, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;->setFromName(Ljava/lang/String;)V

    .line 83
    const-string v9, "status"

    invoke-static {v9, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;->setStatus(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v4, v0}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;->setDirection(I)V

    .line 85
    invoke-virtual {v4, v5}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;->setType(I)V

    .line 87
    const-string v9, "unit_welcome"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "us_welcome"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 88
    :cond_3
    const-string v9, "note"

    invoke-virtual {p0, v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, note:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 90
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/mechat/mechatlibrary/bean/MCTextMessage;->setContent(Ljava/lang/String;)V

    .line 127
    .end local v2           #note:Ljava/lang/String;
    .end local v4           #textMessage:Lcom/mechat/mechatlibrary/bean/MCTextMessage;
    :cond_4
    :goto_2
    return-object v4

    .line 64
    .end local v0           #direction:I
    :cond_5
    const-string v10, "normal"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 65
    const/4 v5, 0x0

    .line 66
    goto/16 :goto_0

    :cond_6
    const-string v10, "voice"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 67
    const/4 v5, 0x2

    goto/16 :goto_0

    .line 71
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 94
    .restart local v0       #direction:I
    :cond_8
    if-ne v5, v9, :cond_a

    .line 95
    new-instance v1, Lcom/mechat/mechatlibrary/bean/MCImageMessage;

    invoke-direct {v1}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;-><init>()V

    .line 96
    .local v1, imageMessage:Lcom/mechat/mechatlibrary/bean/MCImageMessage;
    const-string v9, "content"

    invoke-static {v9, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->setContent(Ljava/lang/String;)V

    .line 97
    const-string v9, "_id"

    invoke-static {v9, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->setId(Ljava/lang/String;)V

    .line 98
    const-string v9, "createdTime"

    invoke-static {v9, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->setCreatedTime(Ljava/lang/String;)V

    .line 99
    const-string v9, "fromName"

    invoke-static {v9, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->setFromName(Ljava/lang/String;)V

    .line 100
    const-string v9, "status"

    invoke-static {v9, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->setStatus(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, v0}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->setDirection(I)V

    .line 102
    invoke-virtual {v1, v5}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->setType(I)V

    .line 104
    const-string v9, "picUrl"

    invoke-static {v9, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, picUrl:Ljava/lang/String;
    if-nez v3, :cond_9

    .line 106
    const-string v9, "path"

    invoke-static {v9, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 108
    :cond_9
    invoke-virtual {v1, v3}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->setPicUrl(Ljava/lang/String;)V

    move-object v4, v1

    .line 109
    goto :goto_2

    .line 110
    .end local v1           #imageMessage:Lcom/mechat/mechatlibrary/bean/MCImageMessage;
    .end local v3           #picUrl:Ljava/lang/String;
    :cond_a
    const/4 v9, 0x2

    if-ne v5, v9, :cond_c

    .line 111
    new-instance v7, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    invoke-direct {v7}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;-><init>()V

    .line 112
    .local v7, voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;
    const-string v9, "content"

    invoke-static {v9, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setContent(Ljava/lang/String;)V

    .line 113
    const-string v9, "_id"

    invoke-static {v9, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setId(Ljava/lang/String;)V

    .line 114
    const-string v9, "createdTime"

    invoke-static {v9, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setCreatedTime(Ljava/lang/String;)V

    .line 115
    const-string v9, "fromName"

    invoke-static {v9, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setFromName(Ljava/lang/String;)V

    .line 116
    const-string v9, "status"

    invoke-static {v9, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setStatus(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v7, v0}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setDirection(I)V

    .line 118
    invoke-virtual {v7, v5}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setType(I)V

    .line 120
    const-string v9, "voiceUrl"

    invoke-static {v9, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, voiceUrl:Ljava/lang/String;
    if-nez v8, :cond_b

    .line 122
    const-string v9, "picUrl"

    invoke-static {v9, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    .line 124
    :cond_b
    invoke-virtual {v7, v8}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setVoiceUrl(Ljava/lang/String;)V

    move-object v4, v7

    .line 125
    goto/16 :goto_2

    .end local v7           #voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;
    .end local v8           #voiceUrl:Ljava/lang/String;
    :cond_c
    move-object v4, v1

    .line 127
    goto/16 :goto_2
.end method

.method public static getMCService(Lorg/json/JSONObject;)Lcom/mechat/mechatlibrary/bean/MCService;
    .locals 3
    .parameter "serviceJsonObj"

    .prologue
    .line 165
    new-instance v0, Lcom/mechat/mechatlibrary/bean/MCService;

    invoke-direct {v0}, Lcom/mechat/mechatlibrary/bean/MCService;-><init>()V

    .line 166
    .local v0, mcService:Lcom/mechat/mechatlibrary/bean/MCService;
    const-string v1, "usname"

    invoke-static {v1, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/bean/MCService;->setUsname(Ljava/lang/String;)V

    .line 167
    const-string v1, "uname"

    invoke-static {v1, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/bean/MCService;->setUname(Ljava/lang/String;)V

    .line 168
    const-string v1, "ulogo"

    invoke-static {v1, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/bean/MCService;->setUlogo(Ljava/lang/String;)V

    .line 169
    const-string v1, "usavatar"

    invoke-static {v1, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/bean/MCService;->setUsavatar(Ljava/lang/String;)V

    .line 170
    const-string v1, " getMCService = "

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/bean/MCService;->getUsavatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v1, "usid"

    invoke-static {v1, p0}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/bean/MCService;->setUsid(Ljava/lang/String;)V

    .line 172
    return-object v0
.end method

.method public static hasKeyAndReturnBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 3
    .parameter "key"
    .parameter "msgObject"

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, value:Z
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 53
    :cond_0
    :goto_0
    return v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static hasKeyAndReturnString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "msgObject"

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 34
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 41
    :cond_0
    :goto_0
    return-object v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static mapToJsonStr(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    :cond_0
    const/4 v3, 0x0

    .line 196
    :goto_0
    return-object v3

    .line 179
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 180
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 182
    .local v2, iter:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 184
    .local v1, ety:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->getJsValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 185
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->getJsObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 188
    .end local v1           #ety:Ljava/util/Map$Entry;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 195
    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 189
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 190
    .restart local v1       #ety:Ljava/util/Map$Entry;
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->getJsValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 192
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->getJsObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
