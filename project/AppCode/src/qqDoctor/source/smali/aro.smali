.class final Laro;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Larn;


# direct methods
.method constructor <init>(Larn;)V
    .locals 0

    iput-object p1, p0, Laro;->a:Larn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    :try_start_0
    iget-object v0, p0, Laro;->a:Larn;

    invoke-static {v0}, Larn;->a(Larn;)I

    move-result v2

    iget-object v0, p0, Laro;->a:Larn;

    invoke-static {v0}, Larn;->b(Larn;)I

    move-result v4

    iget-object v0, p0, Laro;->a:Larn;

    invoke-static {v0}, Larn;->c(Larn;)I

    move-result v3

    const/4 v0, 0x0

    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v6, :cond_1

    :cond_0
    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_a

    iget-object v0, p0, Laro;->a:Larn;

    invoke-static {v0}, Larn;->d(Larn;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0a74

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    iget-object v0, p0, Laro;->a:Larn;

    invoke-static {v0}, Larn;->e(Larn;)Larm;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Larm;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_2
    return-void

    :cond_1
    :try_start_1
    invoke-static {v1, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v7, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v7, v3, :cond_2

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    if-nez v5, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    int-to-double v0, v2

    int-to-double v2, v4

    div-double v6, v0, v2

    const/4 v2, 0x0

    const-wide v0, 0x7fefffffffffffffL

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v13, v0

    move-object v1, v2

    move-wide v2, v13

    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    if-nez v1, :cond_7

    const-wide v2, 0x7fefffffffffffffL

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_7
    new-instance v0, Landroid/graphics/Point;

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    iget-object v0, p0, Laro;->a:Larn;

    invoke-static {v0}, Larn;->d(Larn;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0a72

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    iget-object v0, p0, Laro;->a:Larn;

    invoke-static {v0}, Larn;->e(Larn;)Larm;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Larm;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_8
    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v9, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v9, v9

    iget v11, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v11, v11

    div-double/2addr v9, v11

    sub-double/2addr v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x3fb999999999999aL

    cmpl-double v9, v9, v11

    if-gtz v9, :cond_5

    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-double v9, v9

    cmpg-double v9, v9, v2

    if-gez v9, :cond_5

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v1, v1

    move-wide v13, v1

    move-wide v2, v13

    move-object v1, v0

    goto :goto_3

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    cmpg-double v6, v6, v2

    if-gez v6, :cond_6

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    int-to-double v1, v1

    move-wide v13, v1

    move-wide v2, v13

    move-object v1, v0

    goto/16 :goto_4

    :cond_a
    iget-object v1, p0, Laro;->a:Larn;

    new-instance v2, La;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v3, v0}, La;-><init>(II)V

    invoke-static {v1, v2}, Larn;->a(Larn;La;)La;

    iget-object v0, p0, Laro;->a:Larn;

    iget-object v1, p0, Laro;->a:Larn;

    invoke-static {v1}, Larn;->f(Larn;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-static {v0, v1}, Larn;->a(Larn;Landroid/view/SurfaceHolder;)Z

    move-result v0

    iget-object v1, p0, Laro;->a:Larn;

    invoke-static {v1}, Larn;->e(Larn;)Larm;

    move-result-object v1

    const/16 v2, 0xa

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :goto_5
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Larm;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_b
    const/4 v0, 0x1

    goto :goto_5
.end method
