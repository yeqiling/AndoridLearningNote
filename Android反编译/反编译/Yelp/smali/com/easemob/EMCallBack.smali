.class public interface abstract Lcom/easemob/EMCallBack;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_EXCEPTION:I = -0x1

.field public static final ERROR_EXCEPTION_CONNECT_TIMER_OUT:I = -0x3ec

.field public static final ERROR_EXCEPTION_DNS_ERROR:I = -0x3ea

.field public static final ERROR_EXCEPTION_ENCRYPTION_ERROR:I = -0x3f1

.field public static final ERROR_EXCEPTION_FILE_NOT_FOUND:I = -0x3f4

.field public static final ERROR_EXCEPTION_INVALID_CERTIFICATE:I = -0x3f0

.field public static final ERROR_EXCEPTION_INVALID_FILE:I = -0x3f3

.field public static final ERROR_EXCEPTION_INVALID_KEYSTORE:I = -0x3ee

.field public static final ERROR_EXCEPTION_INVALID_PASSWORD_USERNAME:I = -0x3ed

.field public static final ERROR_EXCEPTION_IO_EXCEPTION:I = -0x3ef

.field public static final ERROR_EXCEPTION_LOGOFFINPROGRESS_ERROR:I = -0x3f2

.field public static final ERROR_EXCEPTION_NONETWORK_ERROR:I = -0x3e9

.field public static final ERROR_EXCEPTION_NO_ERROR:I = 0x0

.field public static final ERROR_EXCEPTION_UNABLE_CONNECT_TO_SERVER:I = -0x3eb

.field public static final ERROR_EXCEPTION_UNKNOWN_SERVER_ERROR:I = -0x3e8

.field public static final ERROR_FILE_NOT_FOUND:I = -0x3

.field public static final ERROR_SEND:I = -0x2

.field public static final data:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/EMCallBack;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onProgress(ILjava/lang/String;)V
.end method

.method public abstract onSuccess()V
.end method
