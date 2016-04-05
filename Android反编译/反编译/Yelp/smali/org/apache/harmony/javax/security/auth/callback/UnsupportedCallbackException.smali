.class public Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = -0x5f63c70ff58df497L


# instance fields
.field private callback:Lorg/apache/harmony/javax/security/auth/callback/Callback;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/javax/security/auth/callback/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;->callback:Lorg/apache/harmony/javax/security/auth/callback/Callback;

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/javax/security/auth/callback/Callback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;->callback:Lorg/apache/harmony/javax/security/auth/callback/Callback;

    return-void
.end method


# virtual methods
.method public getCallback()Lorg/apache/harmony/javax/security/auth/callback/Callback;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;->callback:Lorg/apache/harmony/javax/security/auth/callback/Callback;

    return-object v0
.end method
