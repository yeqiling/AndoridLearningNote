.class public Lcom/boohee/utils/FastJsonUtils;
.super Ljava/lang/Object;
.source "FastJsonUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "jsonStr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 54
    :goto_0
    return-object v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter "object"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 22
    if-eqz p0, :cond_0

    .line 24
    :try_start_0
    instance-of v2, p0, Lorg/json/JSONObject;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .end local p0
    :goto_0
    invoke-static {v2, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 30
    :cond_0
    :goto_1
    return-object v1

    .line 24
    .restart local p0
    :cond_1
    check-cast p0, Lorg/json/JSONObject;

    .end local p0
    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static fromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter "object"
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .parameter "jsonStr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "object"

    .prologue
    .line 65
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 68
    :goto_0
    return-object v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
