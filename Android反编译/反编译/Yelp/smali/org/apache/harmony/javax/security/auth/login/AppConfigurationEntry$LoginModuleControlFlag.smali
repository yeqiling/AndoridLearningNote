.class public Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginModuleControlFlag"
.end annotation


# static fields
.field public static final OPTIONAL:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

.field public static final REQUIRED:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

.field public static final REQUISITE:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

.field public static final SUFFICIENT:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;


# instance fields
.field private final flag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    const-string v1, "LoginModuleControlFlag: required"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;->REQUIRED:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    const-string v1, "LoginModuleControlFlag: requisite"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;->REQUISITE:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    const-string v1, "LoginModuleControlFlag: optional"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;->OPTIONAL:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    const-string v1, "LoginModuleControlFlag: sufficient"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;->SUFFICIENT:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;->flag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;->flag:Ljava/lang/String;

    return-object v0
.end method
