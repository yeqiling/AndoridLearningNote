.class public Lcom/easemob/exceptions/EMServiceNotReadyException;
.super Lcom/easemob/exceptions/EaseMobException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/easemob/exceptions/EaseMobException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    invoke-super {p0, p2}, Lcom/easemob/exceptions/EaseMobException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
