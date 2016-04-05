.class Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/javax/security/auth/login/LoginContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextedCallbackHandler"
.end annotation


# instance fields
.field private final hiddenHandlerRef:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

.field final synthetic this$0:Lorg/apache/harmony/javax/security/auth/login/LoginContext;


# direct methods
.method constructor <init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;->this$0:Lorg/apache/harmony/javax/security/auth/login/LoginContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;->hiddenHandlerRef:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;)Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;->hiddenHandlerRef:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    return-object v0
.end method


# virtual methods
.method public handle([Lorg/apache/harmony/javax/security/auth/callback/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler$1;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;[Lorg/apache/harmony/javax/security/auth/callback/Callback;)V

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;->this$0:Lorg/apache/harmony/javax/security/auth/login/LoginContext;

    #getter for: Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;
    invoke-static {v1}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->access$0(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)Ljava/security/AccessControlContext;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0
.end method
