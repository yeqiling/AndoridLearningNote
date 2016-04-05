.class Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecureIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TSST;>;"
    }
.end annotation


# instance fields
.field protected iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TSST;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TSST;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;->this$1:Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSST;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;->this$1:Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;

    #getter for: Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->this$0:Lorg/apache/harmony/javax/security/auth/Subject;
    invoke-static {v0}, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->access$1(Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;)Lorg/apache/harmony/javax/security/auth/Subject;

    move-result-object v0

    #calls: Lorg/apache/harmony/javax/security/auth/Subject;->checkState()V
    invoke-static {v0}, Lorg/apache/harmony/javax/security/auth/Subject;->access$0(Lorg/apache/harmony/javax/security/auth/Subject;)V

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;->this$1:Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;

    #getter for: Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;
    invoke-static {v0}, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->access$0(Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;)Lorg/apache/harmony/javax/security/auth/AuthPermission;

    move-result-object v0

    #calls: Lorg/apache/harmony/javax/security/auth/Subject;->checkPermission(Ljava/security/Permission;)V
    invoke-static {v0}, Lorg/apache/harmony/javax/security/auth/Subject;->access$1(Ljava/security/Permission;)V

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
