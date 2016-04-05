.class public Lcom/boohee/utils/URLDecoderUtils;
.super Ljava/lang/Object;
.source "URLDecoderUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static replaceAndDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "data"

    .prologue
    .line 17
    :try_start_0
    const-string v1, "%(?![0-9a-fA-F]{2})"

    const-string v2, "%25"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 18
    const-string v1, "\\+"

    const-string v2, "%2B"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 19
    const-string v1, "utf-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 23
    :goto_0
    return-object p0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
