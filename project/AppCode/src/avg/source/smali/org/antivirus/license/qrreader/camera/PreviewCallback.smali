.class final Lorg/antivirus/license/qrreader/camera/PreviewCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final configManager:Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;

.field private previewHandler:Landroid/os/Handler;

.field private previewMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/antivirus/license/qrreader/camera/PreviewCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/antivirus/license/qrreader/camera/PreviewCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/antivirus/license/qrreader/camera/PreviewCallback;->configManager:Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/PreviewCallback;->configManager:Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lorg/antivirus/license/qrreader/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/license/qrreader/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget v2, p0, Lorg/antivirus/license/qrreader/camera/PreviewCallback;->previewMessage:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/license/qrreader/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method final setHandler(Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/license/qrreader/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    iput p2, p0, Lorg/antivirus/license/qrreader/camera/PreviewCallback;->previewMessage:I

    return-void
.end method
