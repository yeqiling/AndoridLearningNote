.class final Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;
.super Ljava/util/AbstractSet;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/javax/security/auth/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecureSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SST:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TSST;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final SET_Principal:I = 0x0

.field private static final SET_PrivCred:I = 0x1

.field private static final SET_PubCred:I = 0x2

.field private static final serialVersionUID:J = 0x6dcc328017557e27L


# instance fields
.field private elements:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TSST;>;"
        }
    .end annotation
.end field

.field private transient permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

.field private setType:I

.field final synthetic this$0:Lorg/apache/harmony/javax/security/auth/Subject;


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/AuthPermission;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->this$0:Lorg/apache/harmony/javax/security/auth/Subject;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/AuthPermission;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/security/auth/AuthPermission;",
            "Ljava/util/Collection",
            "<+TSST;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;-><init>(Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/AuthPermission;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->verifyElement(Ljava/lang/Object;)V

    if-nez v0, :cond_3

    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic access$0(Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;)Lorg/apache/harmony/javax/security/auth/AuthPermission;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    return-object v0
.end method

.method static synthetic access$1(Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;)Lorg/apache/harmony/javax/security/auth/Subject;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->this$0:Lorg/apache/harmony/javax/security/auth/Subject;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->setType:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {}, Lorg/apache/harmony/javax/security/auth/Subject;->access$2()Lorg/apache/harmony/javax/security/auth/AuthPermission;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :pswitch_1
    invoke-static {}, Lorg/apache/harmony/javax/security/auth/Subject;->access$3()Lorg/apache/harmony/javax/security/auth/AuthPermission;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lorg/apache/harmony/javax/security/auth/Subject;->access$5()Lorg/apache/harmony/javax/security/auth/AuthPermission;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->verifyElement(Ljava/lang/Object;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private verifyElement(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    invoke-static {}, Lorg/apache/harmony/javax/security/auth/Subject;->access$2()Lorg/apache/harmony/javax/security/auth/AuthPermission;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const-class v0, Ljava/security/Principal;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.0B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    invoke-static {}, Lorg/apache/harmony/javax/security/auth/Subject;->access$3()Lorg/apache/harmony/javax/security/auth/AuthPermission;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->setType:I

    :goto_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    invoke-static {}, Lorg/apache/harmony/javax/security/auth/Subject;->access$2()Lorg/apache/harmony/javax/security/auth/AuthPermission;

    move-result-object v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->setType:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->setType:I

    goto :goto_1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSST;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->verifyElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->this$0:Lorg/apache/harmony/javax/security/auth/Subject;

    #calls: Lorg/apache/harmony/javax/security/auth/Subject;->checkState()V
    invoke-static {v0}, Lorg/apache/harmony/javax/security/auth/Subject;->access$0(Lorg/apache/harmony/javax/security/auth/Subject;)V

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    #calls: Lorg/apache/harmony/javax/security/auth/Subject;->checkPermission(Ljava/security/Permission;)V
    invoke-static {v0}, Lorg/apache/harmony/javax/security/auth/Subject;->access$1(Ljava/security/Permission;)V

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final get(Ljava/lang/Class;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$2;-><init>(Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/AbstractSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TSST;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    invoke-static {}, Lorg/apache/harmony/javax/security/auth/Subject;->access$3()Lorg/apache/harmony/javax/security/auth/AuthPermission;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$1;

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$1;-><init>(Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;-><init>(Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
