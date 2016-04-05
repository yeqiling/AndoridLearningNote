.class public Lcom/novell/sasl/client/DigestMD5SaslClient;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/harmony/javax/security/sasl/SaslClient;


# static fields
.field private static final DIGEST_METHOD:Ljava/lang/String; = "AUTHENTICATE"

.field private static final NONCE_BYTE_COUNT:I = 0x20

.field private static final NONCE_HEX_COUNT:I = 0x40

.field private static final STATE_DIGEST_RESPONSE_SENT:I = 0x1

.field private static final STATE_DISPOSED:I = 0x4

.field private static final STATE_INITIAL:I = 0x0

.field private static final STATE_INVALID_SERVER_RESPONSE:I = 0x3

.field private static final STATE_VALID_SERVER_RESPONSE:I = 0x2


# instance fields
.field private m_HA1:[C

.field private m_authorizationId:Ljava/lang/String;

.field private m_cbh:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

.field private m_clientNonce:Ljava/lang/String;

.field private m_dc:Lcom/novell/sasl/client/DigestChallenge;

.field private m_digestURI:Ljava/lang/String;

.field private m_name:Ljava/lang/String;

.field private m_props:Ljava/util/Map;

.field private m_protocol:Ljava/lang/String;

.field private m_qopValue:Ljava/lang/String;

.field private m_realm:Ljava/lang/String;

.field private m_serverName:Ljava/lang/String;

.field private m_state:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_authorizationId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_protocol:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_serverName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_qopValue:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_HA1:[C

    const-string v0, ""

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_clientNonce:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_realm:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_name:Ljava/lang/String;

    iput-object p1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_authorizationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_protocol:Ljava/lang/String;

    iput-object p3, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_serverName:Ljava/lang/String;

    iput-object p4, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_props:Ljava/util/Map;

    iput-object p5, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_cbh:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    return-void
.end method

.method private createDigestResponse([B)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v0, 0x200

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v0, Lcom/novell/sasl/client/DigestChallenge;

    invoke-direct {v0, p1}, Lcom/novell/sasl/client/DigestChallenge;-><init>([B)V

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_protocol:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_serverName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_digestURI:Ljava/lang/String;

    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    invoke-virtual {v0}, Lcom/novell/sasl/client/DigestChallenge;->getQop()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v8, :cond_2

    const-string v0, "auth"

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_qopValue:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v5, v0, [Lorg/apache/harmony/javax/security/auth/callback/Callback;

    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    invoke-virtual {v0}, Lcom/novell/sasl/client/DigestChallenge;->getRealms()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Lorg/apache/harmony/javax/security/sasl/RealmCallback;

    const-string v2, "Realm"

    invoke-direct {v0, v2}, Lorg/apache/harmony/javax/security/sasl/RealmCallback;-><init>(Ljava/lang/String;)V

    aput-object v0, v5, v6

    :goto_0
    new-instance v0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    const-string v2, "Password"

    invoke-direct {v0, v2, v6}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    aput-object v0, v5, v8

    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_authorizationId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_authorizationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    new-instance v0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    const-string v2, "Name"

    invoke-direct {v0, v2}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;-><init>(Ljava/lang/String;)V

    aput-object v0, v5, v7

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_cbh:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    invoke-interface {v0, v5}, Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;->handle([Lorg/apache/harmony/javax/security/auth/callback/Callback;)V
    :try_end_0
    .catch Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-le v1, v8, :cond_7

    aget-object v0, v5, v6

    check-cast v0, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;->getSelectedIndexes()[I

    move-result-object v1

    array-length v0, v1

    if-lez v0, :cond_6

    aget-object v0, v5, v6

    check-cast v0, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;->getChoices()[Ljava/lang/String;

    move-result-object v0

    aget v1, v1, v6

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_realm:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0}, Lcom/novell/sasl/client/DigestMD5SaslClient;->getClientNonce()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_clientNonce:Ljava/lang/String;

    aget-object v0, v5, v7

    check-cast v0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_name:Ljava/lang/String;

    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_name:Ljava/lang/String;

    if-nez v0, :cond_1

    aget-object v0, v5, v7

    check-cast v0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->getDefaultName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_name:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_name:Ljava/lang/String;

    if-nez v0, :cond_8

    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "No user name was specified."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Client only supports qop of \'auth\'"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ne v1, v8, :cond_4

    new-instance v2, Lorg/apache/harmony/javax/security/sasl/RealmCallback;

    const-string v3, "Realm"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lorg/apache/harmony/javax/security/sasl/RealmCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v5, v6

    goto/16 :goto_0

    :cond_4
    new-instance v2, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;

    const-string v3, "Realm"

    new-array v4, v1, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v2, v3, v0, v6, v6}, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;-><init>(Ljava/lang/String;[Ljava/lang/String;IZ)V

    aput-object v2, v5, v6

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    const-string v2, "Name"

    iget-object v3, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_authorizationId:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v5, v7

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "Handler does not support necessary callbacks"

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "IO exception in CallbackHandler."

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    aget-object v0, v5, v6

    check-cast v0, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;->getChoices()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_realm:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    aget-object v0, v5, v6

    check-cast v0, Lorg/apache/harmony/javax/security/sasl/RealmCallback;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/sasl/RealmCallback;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_realm:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    invoke-virtual {v0}, Lcom/novell/sasl/client/DigestChallenge;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_name:Ljava/lang/String;

    iget-object v3, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_realm:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    aget-object v0, v5, v8

    check-cast v0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    invoke-virtual {v0}, Lcom/novell/sasl/client/DigestChallenge;->getNonce()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_clientNonce:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/novell/sasl/client/DigestMD5SaslClient;->DigestCalcHA1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_HA1:[C

    iget-object v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_HA1:[C

    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    invoke-virtual {v0}, Lcom/novell/sasl/client/DigestChallenge;->getNonce()Ljava/lang/String;

    move-result-object v2

    const-string v3, "00000001"

    iget-object v4, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_clientNonce:Ljava/lang/String;

    iget-object v5, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_qopValue:Ljava/lang/String;

    const-string v6, "AUTHENTICATE"

    iget-object v7, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_digestURI:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/novell/sasl/client/DigestMD5SaslClient;->DigestCalcResponse([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[C

    move-result-object v0

    const-string v1, "username=\""

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_authorizationId:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_realm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "\",realm=\""

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_realm:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    const-string v1, "\",cnonce=\""

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_clientNonce:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\",nc="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "00000001"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ",qop="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_qopValue:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ",digest-uri=\""

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_digestURI:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\",response="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v0, ",charset=utf-8,nonce=\""

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    invoke-virtual {v0}, Lcom/novell/sasl/client/DigestChallenge;->getNonce()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\""

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;
    .locals 6

    const/4 v2, 0x0

    const-string v0, "javax.security.sasl.qop"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "javax.security.sasl.strength"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v1, "javax.security.sasl.server.authentication"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v3, "auth"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/novell/sasl/client/DigestMD5SaslClient;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/novell/sasl/client/DigestMD5SaslClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V

    goto :goto_0
.end method

.method private static getHexChar(B)C
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x5a

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x30

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x31

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x32

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x33

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x34

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x35

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x36

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x37

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x38

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x39

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x61

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x62

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x63

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x64

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x65

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x66

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method DigestCalcHA1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    const-string v0, ":"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    const-string v0, ":"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    const-string v0, "UTF-8"

    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v2, "md5-sess"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    const-string v0, ":"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    const-string v0, "UTF-8"

    invoke-virtual {p5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    const-string v0, ":"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    const-string v0, "UTF-8"

    invoke-virtual {p6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestMD5SaslClient;->convertToHex([B)[C

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "No provider found for MD5 hash"

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "UTF-8 encoding not supported by platform."

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method DigestCalcResponse([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-eqz p8, :cond_0

    const-string v1, "UTF-8"

    invoke-virtual {p6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    :cond_0
    const-string v1, ":"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const-string v1, "UTF-8"

    invoke-virtual {p7, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const-string v1, "auth-int"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ":"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const-string v1, "00000000000000000000000000000000"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    :cond_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/novell/sasl/client/DigestMD5SaslClient;->convertToHex([B)[C

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    const-string v2, ":"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    const-string v2, ":"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "UTF-8"

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    const-string v2, ":"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    const-string v2, "UTF-8"

    invoke-virtual {p4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    const-string v2, ":"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    const-string v2, "UTF-8"

    invoke-virtual {p5, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    const-string v2, ":"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    const-string v1, "UTF-8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestMD5SaslClient;->convertToHex([B)[C

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "No provider found for MD5 hash"

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "UTF-8 encoding not supported by platform."

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method checkServerResponseAuth([B)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    new-instance v9, Lcom/novell/sasl/client/ResponseAuth;

    invoke-direct {v9, p1}, Lcom/novell/sasl/client/ResponseAuth;-><init>([B)V

    iget-object v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_HA1:[C

    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    invoke-virtual {v0}, Lcom/novell/sasl/client/DigestChallenge;->getNonce()Ljava/lang/String;

    move-result-object v2

    const-string v3, "00000001"

    iget-object v4, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_clientNonce:Ljava/lang/String;

    iget-object v5, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_qopValue:Ljava/lang/String;

    const-string v6, "AUTHENTICATE"

    iget-object v7, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_digestURI:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/novell/sasl/client/DigestMD5SaslClient;->DigestCalcResponse([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[C

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v9}, Lcom/novell/sasl/client/ResponseAuth;->getResponseValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method convertToHex([B)[C
    .locals 4

    const/16 v0, 0x20

    new-array v1, v0, [C

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    mul-int/lit8 v2, v0, 0x2

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    invoke-static {v3}, Lcom/novell/sasl/client/DigestMD5SaslClient;->getHexChar(B)C

    move-result v3

    aput-char v3, v1, v2

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Lcom/novell/sasl/client/DigestMD5SaslClient;->getHexChar(B)C

    move-result v3

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public dispose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    const/4 v1, 0x4

    iget v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    :cond_0
    return-void
.end method

.method public evaluateChallenge([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Unknown client state."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    array-length v0, p1

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "response = byte[0]"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/novell/sasl/client/DigestMD5SaslClient;->createDigestResponse([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    iput v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "UTF-8 encoding not suppported by platform"

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/novell/sasl/client/DigestMD5SaslClient;->checkServerResponseAuth([B)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iput v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Could not validate response-auth value from server"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Authentication sequence is complete"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Client has been disposed"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getClientNonce()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    const/16 v5, 0x20

    new-array v1, v5, [B

    const/16 v0, 0x40

    new-array v2, v0, [C

    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v5, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    mul-int/lit8 v3, v0, 0x2

    aget-byte v4, v1, v0

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    invoke-static {v4}, Lcom/novell/sasl/client/DigestMD5SaslClient;->getHexChar(B)C

    move-result v4

    aput-char v4, v2, v3

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    invoke-static {v4}, Lcom/novell/sasl/client/DigestMD5SaslClient;->getHexChar(B)C

    move-result v4

    aput-char v4, v2, v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "No random number generator available"

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMechanismName()Ljava/lang/String;
    .locals 1

    const-string v0, "DIGEST-MD5"

    return-object v0
.end method

.method public getNegotiatedProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getNegotiatedProperty: authentication exchange not complete."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "javax.security.sasl.qop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "auth"

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInitialResponse()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isComplete()Z
    .locals 2

    iget v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unwrap([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unwrap: QOP has neither integrity nor privacy>"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wrap([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "wrap: QOP has neither integrity nor privacy>"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
