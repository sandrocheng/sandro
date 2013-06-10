.class public Lorg/antivirus/widget/activities/TorchActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static a:Landroid/hardware/Camera;

.field private static b:Landroid/content/Context;

.field private static c:Landroid/hardware/Camera$Parameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static a()Landroid/hardware/Camera;
    .locals 1

    sget-object v0, Lorg/antivirus/widget/activities/TorchActivity;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    sput-object v0, Lorg/antivirus/widget/activities/TorchActivity;->a:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lorg/antivirus/widget/activities/TorchActivity;->a:Landroid/hardware/Camera;

    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lorg/antivirus/widget/activities/TorchActivity;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    sput-object v0, Lorg/antivirus/widget/activities/TorchActivity;->a:Landroid/hardware/Camera;

    goto :goto_0
.end method

.method private static b()Landroid/hardware/Camera$Parameters;
    .locals 1

    sget-object v0, Lorg/antivirus/widget/activities/TorchActivity;->c:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    sget-object v0, Lorg/antivirus/widget/activities/TorchActivity;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    sput-object v0, Lorg/antivirus/widget/activities/TorchActivity;->c:Landroid/hardware/Camera$Parameters;

    :cond_0
    sget-object v0, Lorg/antivirus/widget/activities/TorchActivity;->c:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method private c()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/antivirus/AVSettings;->setFlashLightOn(Z)V

    invoke-static {p0}, Lorg/antivirus/widget/a/k;->a(Landroid/content/Context;)Lorg/antivirus/widget/a/k;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lorg/antivirus/widget/a/i;->j:Lorg/antivirus/widget/a/i;

    invoke-virtual {v2}, Lorg/antivirus/widget/a/i;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/widget/a/k;->a(Landroid/os/Bundle;I)Z

    invoke-virtual {p0}, Lorg/antivirus/widget/activities/TorchActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    if-nez p2, :cond_0

    invoke-direct {p0}, Lorg/antivirus/widget/activities/TorchActivity;->c()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    invoke-direct {p0}, Lorg/antivirus/widget/activities/TorchActivity;->c()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lorg/antivirus/widget/activities/TorchActivity;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lorg/antivirus/widget/activities/TorchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lorg/antivirus/widget/activities/TorchActivity;->setContentView(I)V

    const v0, 0x7f080095

    invoke-virtual {p0, v0}, Lorg/antivirus/widget/activities/TorchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-static {}, Lorg/antivirus/AVSettings;->shouldShowActivationScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/ui/main/ActivationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/antivirus/widget/activities/TorchActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lorg/antivirus/widget/activities/TorchActivity;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    const-string v0, "widget"

    const-string v1, "widget_flashlight_closed"

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lorg/antivirus/widget/activities/TorchActivity;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/antivirus/widget/activities/TorchActivity;->b()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    invoke-static {}, Lorg/antivirus/widget/activities/TorchActivity;->a()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lorg/antivirus/widget/activities/TorchActivity;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    sget-object v0, Lorg/antivirus/widget/activities/TorchActivity;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    sput-object v2, Lorg/antivirus/widget/activities/TorchActivity;->a:Landroid/hardware/Camera;

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    sget-object v0, Lorg/antivirus/widget/activities/TorchActivity;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    invoke-static {}, Lorg/antivirus/widget/activities/TorchActivity;->b()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "torch"

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    sget-object v1, Lorg/antivirus/widget/activities/TorchActivity;->a:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-static {}, Lorg/antivirus/widget/activities/TorchActivity;->a()Landroid/hardware/Camera;

    :try_start_0
    sget-object v0, Lorg/antivirus/widget/activities/TorchActivity;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
