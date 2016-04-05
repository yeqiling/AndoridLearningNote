.class public Lcom/easemob/exceptions/EaseMobException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected errorCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/easemob/exceptions/EaseMobException;->errorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/easemob/exceptions/EaseMobException;->errorCode:I

    iput p1, p0, Lcom/easemob/exceptions/EaseMobException;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/easemob/exceptions/EaseMobException;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/easemob/exceptions/EaseMobException;->errorCode:I

    invoke-super {p0, p2}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/easemob/exceptions/EaseMobException;->errorCode:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/easemob/exceptions/EaseMobException;->errorCode:I

    return-void
.end method
