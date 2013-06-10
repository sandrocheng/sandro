.class public final Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;
.super Landroid/os/Handler;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lorg/antivirus/license/qrreader/general/CaptureActivity;

.field private final cameraManager:Lorg/antivirus/license/qrreader/camera/CameraManager;

.field private final decodeThread:Lorg/antivirus/license/qrreader/general/DecodeThread;

.field private state:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/antivirus/license/qrreader/general/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lorg/antivirus/license/qrreader/camera/CameraManager;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->activity:Lorg/antivirus/license/qrreader/general/CaptureActivity;

    new-instance v0, Lorg/antivirus/license/qrreader/general/DecodeThread;

    new-instance v1, Lorg/antivirus/license/qrreader/general/ViewfinderResultPointCallback;

    invoke-virtual {p1}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->getViewfinderView()Lorg/antivirus/license/qrreader/general/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/antivirus/license/qrreader/general/ViewfinderResultPointCallback;-><init>(Lorg/antivirus/license/qrreader/general/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/antivirus/license/qrreader/general/DecodeThread;-><init>(Lorg/antivirus/license/qrreader/general/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->decodeThread:Lorg/antivirus/license/qrreader/general/DecodeThread;

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->decodeThread:Lorg/antivirus/license/qrreader/general/DecodeThread;

    invoke-virtual {v0}, Lorg/antivirus/license/qrreader/general/DecodeThread;->start()V

    sget-object v0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;->SUCCESS:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;

    iput-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->state:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;

    iput-object p4, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->cameraManager:Lorg/antivirus/license/qrreader/camera/CameraManager;

    invoke-virtual {p4}, Lorg/antivirus/license/qrreader/camera/CameraManager;->startPreview()V

    invoke-direct {p0}, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->restartPreviewAndDecode()V

    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->state:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;

    sget-object v1, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;->SUCCESS:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;->PREVIEW:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;

    iput-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->state:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->cameraManager:Lorg/antivirus/license/qrreader/camera/CameraManager;

    iget-object v1, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->decodeThread:Lorg/antivirus/license/qrreader/general/DecodeThread;

    invoke-virtual {v1}, Lorg/antivirus/license/qrreader/general/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/license/qrreader/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->cameraManager:Lorg/antivirus/license/qrreader/camera/CameraManager;

    const/high16 v1, 0x7f08

    invoke-virtual {v0, p0, v1}, Lorg/antivirus/license/qrreader/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->activity:Lorg/antivirus/license/qrreader/general/CaptureActivity;

    invoke-virtual {v0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->drawViewfinder()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->state:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;

    sget-object v1, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;->PREVIEW:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->cameraManager:Lorg/antivirus/license/qrreader/camera/CameraManager;

    const/high16 v1, 0x7f08

    invoke-virtual {v0, p0, v1}, Lorg/antivirus/license/qrreader/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;->SUCCESS:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;

    iput-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->state:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    iget-object v2, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->activity:Lorg/antivirus/license/qrreader/general/CaptureActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/Result;

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const-string v1, "barcode_bitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    goto :goto_1

    :pswitch_4
    sget-object v0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;->PREVIEW:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;

    iput-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->state:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->cameraManager:Lorg/antivirus/license/qrreader/camera/CameraManager;

    iget-object v1, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->decodeThread:Lorg/antivirus/license/qrreader/general/DecodeThread;

    invoke-virtual {v1}, Lorg/antivirus/license/qrreader/general/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/license/qrreader/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->activity:Lorg/antivirus/license/qrreader/general/CaptureActivity;

    const/4 v2, -0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->activity:Lorg/antivirus/license/qrreader/general/CaptureActivity;

    invoke-virtual {v0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->finish()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->activity:Lorg/antivirus/license/qrreader/general/CaptureActivity;

    invoke-virtual {v0, v1}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080000
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public final quitSynchronously()V
    .locals 3

    sget-object v0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;->DONE:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;

    iput-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->state:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler$State;

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->cameraManager:Lorg/antivirus/license/qrreader/camera/CameraManager;

    invoke-virtual {v0}, Lorg/antivirus/license/qrreader/camera/CameraManager;->stopPreview()V

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->decodeThread:Lorg/antivirus/license/qrreader/general/DecodeThread;

    invoke-virtual {v0}, Lorg/antivirus/license/qrreader/general/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f080005

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->decodeThread:Lorg/antivirus/license/qrreader/general/DecodeThread;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/license/qrreader/general/DecodeThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->removeMessages(I)V

    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->removeMessages(I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
