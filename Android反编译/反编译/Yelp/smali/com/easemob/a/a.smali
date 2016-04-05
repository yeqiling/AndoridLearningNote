.class public Lcom/easemob/a/a;
.super Ljava/lang/Object;


# static fields
.field private static k:Lcom/easemob/a/a;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljavax/microedition/khronos/egl/EGLContext;

.field private e:Ljavax/microedition/khronos/egl/EGLSurface;

.field private f:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private g:Ljavax/microedition/khronos/egl/EGLConfig;

.field private h:I

.field private i:Landroid/view/SurfaceView;

.field private j:Lcom/easemob/media/AVNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/a/a;->k:Lcom/easemob/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x140

    iput v0, p0, Lcom/easemob/a/a;->a:I

    const/16 v0, 0xf0

    iput v0, p0, Lcom/easemob/a/a;->b:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/easemob/a/a;->c:I

    new-instance v0, Lcom/easemob/media/AVNative;

    invoke-direct {v0}, Lcom/easemob/media/AVNative;-><init>()V

    iput-object v0, p0, Lcom/easemob/a/a;->j:Lcom/easemob/media/AVNative;

    return-void
.end method

.method public static a()Lcom/easemob/a/a;
    .locals 1

    sget-object v0, Lcom/easemob/a/a;->k:Lcom/easemob/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/a/a;

    invoke-direct {v0}, Lcom/easemob/a/a;-><init>()V

    sput-object v0, Lcom/easemob/a/a;->k:Lcom/easemob/a/a;

    :cond_0
    sget-object v0, Lcom/easemob/a/a;->k:Lcom/easemob/a/a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static a(II)Z
    .locals 2

    const-string v0, "SDL"

    const-string v1, "to call initEGL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/easemob/a/a;->a()Lcom/easemob/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/a/a;->d()V

    invoke-static {}, Lcom/easemob/a/a;->a()Lcom/easemob/a/a;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/easemob/a/a;->c(II)Z

    move-result v0

    return v0
.end method

.method public static c()V
    .locals 1

    invoke-static {}, Lcom/easemob/a/a;->a()Lcom/easemob/a/a;

    move-result-object v0

    invoke-direct {v0}, Lcom/easemob/a/a;->r()V

    return-void
.end method

.method private c(II)Z
    .locals 8

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/easemob/a/a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_4

    const-string v0, "SDL"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initEGL"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v2, 0x4

    if-ne p1, v3, :cond_1

    move v3, v2

    :goto_0
    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0x3040

    aput v5, v2, v4

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x2

    const/16 v4, 0x3038

    aput v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v4, 0x1

    new-array v5, v4, [I

    const/4 v4, 0x1

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget v0, v5, v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "SDL"

    const-string v1, "No EGL config available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    :goto_1
    return v0

    :cond_1
    if-ne p1, v7, :cond_5

    move v3, v7

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    aget-object v0, v3, v0

    iput-object v1, p0, Lcom/easemob/a/a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/easemob/a/a;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    iput p1, p0, Lcom/easemob/a/a;->h:I

    invoke-direct {p0}, Lcom/easemob/a/a;->p()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    move v0, v7

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "SDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    :goto_3
    if-ge v6, v1, :cond_3

    aget-object v2, v0, v6

    const-string v3, "SDL"

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/easemob/a/a;->p()Z

    goto :goto_2

    :cond_5
    move v3, v6

    goto :goto_0
.end method

.method private p()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/easemob/a/a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/easemob/a/a;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_3

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/easemob/a/a;->d:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/easemob/a/a;->q()Z

    :cond_0
    const-string v2, "SDL"

    const-string v3, "Creating new EGL Surface"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/easemob/a/a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/easemob/a/a;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v4, p0, Lcom/easemob/a/a;->i:Landroid/view/SurfaceView;

    const/4 v5, 0x0

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_1

    const-string v0, "SDL"

    const-string v2, "Couldn\'t create surface"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/easemob/a/a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/easemob/a/a;->d:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v3, v2, v2, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "SDL"

    const-string v4, "Old EGL Context doesnt work, trying with a new one"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/easemob/a/a;->q()Z

    iget-object v3, p0, Lcom/easemob/a/a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/easemob/a/a;->d:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v3, v2, v2, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SDL"

    const-string v2, "Failed making EGL Context current"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lcom/easemob/a/a;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private q()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    const/16 v3, 0x3098

    const/4 v4, 0x3

    new-array v4, v4, [I

    aput v3, v4, v1

    iget v3, p0, Lcom/easemob/a/a;->h:I

    aput v3, v4, v2

    const/4 v3, 0x2

    const/16 v5, 0x3038

    aput v5, v4, v3

    iget-object v3, p0, Lcom/easemob/a/a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/easemob/a/a;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v3, v5, v6, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/a/a;->d:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v0, p0, Lcom/easemob/a/a;->d:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v3, :cond_0

    const-string v0, "SDL"

    const-string v2, "Couldn\'t create context"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private r()V
    .locals 5

    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    const/16 v1, 0x305b

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitNative(ILjava/lang/Object;)Z

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitGL()Z

    iget-object v1, p0, Lcom/easemob/a/a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/easemob/a/a;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SDL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "flipEGL(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    const-string v4, "SDL"

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(I)I
    .locals 4

    const v0, -0x7aeaeffe

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v1, "SDL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pixel format unknown "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :pswitch_1
    const-string v1, "SDL"

    const-string v2, "pixel format A_8"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string v1, "SDL"

    const-string v2, "pixel format LA_88"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string v1, "SDL"

    const-string v2, "pixel format L_8"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    const-string v0, "SDL"

    const-string v1, "pixel format RGBA_4444"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0x7abdeffe

    goto :goto_0

    :pswitch_5
    const-string v0, "SDL"

    const-string v1, "pixel format RGBA_5551"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0x7abbeffe

    goto :goto_0

    :pswitch_6
    const-string v0, "SDL"

    const-string v1, "pixel format RGBA_8888"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0x79b9dffc

    goto :goto_0

    :pswitch_7
    const-string v0, "SDL"

    const-string v1, "pixel format RGBX_8888"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0x79d9dffc

    goto :goto_0

    :pswitch_8
    const-string v0, "SDL"

    const-string v1, "pixel format RGB_332"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0x7beef7ff

    goto :goto_0

    :pswitch_9
    const-string v1, "SDL"

    const-string v2, "pixel format RGB_565"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_a
    const-string v0, "SDL"

    const-string v1, "pixel format RGB_888"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0x79e9e7fc

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_8
    .end packed-switch
.end method

.method public a(III)V
    .locals 2

    iget-object v0, p0, Lcom/easemob/a/a;->j:Lcom/easemob/media/AVNative;

    invoke-virtual {p0, p3}, Lcom/easemob/a/a;->a(I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/easemob/media/AVNative;->onNativeResize(III)V

    return-void
.end method

.method public a(II[B)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/a/a;->j:Lcom/easemob/media/AVNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/easemob/media/AVNative;->nativeProcessYUV(II[B)I

    return-void
.end method

.method public a(Landroid/view/SurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/a/a;->i:Landroid/view/SurfaceView;

    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/easemob/a/a;->j:Lcom/easemob/media/AVNative;

    invoke-virtual {v0, p1}, Lcom/easemob/media/AVNative;->nativeTakePicture(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/easemob/a/a;->j:Lcom/easemob/media/AVNative;

    invoke-virtual {v0}, Lcom/easemob/media/AVNative;->nativeResume()V

    return-void
.end method

.method public b(II)V
    .locals 0

    iput p1, p0, Lcom/easemob/a/a;->a:I

    iput p2, p0, Lcom/easemob/a/a;->b:I

    return-void
.end method

.method public b(Landroid/view/SurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/a/a;->i:Landroid/view/SurfaceView;

    return-void
.end method

.method public d()V
    .locals 5

    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/easemob/a/a;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easemob/a/a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v1, p0, Lcom/easemob/a/a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/easemob/a/a;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/easemob/a/a;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_0
    iget-object v1, p0, Lcom/easemob/a/a;->d:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/easemob/a/a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/easemob/a/a;->d:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/easemob/a/a;->d:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_1
    iget-object v1, p0, Lcom/easemob/a/a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/easemob/a/a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/a/a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public e()Landroid/view/SurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/easemob/a/a;->i:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/easemob/a/a;->a:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/easemob/a/a;->b:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/easemob/a/a;->c:I

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/easemob/a/a;->j:Lcom/easemob/media/AVNative;

    invoke-virtual {v0}, Lcom/easemob/media/AVNative;->nativeGetVideoTimedelay()I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lcom/easemob/a/a;->j:Lcom/easemob/media/AVNative;

    invoke-virtual {v0}, Lcom/easemob/media/AVNative;->nativeGetVideoFramerate()I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lcom/easemob/a/a;->j:Lcom/easemob/media/AVNative;

    invoke-virtual {v0}, Lcom/easemob/media/AVNative;->nativeGetVideoLostcnt()I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/easemob/a/a;->j:Lcom/easemob/media/AVNative;

    invoke-virtual {v0}, Lcom/easemob/media/AVNative;->nativeGetVideoWidth()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lcom/easemob/a/a;->j:Lcom/easemob/media/AVNative;

    invoke-virtual {v0}, Lcom/easemob/media/AVNative;->nativeGetVideoHeight()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lcom/easemob/a/a;->j:Lcom/easemob/media/AVNative;

    invoke-virtual {v0}, Lcom/easemob/media/AVNative;->nativeGetRemoteBitrate()I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lcom/easemob/a/a;->j:Lcom/easemob/media/AVNative;

    invoke-virtual {v0}, Lcom/easemob/media/AVNative;->nativeGetLocalBitrate()I

    move-result v0

    return v0
.end method
