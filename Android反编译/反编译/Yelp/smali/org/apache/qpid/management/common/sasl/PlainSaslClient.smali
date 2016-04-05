.class public Lorg/apache/qpid/management/common/sasl/PlainSaslClient;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/harmony/javax/security/sasl/SaslClient;


# static fields
.field private static SEPARATOR:B


# instance fields
.field private authenticationID:Ljava/lang/String;

.field private authorizationID:Ljava/lang/String;

.field private cbh:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

.field private completed:Z

.field private password:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-byte v0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->SEPARATOR:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    iput-object p2, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->cbh:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    invoke-direct {p0}, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->getUserInfo()[Ljava/lang/Object;

    move-result-object v1

    iput-object p1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authorizationID:Ljava/lang/String;

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authenticationID:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    iget-object v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authenticationID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "PLAIN: authenticationID and password must be specified"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private clearPassword()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    array-length v2, v2

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getUserInfo()[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    :try_start_0
    const-string v0, "PLAIN authentication id: "

    const-string v0, "PLAIN password: "

    new-instance v0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    const-string v1, "PLAIN authentication id: "

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    const-string v2, "PLAIN password: "

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    iget-object v2, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->cbh:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/harmony/javax/security/auth/callback/Callback;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-interface {v2, v3}, Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;->handle([Lorg/apache/harmony/javax/security/auth/callback/Callback;)V

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    const-string v0, "UTF8"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->clearPassword()V

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "Cannot get password"

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "Cannot get userid/password"

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public dispose()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->clearPassword()V

    return-void
.end method

.method public evaluateChallenge([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: authentication already completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    :try_start_0
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authorizationID:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authenticationID:Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    array-length v1, v1

    array-length v4, v3

    add-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x2

    if-eqz v2, :cond_3

    array-length v1, v2

    :goto_1
    add-int/2addr v1, v4

    new-array v1, v1, [B

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v0, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v2

    :cond_1
    add-int/lit8 v2, v0, 0x1

    sget-byte v4, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->SEPARATOR:B

    aput-byte v4, v1, v0

    const/4 v0, 0x0

    array-length v4, v3

    invoke-static {v3, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v3

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    sget-byte v3, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->SEPARATOR:B

    aput-byte v3, v1, v0

    iget-object v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    array-length v4, v4

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->clearPassword()V

    return-object v1

    :cond_2
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authorizationID:Ljava/lang/String;

    const-string v2, "UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "PLAIN: Cannot get UTF-8 encoding of ids"

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->clearPassword()V

    return-void
.end method

.method public getMechanismName()Ljava/lang/String;
    .locals 1

    const-string v0, "PLAIN"

    return-object v0
.end method

.method public getNegotiatedProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    if-eqz v0, :cond_1

    const-string v0, "javax.security.sasl.qop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "auth"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: authentication not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasInitialResponse()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isComplete()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    return v0
.end method

.method public unwrap([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: this mechanism supports neither integrity nor privacy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: authentication not completed"

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

    iget-boolean v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: this mechanism supports neither integrity nor privacy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: authentication not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
