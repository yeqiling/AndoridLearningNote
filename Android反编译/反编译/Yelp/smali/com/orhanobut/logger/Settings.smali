.class public final Lcom/orhanobut/logger/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# instance fields
.field private logLevel:Lcom/orhanobut/logger/LogLevel;

.field private logTool:Lcom/orhanobut/logger/LogTool;

.field private methodCount:I

.field private methodOffset:I

.field private showThreadInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x2

    iput v0, p0, Lcom/orhanobut/logger/Settings;->methodCount:I

    .line 6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/orhanobut/logger/Settings;->showThreadInfo:Z

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/orhanobut/logger/Settings;->methodOffset:I

    .line 13
    sget-object v0, Lcom/orhanobut/logger/LogLevel;->FULL:Lcom/orhanobut/logger/LogLevel;

    iput-object v0, p0, Lcom/orhanobut/logger/Settings;->logLevel:Lcom/orhanobut/logger/LogLevel;

    return-void
.end method


# virtual methods
.method public getLogLevel()Lcom/orhanobut/logger/LogLevel;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/orhanobut/logger/Settings;->logLevel:Lcom/orhanobut/logger/LogLevel;

    return-object v0
.end method

.method public getLogTool()Lcom/orhanobut/logger/LogTool;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/orhanobut/logger/Settings;->logTool:Lcom/orhanobut/logger/LogTool;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/orhanobut/logger/AndroidLogTool;

    invoke-direct {v0}, Lcom/orhanobut/logger/AndroidLogTool;-><init>()V

    iput-object v0, p0, Lcom/orhanobut/logger/Settings;->logTool:Lcom/orhanobut/logger/LogTool;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/orhanobut/logger/Settings;->logTool:Lcom/orhanobut/logger/LogTool;

    return-object v0
.end method

.method public getMethodCount()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/orhanobut/logger/Settings;->methodCount:I

    return v0
.end method

.method public getMethodOffset()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/orhanobut/logger/Settings;->methodOffset:I

    return v0
.end method

.method public hideThreadInfo()Lcom/orhanobut/logger/Settings;
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/orhanobut/logger/Settings;->showThreadInfo:Z

    .line 17
    return-object p0
.end method

.method public isShowThreadInfo()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/orhanobut/logger/Settings;->showThreadInfo:Z

    return v0
.end method

.method public logLevel(Lcom/orhanobut/logger/LogLevel;)Lcom/orhanobut/logger/Settings;
    .locals 0
    .parameter "logLevel"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/orhanobut/logger/Settings;->logLevel:Lcom/orhanobut/logger/LogLevel;

    .line 45
    return-object p0
.end method

.method public logTool(Lcom/orhanobut/logger/LogTool;)Lcom/orhanobut/logger/Settings;
    .locals 0
    .parameter "logTool"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/orhanobut/logger/Settings;->logTool:Lcom/orhanobut/logger/LogTool;

    .line 62
    return-object p0
.end method

.method public methodCount(I)Lcom/orhanobut/logger/Settings;
    .locals 0
    .parameter "methodCount"

    .prologue
    .line 28
    if-gez p1, :cond_0

    .line 29
    const/4 p1, 0x0

    .line 31
    :cond_0
    iput p1, p0, Lcom/orhanobut/logger/Settings;->methodCount:I

    .line 32
    return-object p0
.end method

.method public methodOffset(I)Lcom/orhanobut/logger/Settings;
    .locals 0
    .parameter "offset"

    .prologue
    .line 56
    iput p1, p0, Lcom/orhanobut/logger/Settings;->methodOffset:I

    .line 57
    return-object p0
.end method

.method public setLogLevel(Lcom/orhanobut/logger/LogLevel;)Lcom/orhanobut/logger/Settings;
    .locals 1
    .parameter "logLevel"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/orhanobut/logger/Settings;->logLevel(Lcom/orhanobut/logger/LogLevel;)Lcom/orhanobut/logger/Settings;

    move-result-object v0

    return-object v0
.end method

.method public setMethodCount(I)Lcom/orhanobut/logger/Settings;
    .locals 1
    .parameter "methodCount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/orhanobut/logger/Settings;->methodCount(I)Lcom/orhanobut/logger/Settings;

    move-result-object v0

    return-object v0
.end method

.method public setMethodOffset(I)Lcom/orhanobut/logger/Settings;
    .locals 1
    .parameter "offset"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/orhanobut/logger/Settings;->methodOffset(I)Lcom/orhanobut/logger/Settings;

    move-result-object v0

    return-object v0
.end method
