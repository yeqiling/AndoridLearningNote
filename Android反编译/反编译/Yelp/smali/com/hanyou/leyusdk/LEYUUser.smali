.class public Lcom/hanyou/leyusdk/LEYUUser;
.super Ljava/lang/Object;
.source "LEYUUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hanyou/leyusdk/LEYUUser$Member;
    }
.end annotation


# static fields
.field public static final RELATION_ACTION_ADD:I = 0x1

.field public static final RELATION_ACTION_DELETE:I = 0x0

.field public static final RELATION_TYPE_BOTH:I = 0x1

.field public static final RELATION_TYPE_FANS_HIM:I = 0x2

.field public static final RELATION_TYPE_FANS_ME:I = 0x4

.field public static final RELATION_TYPE_NULL:I = 0x3

.field private static host:Ljava/lang/String;


# instance fields
.field private access_token:Ljava/lang/String;

.field private mem_headpic:Ljava/lang/String;

.field private mem_name:Ljava/lang/String;

.field private mem_sex:I

.field private mem_username:Ljava/lang/String;

.field private members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hanyou/leyusdk/LEYUUser$Member;",
            ">;"
        }
    .end annotation
.end field

.field private uid:I

.field private userType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "http://m.miao.cn"

    sput-object v0, Lcom/hanyou/leyusdk/LEYUUser;->host:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v1, p0, Lcom/hanyou/leyusdk/LEYUUser;->uid:I

    .line 88
    const-string v0, "\u6e38\u5ba2"

    iput-object v0, p0, Lcom/hanyou/leyusdk/LEYUUser;->mem_name:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/hanyou/leyusdk/LEYUUser;->mem_username:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/hanyou/leyusdk/LEYUUser;->access_token:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/hanyou/leyusdk/LEYUUser;->mem_headpic:Ljava/lang/String;

    .line 92
    iput v1, p0, Lcom/hanyou/leyusdk/LEYUUser;->mem_sex:I

    .line 93
    iput v1, p0, Lcom/hanyou/leyusdk/LEYUUser;->userType:I

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hanyou/leyusdk/LEYUUser;->members:Ljava/util/List;

    .line 95
    return-void
.end method

.method public static fromJSONString(Ljava/lang/String;)Lcom/hanyou/leyusdk/LEYUUser;
    .locals 10
    .parameter "jsonString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 155
    new-instance v6, Lcom/hanyou/leyusdk/LEYUUser;

    invoke-direct {v6}, Lcom/hanyou/leyusdk/LEYUUser;-><init>()V

    .line 156
    .local v6, user:Lcom/hanyou/leyusdk/LEYUUser;
    new-instance v7, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 157
    .local v3, jsonObject:Lorg/json/JSONObject;
    const-string v7, "memArray"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 158
    .local v2, jsonArray:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v1, v7, :cond_1

    .line 172
    const-string v7, "access_token"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/hanyou/leyusdk/LEYUUser;->setaccess_token(Ljava/lang/String;)V

    .line 173
    const-string v7, "uheadpic"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, headPic:Ljava/lang/String;
    sget-object v7, Lcom/hanyou/leyusdk/LEYUUser;->host:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 175
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/hanyou/leyusdk/LEYUUser;->host:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    :cond_0
    invoke-virtual {v6, v0}, Lcom/hanyou/leyusdk/LEYUUser;->setmem_headpic(Ljava/lang/String;)V

    .line 178
    const-string v7, "uname"

    const-string v8, "\u6e38\u5ba2"

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/hanyou/leyusdk/LEYUUser;->setmem_name(Ljava/lang/String;)V

    .line 179
    const-string v7, "usex"

    invoke-virtual {v3, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/hanyou/leyusdk/LEYUUser;->setmem_sex(I)V

    .line 180
    const-string v7, "username"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/hanyou/leyusdk/LEYUUser;->setmem_username(Ljava/lang/String;)V

    .line 181
    const-string v7, "uid"

    invoke-virtual {v3, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/hanyou/leyusdk/LEYUUser;->setUid(I)V

    .line 182
    const-string v7, "utype"

    invoke-virtual {v3, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/hanyou/leyusdk/LEYUUser;->setUserType(I)V

    .line 183
    return-object v6

    .line 159
    .end local v0           #headPic:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 160
    .local v4, memJson:Lorg/json/JSONObject;
    new-instance v5, Lcom/hanyou/leyusdk/LEYUUser$Member;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v6}, Lcom/hanyou/leyusdk/LEYUUser$Member;-><init>(Lcom/hanyou/leyusdk/LEYUUser;)V

    .line 161
    .local v5, member:Lcom/hanyou/leyusdk/LEYUUser$Member;
    const-string v7, "fs_mem_headpic"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .restart local v0       #headPic:Ljava/lang/String;
    sget-object v7, Lcom/hanyou/leyusdk/LEYUUser;->host:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 163
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/hanyou/leyusdk/LEYUUser;->host:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_2
    invoke-virtual {v5, v0}, Lcom/hanyou/leyusdk/LEYUUser$Member;->setMemHeadPic(Ljava/lang/String;)V

    .line 166
    const-string v7, "fs_mem_id"

    invoke-virtual {v4, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/hanyou/leyusdk/LEYUUser$Member;->setMemId(I)V

    .line 167
    const-string v7, "fs_mem_mobile"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/hanyou/leyusdk/LEYUUser$Member;->setMemMobile(Ljava/lang/String;)V

    .line 168
    const-string v7, "fs_name"

    const-string v8, "\u6e38\u5ba2"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/hanyou/leyusdk/LEYUUser$Member;->setMemName(Ljava/lang/String;)V

    .line 169
    const-string v7, "fs_mem_userid"

    invoke-virtual {v4, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/hanyou/leyusdk/LEYUUser$Member;->setMemUid(I)V

    .line 170
    iget-object v7, v6, Lcom/hanyou/leyusdk/LEYUUser;->members:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public getUid()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/hanyou/leyusdk/LEYUUser;->uid:I

    return v0
.end method

.method public getUserType()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/hanyou/leyusdk/LEYUUser;->userType:I

    return v0
.end method

.method public getaccess_token()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/hanyou/leyusdk/LEYUUser;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public getmem_headpic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/hanyou/leyusdk/LEYUUser;->mem_headpic:Ljava/lang/String;

    return-object v0
.end method

.method public getmem_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/hanyou/leyusdk/LEYUUser;->mem_name:Ljava/lang/String;

    return-object v0
.end method

.method public getmem_sex()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/hanyou/leyusdk/LEYUUser;->mem_sex:I

    return v0
.end method

.method public getmem_username()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/hanyou/leyusdk/LEYUUser;->mem_username:Ljava/lang/String;

    return-object v0
.end method

.method public setUid(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 102
    iput p1, p0, Lcom/hanyou/leyusdk/LEYUUser;->uid:I

    .line 103
    return-void
.end method

.method public setUserType(I)V
    .locals 0
    .parameter "userType"

    .prologue
    .line 150
    iput p1, p0, Lcom/hanyou/leyusdk/LEYUUser;->userType:I

    .line 151
    return-void
.end method

.method public setaccess_token(Ljava/lang/String;)V
    .locals 0
    .parameter "access_token"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/hanyou/leyusdk/LEYUUser;->access_token:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setmem_headpic(Ljava/lang/String;)V
    .locals 0
    .parameter "mem_headpic"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/hanyou/leyusdk/LEYUUser;->mem_headpic:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setmem_name(Ljava/lang/String;)V
    .locals 0
    .parameter "mem_name"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/hanyou/leyusdk/LEYUUser;->mem_name:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setmem_sex(I)V
    .locals 0
    .parameter "mem_sex"

    .prologue
    .line 134
    iput p1, p0, Lcom/hanyou/leyusdk/LEYUUser;->mem_sex:I

    .line 135
    return-void
.end method

.method public setmem_username(Ljava/lang/String;)V
    .locals 0
    .parameter "mem_username"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/hanyou/leyusdk/LEYUUser;->mem_username:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 187
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 189
    .local v0, jsonArray:Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/hanyou/leyusdk/LEYUUser;->members:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 199
    const-string v5, "memArray"

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v5, "uid"

    iget v6, p0, Lcom/hanyou/leyusdk/LEYUUser;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v5, "uname"

    iget-object v6, p0, Lcom/hanyou/leyusdk/LEYUUser;->mem_name:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v5, "access_token"

    iget-object v6, p0, Lcom/hanyou/leyusdk/LEYUUser;->access_token:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v5, "username"

    iget-object v6, p0, Lcom/hanyou/leyusdk/LEYUUser;->mem_username:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v5, "uheadpic"

    iget-object v6, p0, Lcom/hanyou/leyusdk/LEYUUser;->mem_headpic:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v5, "usex"

    iget v6, p0, Lcom/hanyou/leyusdk/LEYUUser;->mem_sex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v5, "utype"

    iget v6, p0, Lcom/hanyou/leyusdk/LEYUUser;->userType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 208
    .local v1, jsonObject:Lorg/json/JSONObject;
    instance-of v5, v1, Lorg/json/JSONObject;

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v1           #jsonObject:Lorg/json/JSONObject;
    :goto_1
    return-object v5

    .line 189
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hanyou/leyusdk/LEYUUser$Member;

    .line 190
    .local v4, member:Lcom/hanyou/leyusdk/LEYUUser$Member;
    const-string v6, "fs_mem_id"

    invoke-virtual {v4}, Lcom/hanyou/leyusdk/LEYUUser$Member;->getMemId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v6, "fs_mem_userid"

    invoke-virtual {v4}, Lcom/hanyou/leyusdk/LEYUUser$Member;->getMemUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v6, "fs_name"

    invoke-virtual {v4}, Lcom/hanyou/leyusdk/LEYUUser$Member;->getMemName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v6, "fs_mem_mobile"

    invoke-virtual {v4}, Lcom/hanyou/leyusdk/LEYUUser$Member;->getMemMobile()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v6, "fs_mem_headpic"

    invoke-virtual {v4}, Lcom/hanyou/leyusdk/LEYUUser$Member;->getMemHeadPic()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 196
    .local v3, memJson:Lorg/json/JSONObject;
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 197
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto/16 :goto_0

    .line 208
    .end local v3           #memJson:Lorg/json/JSONObject;
    .end local v4           #member:Lcom/hanyou/leyusdk/LEYUUser$Member;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    :cond_1
    check-cast v1, Lorg/json/JSONObject;

    .end local v1           #jsonObject:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method
