.class public Lorg/apache/harmony/javax/security/sasl/SaslException;
.super Ljava/io/IOException;


# static fields
.field private static final serialVersionUID:J = 0x3f8ea98b912ad08aL


# instance fields
.field private _exception:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-super {p0, p2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iput-object p2, p0, Lorg/apache/harmony/javax/security/sasl/SaslException;->_exception:Ljava/lang/Throwable;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/javax/security/sasl/SaslException;->_exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-super {p0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iput-object p1, p0, Lorg/apache/harmony/javax/security/sasl/SaslException;->_exception:Ljava/lang/Throwable;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/javax/security/sasl/SaslException;->_exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", caused by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/javax/security/sasl/SaslException;->_exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
