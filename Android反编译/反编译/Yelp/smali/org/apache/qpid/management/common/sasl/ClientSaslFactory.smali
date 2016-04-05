.class public Lorg/apache/qpid/management/common/sasl/ClientSaslFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/harmony/javax/security/sasl/SaslClientFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    aget-object v1, p1, v0

    const-string v2, "PLAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;

    invoke-direct {v0, p2, p6}, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;-><init>(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getMechanismNames(Ljava/util/Map;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PLAIN"

    aput-object v2, v0, v1

    return-object v0
.end method
