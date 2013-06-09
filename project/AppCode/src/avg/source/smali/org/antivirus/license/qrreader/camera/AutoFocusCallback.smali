.class final Lorg/antivirus/license/qrreader/camera/AutoFocusCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# static fields
.field private static final AUTOFOCUS_INTERVAL_MS:J = 0x5dcL

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoFocusHandler:Landroid/os/Handler;

.field private autoFocusMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/antivirus/license/qrreader/camera/AutoFocusCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/antivirus/license/qrreader/camera/AutoFocusCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/AutoFocusCallback;->autoFocusHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/license/qrreader/camera/AutoFocusCallback;->autoFocusHandler:Landroid/os/Handler;

    iget v1, p0, Lorg/antivirus/license/qrreader/camera/AutoFocusCallback;->autoFocusMessage:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/license/qrreader/camera/AutoFocusCallback;->autoFocusHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/license/qrreader/camera/AutoFocusCallback;->autoFocusHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method final setHandler(Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/license/qrreader/camera/AutoFocusCallback;->autoFocusHandler:Landroid/os/Handler;

    iput p2, p0, Lorg/antivirus/license/qrreader/camera/AutoFocusCallback;->autoFocusMessage:I

    return-void
.end method
