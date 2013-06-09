.class public final Lorg/antivirus/license/qrreader/camera/CameraManager;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_FRAME_HEIGHT:I = 0x190

.field private static final MAX_FRAME_WIDTH:I = 0x258

.field private static final MIN_FRAME_HEIGHT:I = 0xf0

.field private static final MIN_FRAME_WIDTH:I = 0xf0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final autoFocusCallback:Lorg/antivirus/license/qrreader/camera/AutoFocusCallback;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private final previewCallback:Lorg/antivirus/license/qrreader/camera/PreviewCallback;

.field private previewing:Z

.field private requestedFramingRectHeight:I

.field private requestedFramingRectWidth:I

.field private reverseImage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/antivirus/license/qrreader/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/antivirus/license/qrreader/camera/CameraManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->context:Landroid/content/Context;

    new-instance v0, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->configManager:Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;

    new-instance v0, Lorg/antivirus/license/qrreader/camera/PreviewCallback;

    iget-object v1, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->configManager:Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;

    invoke-direct {v0, v1}, Lorg/antivirus/license/qrreader/camera/PreviewCallback;-><init>(Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;)V

    iput-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->previewCallback:Lorg/antivirus/license/qrreader/camera/PreviewCallback;

    new-instance v0, Lorg/antivirus/license/qrreader/camera/AutoFocusCallback;

    invoke-direct {v0}, Lorg/antivirus/license/qrreader/camera/AutoFocusCallback;-><init>()V

    iput-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->autoFocusCallback:Lorg/antivirus/license/qrreader/camera/AutoFocusCallback;

    return-void
.end method


# virtual methods
.method public final buildLuminanceSource([BII)Lorg/antivirus/license/qrreader/general/PlanarYUVLuminanceSource;
    .locals 9

    invoke-virtual {p0}, Lorg/antivirus/license/qrreader/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/antivirus/license/qrreader/general/PlanarYUVLuminanceSource;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-boolean v8, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->reverseImage:Z

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lorg/antivirus/license/qrreader/general/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    goto :goto_0
.end method

.method public final closeDriver()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iput-object v1, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iput-object v1, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public final getFramingRect()Landroid/graphics/Rect;
    .locals 5

    const/16 v0, 0x258

    const/16 v3, 0x190

    const/16 v1, 0xf0

    iget-object v2, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->configManager:Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;

    invoke-virtual {v2}, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v4

    iget v2, v4, Landroid/graphics/Point;->x:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-ge v2, v1, :cond_3

    move v0, v1

    :cond_1
    :goto_1
    iget v2, v4, Landroid/graphics/Point;->y:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-ge v2, v1, :cond_4

    :goto_2
    iget v2, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iget v3, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    :cond_2
    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_3
    if-gt v2, v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_4
    if-le v2, v3, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method public final getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/antivirus/license/qrreader/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->configManager:Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    iget-object v2, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->configManager:Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;

    invoke-virtual {v2}, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iput-object v1, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    :cond_1
    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public final openDriver(Landroid/view/SurfaceHolder;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iput-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->camera:Landroid/hardware/Camera;

    :cond_1
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-boolean v1, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->initialized:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->initialized:Z

    iget-object v1, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->configManager:Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;

    invoke-virtual {v1, v0}, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    iget v1, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->requestedFramingRectWidth:I

    if-lez v1, :cond_2

    iget v1, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->requestedFramingRectHeight:I

    if-lez v1, :cond_2

    iget v1, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->requestedFramingRectWidth:I

    iget v2, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->requestedFramingRectHeight:I

    invoke-virtual {p0, v1, v2}, Lorg/antivirus/license/qrreader/camera/CameraManager;->setManualFramingRect(II)V

    iput v3, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->requestedFramingRectWidth:I

    iput v3, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->requestedFramingRectHeight:I

    :cond_2
    iget-object v1, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->configManager:Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;

    invoke-virtual {v1, v0}, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preferences_reverse_image"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->reverseImage:Z

    return-void
.end method

.method public final requestAutoFocus(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->autoFocusCallback:Lorg/antivirus/license/qrreader/camera/AutoFocusCallback;

    invoke-virtual {v0, p1, p2}, Lorg/antivirus/license/qrreader/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->autoFocusCallback:Lorg/antivirus/license/qrreader/camera/AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->previewCallback:Lorg/antivirus/license/qrreader/camera/PreviewCallback;

    invoke-virtual {v1, p1, p2}, Lorg/antivirus/license/qrreader/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    iget-object v1, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->previewCallback:Lorg/antivirus/license/qrreader/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    return-void
.end method

.method public final setManualFramingRect(II)V
    .locals 5

    iget-boolean v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->initialized:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->configManager:Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-le p1, v1, :cond_0

    iget p1, v0, Landroid/graphics/Point;->x:I

    :cond_0
    iget v1, v0, Landroid/graphics/Point;->y:I

    if-le p2, v1, :cond_1

    iget p2, v0, Landroid/graphics/Point;->y:I

    :cond_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    new-instance v2, Landroid/graphics/Rect;

    add-int v3, v1, p1

    add-int v4, v0, p2

    invoke-direct {v2, v1, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    :goto_0
    return-void

    :cond_2
    iput p1, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->requestedFramingRectWidth:I

    iput p2, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->requestedFramingRectHeight:I

    goto :goto_0
.end method

.method public final startPreview()V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->previewing:Z

    :cond_0
    return-void
.end method

.method public final stopPreview()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->previewCallback:Lorg/antivirus/license/qrreader/camera/PreviewCallback;

    invoke-virtual {v0, v2, v1}, Lorg/antivirus/license/qrreader/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->autoFocusCallback:Lorg/antivirus/license/qrreader/camera/AutoFocusCallback;

    invoke-virtual {v0, v2, v1}, Lorg/antivirus/license/qrreader/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    iput-boolean v1, p0, Lorg/antivirus/license/qrreader/camera/CameraManager;->previewing:Z

    :cond_0
    return-void
.end method
