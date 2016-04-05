.class public final Lorg/eclipse/mat/util/MessageUtil;
.super Ljava/lang/Object;
.source "MessageUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static varargs format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "message"
    .parameter "objects"

    .prologue
    .line 9
    array-length v0, p1

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    .line 12
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
