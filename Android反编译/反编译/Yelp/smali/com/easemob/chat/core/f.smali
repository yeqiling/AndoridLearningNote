.class public Lcom/easemob/chat/core/f;
.super Lorg/jivesoftware/smack/packet/DefaultPacketExtension;


# static fields
.field public static final a:Ljava/lang/String; = "ConferencePacketExtension"

.field public static final b:Ljava/lang/String; = "urn:xmpp:media-conference"

.field public static final c:Ljava/lang/String; = "channelId"

.field public static final d:Ljava/lang/String; = "server-port"

.field public static final e:Ljava/lang/String; = "serverIp"

.field public static final f:Ljava/lang/String; = "cspeaker"

.field public static final g:Ljava/lang/String; = "rcode"

.field public static final h:Ljava/lang/String; = "result"

.field public static final i:Ljava/lang/String; = "action"

.field public static final j:Ljava/lang/String; = "username"

.field public static final k:Ljava/lang/String; = "vchannelId"

.field public static final l:Ljava/lang/String; = "conferenceId"

.field public static final m:Ljava/lang/String; = "serverPort"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "ConferencePacketExtension"

    const-string v1, "urn:xmpp:media-conference"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "urn:xmpp:media-conference"

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "username"

    invoke-virtual {p0, v0}, Lcom/easemob/chat/core/f;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "username"

    invoke-virtual {p0, v0, p1}, Lcom/easemob/chat/core/f;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "vchannelId"

    invoke-virtual {p0, v0}, Lcom/easemob/chat/core/f;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "vchannelId"

    invoke-virtual {p0, v0, p1}, Lcom/easemob/chat/core/f;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "conferenceId"

    invoke-virtual {p0, v0}, Lcom/easemob/chat/core/f;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "conferenceId"

    invoke-virtual {p0, v0, p1}, Lcom/easemob/chat/core/f;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "serverIp"

    invoke-virtual {p0, v0}, Lcom/easemob/chat/core/f;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "serverIp"

    invoke-virtual {p0, v0, p1}, Lcom/easemob/chat/core/f;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "rcode"

    invoke-virtual {p0, v0}, Lcom/easemob/chat/core/f;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "rcode"

    invoke-virtual {p0, v0, p1}, Lcom/easemob/chat/core/f;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "serverPort"

    invoke-virtual {p0, v0}, Lcom/easemob/chat/core/f;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "serverPort"

    invoke-virtual {p0, v0, p1}, Lcom/easemob/chat/core/f;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "channelId"

    invoke-virtual {p0, v0}, Lcom/easemob/chat/core/f;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "channelId"

    invoke-virtual {p0, v0, p1}, Lcom/easemob/chat/core/f;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "action"

    invoke-virtual {p0, v0}, Lcom/easemob/chat/core/f;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "action"

    invoke-virtual {p0, v0, p1}, Lcom/easemob/chat/core/f;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "result"

    invoke-virtual {p0, v0}, Lcom/easemob/chat/core/f;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "result"

    invoke-virtual {p0, v0, p1}, Lcom/easemob/chat/core/f;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
