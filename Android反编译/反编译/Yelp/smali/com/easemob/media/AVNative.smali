.class public Lcom/easemob/media/AVNative;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/easemob/media/AVNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/easemob/media/AVNative;->TAG:Ljava/lang/String;

    const-string v0, "easemob_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GetAudioInputLevel(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/easemob/media/AVNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VoeEngine setFullDuplexSpeech conferenceId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/easemob/media/AVNative;->nativeVoeClient_GetAudioLevel(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public GetAudioOutputLevel(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/easemob/media/AVNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VoeEngine setFullDuplexSpeech conferenceId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/easemob/media/AVNative;->nativeVoeClient_GetAudioOutputLevel(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public native nativeGetLocalBitrate()I
.end method

.method public native nativeGetRemoteBitrate()I
.end method

.method public native nativeGetVideoFramerate()I
.end method

.method public native nativeGetVideoHeight()I
.end method

.method public native nativeGetVideoLostcnt()I
.end method

.method public native nativeGetVideoTimedelay()I
.end method

.method public native nativeGetVideoWidth()I
.end method

.method public native nativeInit(Lcom/easemob/media/EMVideoCallBridge;)V
.end method

.method public native nativePause()V
.end method

.method public native nativeProcessPcm([BILjava/lang/String;)I
.end method

.method public native nativeProcessYUV(II[B)I
.end method

.method public native nativeQuit()V
.end method

.method public native nativeResume()V
.end method

.method public native nativeStartVideo(Lcom/easemob/media/IGxStatusCallback;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIZ)I
.end method

.method public native nativeStopVideo()V
.end method

.method public native nativeTakePicture(Ljava/lang/String;)I
.end method

.method native nativeVoeClient_FullDuplexSpeech(Ljava/lang/String;)I
.end method

.method native nativeVoeClient_GetAudioLevel(Ljava/lang/String;)I
.end method

.method native nativeVoeClient_GetAudioOutputLevel(Ljava/lang/String;)I
.end method

.method native nativeVoeClient_Register(Lcom/easemob/media/IGxStatusCallback;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)I
.end method

.method native nativeVoeClient_Release(Ljava/lang/String;)I
.end method

.method native nativeVoeClient_StartRecodeMic(Lcom/easemob/media/IGxStatusCallback;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method native nativeVoeClient_Stop(Ljava/lang/String;)I
.end method

.method native nativeVoeClient_StopRecodeMic(Ljava/lang/String;)I
.end method

.method public native onNativeAccel(FFF)V
.end method

.method public native onNativeKeyDown(I)V
.end method

.method public native onNativeKeyUp(I)V
.end method

.method public native onNativeResize(III)V
.end method

.method public native onNativeTouch(IIIFFF)V
.end method

.method public register(Lcom/easemob/media/IGxStatusCallback;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)I
    .locals 14

    sget-object v1, Lcom/easemob/media/AVNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VoeEngine register local_port = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/easemob/media/AVNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PASSWORD"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "register with password:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Lcom/easemob/media/AVNative;->nativeVoeClient_Register(Lcom/easemob/media/IGxStatusCallback;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)I

    move-result v1

    sget-object v2, Lcom/easemob/media/AVNative;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VoeEngine register have registered index:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "conferenceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public setFullDuplexSpeech(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/easemob/media/AVNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VoeEngine setFullDuplexSpeech conferenceId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/easemob/media/AVNative;->nativeVoeClient_FullDuplexSpeech(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public stop(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/easemob/media/AVNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VoeEngine stop conferenceId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/easemob/media/AVNative;->nativeVoeClient_Stop(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public unregister(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/easemob/media/AVNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VoeEngine unregister conferenceId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/easemob/media/AVNative;->nativeVoeClient_Release(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
