.class public Lcom/easemob/exceptions/EMExceptionUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromExceptionToErrorCode(Ljava/lang/Exception;)I
    .locals 4

    const/16 v1, -0x3f1

    const/16 v0, -0x3eb

    const/16 v2, -0x3e7

    instance-of v3, p0, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_1

    const/16 v0, -0x3ea

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v3, p0, Ljava/net/NoRouteToHostException;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/net/ConnectException;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/net/SocketException;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_2

    const/16 v0, -0x3ec

    goto :goto_0

    :cond_2
    instance-of v3, p0, Lcom/easemob/exceptions/EMAuthenticationException;

    if-eqz v3, :cond_3

    const/16 v0, -0x3ed

    goto :goto_0

    :cond_3
    instance-of v3, p0, Ljava/security/KeyStoreException;

    if-eqz v3, :cond_4

    const/16 v0, -0x3ee

    goto :goto_0

    :cond_4
    instance-of v3, p0, Ljava/io/IOException;

    if-eqz v3, :cond_5

    const/16 v0, -0x3ef

    goto :goto_0

    :cond_5
    instance-of v3, p0, Ljava/security/cert/CertificateException;

    if-eqz v3, :cond_6

    const/16 v0, -0x3f0

    goto :goto_0

    :cond_6
    instance-of v3, p0, Ljava/security/NoSuchAlgorithmException;

    if-eqz v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    instance-of v3, p0, Ljava/security/UnrecoverableKeyException;

    if-eqz v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    instance-of v3, p0, Ljava/security/KeyManagementException;

    if-eqz v3, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "User removed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v0, -0x3ff

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "conflict"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, -0x3f6

    goto :goto_0

    :cond_b
    instance-of v1, p0, Lorg/jivesoftware/smack/XMPPException;

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Not connected to server"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_c
    move v0, v2

    goto :goto_0

    :cond_d
    instance-of v1, p0, Lorg/jivesoftware/smack/XMPPException;

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "No response"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_0
.end method
