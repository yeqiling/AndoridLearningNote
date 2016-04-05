.class public Lcom/xiaomi/account/openauth/utils/Network;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/account/openauth/utils/Network$DoneHandlerInputStream;,
        Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;
    }
.end annotation


# static fields
.field public static final CMWAP_GATEWAY:Ljava/lang/String; = "10.0.0.172"

.field public static final CMWAP_HEADER_HOST_KEY:Ljava/lang/String; = "X-Online-Host"

.field public static final CONNECTION_TIMEOUT:I = 0x2710

.field private static final LogTag:Ljava/lang/String; = "com.xiaomi.common.Network"

.field public static final READ_TIMEOUT:I = 0x3a98

.field public static final USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static ignoreCertificationTrustManger:Ljavax/net/ssl/TrustManager;

.field private static ignoreHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/xiaomi/account/openauth/utils/Network$1;

    invoke-direct {v0}, Lcom/xiaomi/account/openauth/utils/Network$1;-><init>()V

    sput-object v0, Lcom/xiaomi/account/openauth/utils/Network;->ignoreHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 61
    new-instance v0, Lcom/xiaomi/account/openauth/utils/Network$2;

    invoke-direct {v0}, Lcom/xiaomi/account/openauth/utils/Network$2;-><init>()V

    sput-object v0, Lcom/xiaomi/account/openauth/utils/Network;->ignoreCertificationTrustManger:Ljavax/net/ssl/TrustManager;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadXml(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 184
    const/4 v2, 0x0

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/account/openauth/utils/Network;->downloadXml(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static downloadXml(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "url"
    .parameter "userAgent"
    .parameter "cookie"
    .parameter
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    .local p4, requestHdrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 229
    .local v4, responseStream:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 231
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/xiaomi/account/openauth/utils/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;)Ljava/io/InputStream;

    move-result-object v4

    .line 233
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x400

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 234
    .local v6, sbReponse:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    .line 235
    const-string v8, "UTF-8"

    invoke-direct {v7, v4, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v8, 0x400

    .line 234
    invoke-direct {v3, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 239
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 244
    if-eqz v4, :cond_0

    .line 246
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 251
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 253
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 260
    :cond_1
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, responseXml:Ljava/lang/String;
    return-object v5

    .line 240
    .end local v5           #responseXml:Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 243
    .end local v1           #line:Ljava/lang/String;
    :catchall_0
    move-exception v7

    move-object v2, v3

    .line 244
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v6           #sbReponse:Ljava/lang/StringBuilder;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :goto_3
    if-eqz v4, :cond_3

    .line 246
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 251
    :cond_3
    :goto_4
    if-eqz v2, :cond_4

    .line 253
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 258
    :cond_4
    :goto_5
    throw v7

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Ljava/io/IOException;
    const-string v8, "com.xiaomi.common.Network"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to close responseStream"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 254
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 255
    .restart local v0       #e:Ljava/io/IOException;
    const-string v8, "com.xiaomi.common.Network"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to close reader"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 247
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v6       #sbReponse:Ljava/lang/StringBuilder;
    :catch_2
    move-exception v0

    .line 248
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "com.xiaomi.common.Network"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to close responseStream"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 254
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 255
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "com.xiaomi.common.Network"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to close reader"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 243
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v6           #sbReponse:Ljava/lang/StringBuilder;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    goto :goto_3
.end method

.method private static downloadXml(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "url"
    .parameter "noEncryptUrl"
    .parameter "userAgent"
    .parameter "encoding"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v5, 0x0

    .line 191
    .local v5, responseStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 193
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_0
    move-object/from16 v0, p5

    invoke-static {p0, p1, p3, v0}, Lcom/xiaomi/account/openauth/utils/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x400

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 195
    .local v7, sbReponse:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    .line 196
    move-object/from16 v0, p4

    invoke-direct {v8, v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v9, 0x400

    .line 195
    invoke-direct {v4, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 198
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 200
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 205
    if-eqz v5, :cond_0

    .line 207
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 212
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 214
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 221
    :cond_1
    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, responseXml:Ljava/lang/String;
    return-object v6

    .line 201
    .end local v6           #responseXml:Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 204
    .end local v2           #line:Ljava/lang/String;
    :catchall_0
    move-exception v8

    move-object v3, v4

    .line 205
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v7           #sbReponse:Ljava/lang/StringBuilder;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :goto_3
    if-eqz v5, :cond_3

    .line 207
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 212
    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    .line 214
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 219
    :cond_4
    :goto_5
    throw v8

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, e:Ljava/io/IOException;
    const-string v9, "com.xiaomi.common.Network"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failed to close responseStream"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 215
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 216
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "com.xiaomi.common.Network"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failed to close reader"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 208
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v7       #sbReponse:Ljava/lang/StringBuilder;
    :catch_2
    move-exception v1

    .line 209
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "com.xiaomi.common.Network"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to close responseStream"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 215
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 216
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "com.xiaomi.common.Network"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to close reader"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 204
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #line:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v7           #sbReponse:Ljava/lang/StringBuilder;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    goto :goto_3
.end method

.method private static downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "userAgent"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 91
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/account/openauth/utils/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;)Ljava/io/InputStream;
    .locals 15
    .parameter "context"
    .parameter "url"
    .parameter "userAgent"
    .parameter "cookie"
    .parameter
    .parameter "responseHdrs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    .local p4, requestHdrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 113
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "context"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 114
    :cond_0
    if-nez p1, :cond_1

    .line 115
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "url"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 117
    :cond_1
    move-object/from16 v7, p1

    .line 119
    .local v7, newUrl:Ljava/net/URL;
    const/4 v8, 0x0

    .line 121
    .local v8, responseStream:Ljava/io/InputStream;
    sget-object v13, Lcom/xiaomi/account/openauth/utils/Network;->ignoreHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v13}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 123
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 124
    invoke-static {p0, v7}, Lcom/xiaomi/account/openauth/utils/Network;->getHttpUrlConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 125
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/16 v13, 0x2710

    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 126
    const/16 v13, 0x3a98

    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 128
    const/4 v13, 0x1

    new-array v11, v13, [Ljavax/net/ssl/TrustManager;

    const/4 v13, 0x0

    .line 129
    sget-object v14, Lcom/xiaomi/account/openauth/utils/Network;->ignoreCertificationTrustManger:Ljavax/net/ssl/TrustManager;

    aput-object v14, v11, v13

    .line 131
    .local v11, tm:[Ljavax/net/ssl/TrustManager;
    const/4 v10, 0x0

    .line 133
    .local v10, sslContext:Ljavax/net/ssl/SSLContext;
    :try_start_0
    const-string v13, "SSL"

    invoke-static {v13}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v10

    .line 134
    const/4 v13, 0x0

    new-instance v14, Ljava/security/SecureRandom;

    invoke-direct {v14}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v10, v13, v11, v14}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    :goto_0
    invoke-virtual {v10}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v9

    .local v9, ssf:Ljavax/net/ssl/SSLSocketFactory;
    move-object v13, v1

    .line 142
    check-cast v13, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v13, v9}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 144
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 145
    const-string v13, "User-Agent"

    move-object/from16 v0, p2

    invoke-virtual {v1, v13, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_2
    if-eqz p3, :cond_3

    .line 148
    const-string v13, "Cookie"

    move-object/from16 v0, p3

    invoke-virtual {v1, v13, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_3
    if-eqz p4, :cond_4

    .line 151
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_8

    .line 156
    :cond_4
    if-eqz p5, :cond_7

    .line 157
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v13

    const-string v14, "http"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v13

    const-string v14, "https"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 158
    :cond_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    move-object/from16 v0, p5

    iput v13, v0, Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;->ResponseCode:I

    .line 159
    move-object/from16 v0, p5

    iget-object v13, v0, Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    if-nez v13, :cond_6

    .line 160
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p5

    iput-object v13, v0, Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    .line 161
    :cond_6
    const/4 v3, 0x0

    .line 162
    .local v3, i:I
    :goto_2
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, name:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v12

    .line 165
    .local v12, value:Ljava/lang/String;
    if-nez v6, :cond_9

    if-nez v12, :cond_9

    .line 173
    .end local v3           #i:I
    .end local v6           #name:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    .line 175
    .local v4, inputStream:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 179
    :goto_3
    new-instance v8, Lcom/xiaomi/account/openauth/utils/Network$DoneHandlerInputStream;

    .end local v8           #responseStream:Ljava/io/InputStream;
    invoke-direct {v8, v4}, Lcom/xiaomi/account/openauth/utils/Network$DoneHandlerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 180
    .restart local v8       #responseStream:Ljava/io/InputStream;
    return-object v8

    .line 135
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v9           #ssf:Ljavax/net/ssl/SSLSocketFactory;
    :catch_0
    move-exception v2

    .line 136
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 137
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 138
    .local v2, e:Ljava/security/KeyManagementException;
    invoke-virtual {v2}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto/16 :goto_0

    .line 151
    .end local v2           #e:Ljava/security/KeyManagementException;
    .restart local v9       #ssf:Ljavax/net/ssl/SSLSocketFactory;
    :cond_8
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 152
    .local v5, key:Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v5, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 167
    .end local v5           #key:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v6       #name:Ljava/lang/String;
    .restart local v12       #value:Ljava/lang/String;
    :cond_9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 161
    :cond_a
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 169
    :cond_b
    move-object/from16 v0, p5

    iget-object v13, v0, Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    invoke-interface {v13, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 176
    .end local v3           #i:I
    .end local v6           #name:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    :catch_2
    move-exception v2

    .line 177
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    goto :goto_3
.end method

.method private static getCMWapUrl(Ljava/net/URL;)Ljava/lang/String;
    .locals 3
    .parameter "oriUrl"

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .local v0, gatewayBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "10.0.0.172"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 360
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getHttpUrlConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 9
    .parameter "context"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-static {p0}, Lcom/xiaomi/account/openauth/utils/Network;->isCtwap(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 342
    new-instance v4, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v6, Ljava/net/InetSocketAddress;

    .line 343
    const-string v7, "10.0.0.200"

    const/16 v8, 0x50

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 342
    invoke-direct {v4, v5, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 344
    .local v4, proxy:Ljava/net/Proxy;
    invoke-virtual {p1, v4}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v5

    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnectionWithProxy(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 354
    .end local v4           #proxy:Ljava/net/Proxy;
    :goto_0
    return-object v5

    .line 346
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/account/openauth/utils/Network;->isCmwap(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 347
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, host:Ljava/lang/String;
    invoke-static {p1}, Lcom/xiaomi/account/openauth/utils/Network;->getCMWapUrl(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, cmwapUrl:Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 350
    .local v2, gatewayUrl:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 351
    .local v1, conn:Ljava/net/HttpURLConnection;
    const-string v5, "X-Online-Host"

    invoke-virtual {v1, v5, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v1

    .line 352
    goto :goto_0

    .line 354
    .end local v0           #cmwapUrl:Ljava/lang/String;
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v2           #gatewayUrl:Ljava/net/URL;
    .end local v3           #host:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    goto :goto_0
.end method

.method private static isCmwap(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 284
    .line 285
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 284
    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 286
    .local v9, tm:Landroid/telephony/TelephonyManager;
    if-nez v9, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v4

    .line 289
    :cond_1
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v7

    .line 290
    .local v7, countryISO:Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 293
    check-cast v6, Landroid/net/ConnectivityManager;

    .line 295
    .local v6, cm:Landroid/net/ConnectivityManager;
    if-eqz v6, :cond_0

    .line 298
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    .line 299
    .local v8, info:Landroid/net/NetworkInfo;
    if-eqz v8, :cond_0

    .line 302
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, extraInfo:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_0

    .line 306
    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    const-string v3, "wap"

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    goto :goto_0
.end method

.method private static isCtwap(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 314
    .line 315
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 314
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 316
    .local v4, tm:Landroid/telephony/TelephonyManager;
    if-nez v4, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v5

    .line 319
    :cond_1
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, countryISO:Ljava/lang/String;
    const-string v6, "CN"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 324
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 323
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 325
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 329
    .local v3, info:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 332
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, extraInfo:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_0

    .line 336
    const-string v5, "ctwap"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_0
.end method
