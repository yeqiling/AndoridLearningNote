.class public Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;


# instance fields
.field private pwchars:[C

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->user:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->pwchars:[C

    return-void
.end method

.method private clearPassword()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->pwchars:[C

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->pwchars:[C

    array-length v2, v2

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->pwchars:[C

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->pwchars:[C

    aput-char v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->clearPassword()V

    return-void
.end method

.method public handle([Lorg/apache/harmony/javax/security/auth/callback/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v0, p1, v1

    instance-of v0, v0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    if-eqz v0, :cond_1

    aget-object v0, p1, v1

    check-cast v0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    iget-object v2, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->user:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->setName(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    aget-object v0, p1, v1

    instance-of v0, v0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    if-eqz v0, :cond_2

    aget-object v0, p1, v1

    check-cast v0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    iget-object v2, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->pwchars:[C

    invoke-virtual {v0, v2}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->setPassword([C)V

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;-><init>(Lorg/apache/harmony/javax/security/auth/callback/Callback;)V

    throw v0
.end method
