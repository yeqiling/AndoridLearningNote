.class public Lorg/apache/harmony/javax/security/auth/callback/LanguageCallback;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/harmony/javax/security/auth/callback/Callback;


# static fields
.field private static final serialVersionUID:J = 0x1c051babff1bc5adL


# instance fields
.field private locale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/LanguageCallback;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/LanguageCallback;->locale:Ljava/util/Locale;

    return-void
.end method
