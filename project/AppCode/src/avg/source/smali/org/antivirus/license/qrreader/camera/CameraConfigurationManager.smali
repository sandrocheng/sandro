.class final Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_PREVIEW_PIXELS:I = 0x5dc00

.field private static final MIN_PREVIEW_PIXELS:I = 0x12c00

.field private static final TAG:Ljava/lang/String; = "CameraConfiguration"


# instance fields
.field private cameraResolution:Landroid/graphics/Point;

.field private final context:Landroid/content/Context;

.field private screenResolution:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    return-void
.end method

.method private static doSetTorch(Landroid/hardware/Camera$Parameters;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "torch"

    aput-object v2, v1, v3

    const-string v2, "on"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "off"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .locals 7

    const/4 v2, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v3, v4

    const v4, 0x12c00

    if-lt v3, v4, :cond_0

    const v4, 0x5dc00

    if-gt v3, v4, :cond_0

    if-eqz p2, :cond_2

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    move v4, v3

    :goto_1
    if-eqz p2, :cond_3

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move v3, v0

    :goto_2
    iget v0, p1, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v3

    iget v6, p1, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v4

    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    :goto_3
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    new-instance v0, Landroid/graphics/Point;

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    :cond_1
    return-object v0

    :cond_2
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    move v4, v3

    goto :goto_1

    :cond_3
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move v3, v0

    goto :goto_2

    :cond_4
    if-ge v0, v1, :cond_5

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    :goto_4
    move-object v2, v1

    move v1, v0

    goto :goto_0

    :cond_5
    move v0, v1

    move-object v1, v2

    goto :goto_4

    :cond_6
    move-object v0, v2

    goto :goto_3
.end method

.method private static varargs findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    array-length v3, p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static initializeTorch(Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "preferences_front_light"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0, v0}, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->doSetTorch(Landroid/hardware/Camera$Parameters;Z)V

    return-void
.end method


# virtual methods
.method final getCameraResolution()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method final getScreenResolution()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method final initFromCameraParameters(Landroid/hardware/Camera;)V
    .locals 5

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-ge v1, v0, :cond_0

    :goto_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    return-void

    :cond_0
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0
.end method

.method final setDesiredCameraParameters(Landroid/hardware/Camera;)V
    .locals 5

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->initializeTorch(Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "auto"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "macro"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method final setTorch(Landroid/hardware/Camera;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->doSetTorch(Landroid/hardware/Camera$Parameters;Z)V

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preferences_front_light"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v1, p2, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preferences_front_light"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
