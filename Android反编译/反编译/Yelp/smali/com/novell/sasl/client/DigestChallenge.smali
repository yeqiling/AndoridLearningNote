.class Lcom/novell/sasl/client/DigestChallenge;
.super Ljava/lang/Object;


# static fields
.field private static final CIPHER_3DES:I = 0x1

.field private static final CIPHER_DES:I = 0x2

.field private static final CIPHER_RC4:I = 0x8

.field private static final CIPHER_RC4_40:I = 0x4

.field private static final CIPHER_RC4_56:I = 0x10

.field private static final CIPHER_RECOGNIZED_MASK:I = 0x1f

.field private static final CIPHER_UNRECOGNIZED:I = 0x20

.field public static final QOP_AUTH:I = 0x1

.field public static final QOP_AUTH_CONF:I = 0x4

.field public static final QOP_AUTH_INT:I = 0x2

.field public static final QOP_UNRECOGNIZED:I = 0x8


# instance fields
.field private m_algorithm:Ljava/lang/String;

.field private m_characterSet:Ljava/lang/String;

.field private m_cipherOptions:I

.field private m_maxBuf:I

.field private m_nonce:Ljava/lang/String;

.field private m_qop:I

.field private m_realms:Ljava/util/ArrayList;

.field private m_staleFlag:Z


# direct methods
.method constructor <init>([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_realms:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/novell/sasl/client/DigestChallenge;->m_nonce:Ljava/lang/String;

    iput v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    iput-boolean v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_staleFlag:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_maxBuf:I

    iput-object v3, p0, Lcom/novell/sasl/client/DigestChallenge;->m_characterSet:Ljava/lang/String;

    iput-object v3, p0, Lcom/novell/sasl/client/DigestChallenge;->m_algorithm:Ljava/lang/String;

    iput v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    new-instance v0, Lcom/novell/sasl/client/DirectiveList;

    invoke-direct {v0, p1}, Lcom/novell/sasl/client/DirectiveList;-><init>([B)V

    :try_start_0
    invoke-virtual {v0}, Lcom/novell/sasl/client/DirectiveList;->parseDirectives()V

    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->checkSemantics(Lcom/novell/sasl/client/DirectiveList;)V
    :try_end_0
    .catch Lorg/apache/harmony/javax/security/sasl/SaslException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method checkSemantics(Lcom/novell/sasl/client/DirectiveList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/novell/sasl/client/DirectiveList;->getIterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, -0x1

    iget v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_maxBuf:I

    if-ne v0, v1, :cond_1

    const/high16 v0, 0x1

    iput v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_maxBuf:I

    :cond_1
    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    if-nez v0, :cond_b

    iput v4, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    :cond_2
    return-void

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novell/sasl/client/ParsedDirective;

    invoke-virtual {v0}, Lcom/novell/sasl/client/ParsedDirective;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "realm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleRealm(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    :cond_4
    const-string v3, "nonce"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleNonce(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    :cond_5
    const-string v3, "qop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleQop(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    :cond_6
    const-string v3, "maxbuf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleMaxbuf(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    :cond_7
    const-string v3, "charset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleCharset(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    :cond_8
    const-string v3, "algorithm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleAlgorithm(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    :cond_9
    const-string v3, "cipher"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleCipher(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    :cond_a
    const-string v3, "stale"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleStale(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    :cond_b
    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v4, :cond_c

    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Only qop-auth is supported by client"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    and-int/lit8 v0, v0, 0x1f

    if-nez v0, :cond_d

    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Invalid cipher options"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_nonce:Ljava/lang/String;

    if-nez v0, :cond_e

    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Missing nonce directive"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-boolean v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_staleFlag:Z

    if-eqz v0, :cond_f

    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Unexpected stale flag"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_algorithm:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Missing algorithm directive"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacterSet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_characterSet:Ljava/lang/String;

    return-object v0
.end method

.method public getCipherOptions()I
    .locals 1

    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    return v0
.end method

.method public getMaxBuf()I
    .locals 1

    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_maxBuf:I

    return v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getQop()I
    .locals 1

    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    return v0
.end method

.method public getRealms()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_realms:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStaleFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_staleFlag:Z

    return v0
.end method

.method handleAlgorithm(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_algorithm:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Too many algorithm directives."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_algorithm:Ljava/lang/String;

    const-string v0, "md5-sess"

    iget-object v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid algorithm directive value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_algorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method handleCharset(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_characterSet:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Too many charset directives."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_characterSet:Ljava/lang/String;

    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_characterSet:Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Invalid character encoding directive"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method handleCipher(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Too many cipher directives."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lcom/novell/sasl/client/TokenParser;

    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/novell/sasl/client/TokenParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/novell/sasl/client/TokenParser;->parseToken()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/novell/sasl/client/TokenParser;->parseToken()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    if-nez v0, :cond_1

    const/16 v0, 0x20

    iput v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    :cond_1
    return-void

    :cond_2
    const-string v2, "3des"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    :goto_1
    invoke-virtual {v1}, Lcom/novell/sasl/client/TokenParser;->parseToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v2, "des"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    goto :goto_1

    :cond_4
    const-string v2, "rc4-40"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    goto :goto_1

    :cond_5
    const-string v2, "rc4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    goto :goto_1

    :cond_6
    const-string v2, "rc4-56"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    goto :goto_1
.end method

.method handleMaxbuf(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    const/4 v0, -0x1

    iget v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_maxBuf:I

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Too many maxBuf directives."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_maxBuf:I

    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_maxBuf:I

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Max buf value must be greater than zero."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method handleNonce(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_nonce:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Too many nonce values."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_nonce:Ljava/lang/String;

    return-void
.end method

.method handleQop(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Too many qop directives."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lcom/novell/sasl/client/TokenParser;

    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/novell/sasl/client/TokenParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/novell/sasl/client/TokenParser;->parseToken()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v2, "auth"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    :goto_1
    invoke-virtual {v1}, Lcom/novell/sasl/client/TokenParser;->parseToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "auth-int"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    goto :goto_1

    :cond_3
    const-string v2, "auth-conf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    goto :goto_1
.end method

.method handleRealm(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 2

    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_realms:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method handleStale(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_staleFlag:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Too many stale directives."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "true"

    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_staleFlag:Z

    return-void

    :cond_1
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid stale directive value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
