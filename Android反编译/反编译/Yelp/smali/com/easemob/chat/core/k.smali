.class public Lcom/easemob/chat/core/k;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# static fields
.field public static final a:Ljava/lang/String; = "encrypt"

.field public static final b:Ljava/lang/String; = "jabber:client"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    const-string v0, "encrypt"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    const-string v0, "jabber:client"

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 1

    const-string v0, "<encrypt/>"

    return-object v0
.end method
