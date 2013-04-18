.class public final Lcom/keniu/security/protection/f;
.super Landroid/view/SurfaceView;
.source "KnCameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final a:Ljava/lang/String; = "KnCameraPreview"


# instance fields
.field private b:Landroid/view/SurfaceHolder;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/content/Context;

.field private e:Landroid/os/Handler;

.field private f:Landroid/hardware/Camera$ShutterCallback;

.field private g:Landroid/hardware/Camera$PictureCallback;

.field private h:Landroid/hardware/Camera$PictureCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lcom/keniu/security/protection/g;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/g;-><init>(Lcom/keniu/security/protection/f;)V

    iput-object v0, p0, Lcom/keniu/security/protection/f;->e:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcom/keniu/security/protection/h;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/h;-><init>(Lcom/keniu/security/protection/f;)V

    iput-object v0, p0, Lcom/keniu/security/protection/f;->f:Landroid/hardware/Camera$ShutterCallback;

    .line 143
    new-instance v0, Lcom/keniu/security/protection/i;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/i;-><init>(Lcom/keniu/security/protection/f;)V

    iput-object v0, p0, Lcom/keniu/security/protection/f;->g:Landroid/hardware/Camera$PictureCallback;

    .line 151
    new-instance v0, Lcom/keniu/security/protection/j;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/j;-><init>(Lcom/keniu/security/protection/f;)V

    iput-object v0, p0, Lcom/keniu/security/protection/f;->h:Landroid/hardware/Camera$PictureCallback;

    .line 50
    iput-object p1, p0, Lcom/keniu/security/protection/f;->d:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/keniu/security/protection/f;->b:Landroid/view/SurfaceHolder;

    .line 52
    iget-object v0, p0, Lcom/keniu/security/protection/f;->b:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 53
    iget-object v0, p0, Lcom/keniu/security/protection/f;->b:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/protection/f;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/keniu/security/protection/f;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/protection/f;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/keniu/security/protection/f;->c:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "KnCameraPreview"

    const-string v1, "stopCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Lcom/keniu/security/protection/e;->a()Landroid/hardware/Camera;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/keniu/security/protection/f;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/keniu/security/protection/f;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static b()V
    .locals 6

    .prologue
    .line 98
    const-string v0, "KnCameraPreview"

    const-string v1, "initCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Lcom/keniu/security/protection/e;->a()Landroid/hardware/Camera;

    move-result-object v0

    .line 101
    invoke-static {}, Lcom/keniu/security/protection/e;->e()V

    .line 103
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_0

    .line 106
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 108
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 110
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-le v1, v2, :cond_1

    .line 113
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setDisplayOrientation"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 115
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x5a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 122
    return-void

    .line 116
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/keniu/security/protection/f;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/keniu/security/protection/f;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final c()V
    .locals 4

    .prologue
    .line 126
    invoke-static {}, Lcom/keniu/security/protection/e;->a()Landroid/hardware/Camera;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_1

    .line 128
    iget-object v1, p0, Lcom/keniu/security/protection/f;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 129
    const-string v1, "KnCameraPreview"

    const-string v2, "cameraBitmap.recycle"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/keniu/security/protection/f;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/protection/f;->f:Landroid/hardware/Camera$ShutterCallback;

    iget-object v2, p0, Lcom/keniu/security/protection/f;->g:Landroid/hardware/Camera$PictureCallback;

    iget-object v3, p0, Lcom/keniu/security/protection/f;->h:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 134
    :cond_1
    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    const-string v0, "KnCameraPreview"

    const-string v1, "surfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {}, Lcom/keniu/security/protection/f;->b()V

    .line 95
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    const-string v0, "KnCameraPreview"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Lcom/keniu/security/protection/e;->b()Landroid/hardware/Camera;

    move-result-object v0

    .line 62
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 66
    invoke-static {}, Lcom/keniu/security/protection/e;->c()V

    goto :goto_0
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    const-string v0, "KnCameraPreview"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lcom/keniu/security/protection/f;->a()V

    .line 74
    invoke-static {}, Lcom/keniu/security/protection/e;->c()V

    .line 75
    return-void
.end method
