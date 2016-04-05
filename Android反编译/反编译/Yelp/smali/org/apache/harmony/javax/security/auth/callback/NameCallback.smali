.class public Lorg/apache/harmony/javax/security/auth/callback/NameCallback;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/harmony/javax/security/auth/callback/Callback;


# static fields
.field private static final serialVersionUID:J = 0x345510db07eb277dL


# instance fields
.field private defaultName:Ljava/lang/String;

.field private inputName:Ljava/lang/String;

.field private prompt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->setPrompt(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->setPrompt(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->setDefaultName(Ljava/lang/String;)V

    return-void
.end method

.method private setDefaultName(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.1E"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->defaultName:Ljava/lang/String;

    return-void
.end method

.method private setPrompt(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.14"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->prompt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefaultName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->inputName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->inputName:Ljava/lang/String;

    return-void
.end method
