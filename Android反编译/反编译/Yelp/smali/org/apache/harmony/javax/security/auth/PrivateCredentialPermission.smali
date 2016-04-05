.class public final Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;
.super Ljava/security/Permission;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;
    }
.end annotation


# static fields
.field private static final READ:Ljava/lang/String; = "read"

.field private static final serialVersionUID:J = 0x4955dc777b507f4cL


# instance fields
.field private credentialClass:Ljava/lang/String;

.field private transient offset:I

.field private transient set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    const-string v0, "read"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->initTargetName(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.11"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->credentialClass:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Principal;

    new-instance v3, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    iget v4, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    if-lt v0, v4, :cond_2

    move v0, v1

    :goto_2
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    iget v4, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    aput-object v3, v0, v4

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private initTargetName(Ljava/lang/String;)V
    .locals 12

    const/4 v4, 0x1

    const/16 v11, 0x22

    const/4 v7, -0x1

    const/16 v10, 0x20

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "auth.0E"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.0F"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v7, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.10"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->credentialClass:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    move v5, v1

    :goto_0
    if-lt v0, v3, :cond_3

    if-ge v5, v4, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.10"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v6, v10, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v6, v11, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v0, v7, :cond_4

    if-eq v2, v7, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v11, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.10"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v2

    goto :goto_0

    :cond_6
    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v2, v5, [Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    iput-object v2, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    move v2, v1

    :goto_1
    if-lt v2, v5, :cond_7

    return-void

    :cond_7
    invoke-virtual {v6, v10, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {v6, v11, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    invoke-virtual {v6, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    invoke-direct {v8, v0, v3}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_2
    iget v3, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    if-lt v0, v3, :cond_9

    move v0, v1

    :goto_3
    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    iget v3, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    add-int/lit8 v9, v3, 0x1

    iput v9, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    aput-object v8, v0, v3

    :cond_8
    add-int/lit8 v3, v7, 0x2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    aget-object v3, v3, v0

    invoke-virtual {v3, v8}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v0, v4

    goto :goto_3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->initTargetName(Ljava/lang/String;)V

    return-void
.end method

.method private sameMembers([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_1
    if-ge v3, p3, :cond_0

    move v2, v1

    :goto_2
    if-lt v2, p3, :cond_4

    move v2, v1

    :goto_3
    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_4
    aget-object v4, p1, v3

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v0

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;

    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->credentialClass:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->credentialClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    iget v3, p1, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    iget-object v3, p1, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    iget v4, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->sameMembers([Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getActions()Ljava/lang/String;
    .locals 1

    const-string v0, "read"

    return-object v0
.end method

.method public getCredentialClass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->credentialClass:Ljava/lang/String;

    return-object v0
.end method

.method public getPrincipals()[[Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    iget v0, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    move v1, v2

    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    return-object v0

    :cond_0
    aget-object v3, v0, v1

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->principalClass:Ljava/lang/String;

    aput-object v4, v3, v2

    aget-object v3, v0, v1

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->principalName:Ljava/lang/String;

    aput-object v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->getCredentialClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;

    const-string v2, "*"

    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->credentialClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->credentialClass:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->getCredentialClass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget v2, p1, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    iget-object v5, p1, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    iget v6, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    iget v7, p1, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    move v3, v0

    :goto_1
    if-lt v3, v6, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v0

    :goto_2
    if-lt v2, v7, :cond_6

    :cond_5
    array-length v8, v5

    if-eq v2, v8, :cond_0

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_6
    aget-object v8, v4, v3

    aget-object v9, v5, v2

    invoke-virtual {v8, v9}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->implies(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
