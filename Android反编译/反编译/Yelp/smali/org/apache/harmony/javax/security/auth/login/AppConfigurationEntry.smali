.class public Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;
    }
.end annotation


# instance fields
.field private final controlFlag:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

.field private final loginModuleName:Ljava/lang/String;

.field private final options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.26"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.27"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.1A"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;->loginModuleName:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;->controlFlag:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;->options:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getControlFlag()Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;->controlFlag:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    return-object v0
.end method

.method public getLoginModuleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;->loginModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;->options:Ljava/util/Map;

    return-object v0
.end method
