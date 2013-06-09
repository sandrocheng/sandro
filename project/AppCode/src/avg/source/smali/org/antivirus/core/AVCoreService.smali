.class public abstract Lorg/antivirus/core/AVCoreService;
.super Landroid/app/Service;


# static fields
.field public static SERVICE_IDENTIFIER:Landroid/content/ComponentName; = null

.field public static final c_action:Ljava/lang/String; = "__SAC"

.field public static final c_actionAlarm:I = 0x3

.field public static final c_actionCommMessage:I = 0x7

.field public static final c_actionData:Ljava/lang/String; = "__SAD"

.field public static final c_actionFix:I = 0x19

.field public static final c_actionHandler:Ljava/lang/String; = "__SAH"

.field public static final c_actionInit:I = 0x1

.field public static final c_actionInitFromBootReciever:I = 0x2

.field public static final c_actionLogging:I = 0x6

.field public static final c_actionNewLicense:I = 0x5

.field public static final c_actionRemovePackage:I = 0x14

.field public static final c_actionScan:I = 0x16

.field public static final c_actionScanCancel:I = 0x1b

.field public static final c_actionScanPackage:I = 0x17

.field public static final c_actionScanSms:I = 0x18

.field public static final c_actionUpdate:I = 0x4

.field public static final c_actionUrlFilterUrlBypass:I = 0xb

.field public static final c_actionUrlFilterUrlCheck:I = 0xa

.field public static final c_actionVerify:I = 0x1a

.field public static final c_actionWebServerResultBadPackage:I = 0x13


# instance fields
.field protected a:Z

.field protected b:Lorg/antivirus/core/Engine;

.field protected c:Lorg/antivirus/core/b/e;

.field protected d:Lorg/antivirus/core/d/e;

.field protected volatile e:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AVService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/core/AVCoreService;->e:Landroid/os/Looper;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/core/AVCoreService;->b:Lorg/antivirus/core/Engine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/AVCoreService;->b:Lorg/antivirus/core/Engine;

    invoke-virtual {v0}, Lorg/antivirus/core/Engine;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/core/AVCoreService;->b:Lorg/antivirus/core/Engine;

    :cond_0
    iget-object v0, p0, Lorg/antivirus/core/AVCoreService;->e:Landroid/os/Looper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/core/AVCoreService;->e:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/core/AVCoreService;->e:Landroid/os/Looper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendCommMessage(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/core/AVCoreService;->b:Lorg/antivirus/core/Engine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/AVCoreService;->b:Lorg/antivirus/core/Engine;

    invoke-virtual {v0, p1, p2}, Lorg/antivirus/core/Engine;->sendCommMessage(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
