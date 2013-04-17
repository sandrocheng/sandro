.class public final Larn;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static a:Ljava/lang/String;

.field private static g:I

.field private static h:Ljava/lang/Object;


# instance fields
.field private A:I

.field private B:Z

.field private C:[I

.field private D:[B

.field private E:Lg;

.field private F:Z

.field private G:J

.field private H:J

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/faceverify/util/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private J:Landroid/content/Context;

.field private K:Lho;

.field private L:Landroid/util/DisplayMetrics;

.field private M:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Landroid/view/animation/Animation;

.field private R:Landroid/widget/ImageView;

.field private S:I

.field private T:Z

.field private U:I

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private i:La;

.field private j:Larm;

.field private k:Landroid/view/SurfaceView;

.field private l:Landroid/view/SurfaceHolder;

.field private m:Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/view/ViewGroup$LayoutParams;

.field private p:Landroid/widget/FrameLayout;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:F

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Ljava/lang/String;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CameraCaptureView"

    sput-object v0, Larn;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Larn;->g:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Larn;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f03006a

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    iput v0, p0, Larn;->b:I

    const/4 v0, 0x2

    iput v0, p0, Larn;->c:I

    const/16 v0, 0x140

    iput v0, p0, Larn;->d:I

    const/16 v0, 0xf0

    iput v0, p0, Larn;->e:I

    const/16 v0, 0x3a98

    iput v0, p0, Larn;->f:I

    iput-object v1, p0, Larn;->j:Larm;

    iput-object v1, p0, Larn;->k:Landroid/view/SurfaceView;

    iput-object v1, p0, Larn;->l:Landroid/view/SurfaceHolder;

    iput-object v1, p0, Larn;->m:Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;

    iput-object v1, p0, Larn;->n:Landroid/widget/LinearLayout;

    iput-object v1, p0, Larn;->p:Landroid/widget/FrameLayout;

    iput-object v1, p0, Larn;->q:Landroid/widget/TextView;

    iput-object v1, p0, Larn;->r:Landroid/widget/TextView;

    const/16 v0, 0x10

    iput v0, p0, Larn;->u:I

    iput-object v1, p0, Larn;->x:Ljava/lang/String;

    iput-object v1, p0, Larn;->C:[I

    iput-object v1, p0, Larn;->E:Lg;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Larn;->I:Ljava/util/List;

    invoke-virtual {p0}, Larn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iput-object p1, p0, Larn;->J:Landroid/content/Context;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Larn;->K:Lho;

    return-void
.end method

.method static synthetic a(Larn;)I
    .locals 1

    iget v0, p0, Larn;->d:I

    return v0
.end method

.method static synthetic a(Larn;La;)La;
    .locals 0

    iput-object p1, p0, Larn;->i:La;

    return-object p1
.end method

.method private static a(III[BIZII)Larr;
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lary;->a()Lary;

    move-result-object v0

    invoke-virtual {v0, v4, v5, p3}, Lary;->a(J[B)V

    new-instance v0, Larr;

    move v1, p0

    move v2, p1

    move v3, p2

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Larr;-><init>(IIIJIZII)V

    return-object v0
.end method

.method private a(Landroid/view/SurfaceHolder;)Z
    .locals 12

    const/16 v3, 0x10e

    const/16 v4, 0x5a

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Larn;->J:Landroid/content/Context;

    check-cast v0, Lcom/tencent/qqpimsecure/ui/activity/faceverify/CameraCaptureActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/faceverify/CameraCaptureActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v6

    iget-object v7, p0, Larn;->i:La;

    iget v8, p0, Larn;->v:I

    iget-object v0, v7, La;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_4

    new-instance v9, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v9}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v10

    if-lez v10, :cond_0

    move v5, v2

    :goto_0
    if-lt v5, v10, :cond_1

    :cond_0
    if-nez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    sget-object v0, Larn;->a:Ljava/lang/String;

    :goto_1
    move v0, v2

    :goto_2
    return v0

    :cond_1
    :try_start_1
    invoke-static {v5, v9}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v11, v9, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v11, v8, :cond_2

    invoke-static {v5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iput-object v0, v7, La;->a:Landroid/hardware/Camera;

    :cond_4
    iget-object v0, v7, La;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, v7, La;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v9, "auto"

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    iput-boolean v5, v7, La;->d:Z

    :goto_3
    iget-object v5, v7, La;->b:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v9, v7, La;->b:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v5, v9}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v5, v7, La;->a:Landroid/hardware/Camera;

    invoke-virtual {v5, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v5, v7, La;->a:Landroid/hardware/Camera;

    new-instance v7, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v7}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {v8, v7}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    packed-switch v6, :pswitch_data_0

    move v0, v2

    :goto_4
    iget v6, v7, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, v1, :cond_8

    iget v6, v7, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v6

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "displayOrientation = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v6, 0x5a

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    if-nez v0, :cond_5

    move v0, v3

    :cond_5
    if-eq v0, v4, :cond_6

    const/4 v3, 0x1

    sput-boolean v3, Lcom/tencent/faceverify/util/Utils;->isSpecialPhone:Z

    :cond_6
    iput v0, p0, Larn;->w:I

    iget-object v0, p0, Larn;->j:Larm;

    iget-object v3, p0, Larn;->i:La;

    invoke-virtual {v0, v3}, Larm;->a(La;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Larn;->G:J

    sget-object v0, Larn;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "CameraCaptureActivity bootstrap time: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Larn;->G:J

    iget-wide v5, p0, Larn;->H:J

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v0, v1

    goto/16 :goto_2

    :cond_7
    const/4 v5, 0x0

    iput-boolean v5, v7, La;->d:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    sget-object v0, Larn;->a:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_0
    move v0, v2

    goto :goto_4

    :pswitch_1
    move v0, v4

    goto :goto_4

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_4

    :pswitch_3
    move v0, v3

    goto :goto_4

    :cond_8
    :try_start_2
    iget v6, v7, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v0, v6, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Larn;Landroid/view/SurfaceHolder;)Z
    .locals 1

    invoke-direct {p0, p1}, Larn;->a(Landroid/view/SurfaceHolder;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Larn;)I
    .locals 1

    iget v0, p0, Larn;->e:I

    return v0
.end method

.method public static b()Z
    .locals 2

    sget-object v1, Larn;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Larn;->g:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/faceverify/util/FaceLib;->faceInit()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    sget v0, Larn;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Larn;->g:I

    sget-object v0, Larn;->a:Ljava/lang/String;

    :goto_1
    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    sget v0, Larn;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Larn;->g:I

    sget-object v0, Larn;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static synthetic c(Larn;)I
    .locals 1

    iget v0, p0, Larn;->v:I

    return v0
.end method

.method public static c()Z
    .locals 2

    sget-object v1, Larn;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Larn;->g:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Larn;->g:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/faceverify/util/FaceLib;->faceRelease()I

    sget-object v0, Larn;->a:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_0
    sget-object v0, Larn;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic d(Larn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larn;->J:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Larn;)Larm;
    .locals 1

    iget-object v0, p0, Larn;->j:Larm;

    return-object v0
.end method

.method public static e()V
    .locals 1

    sget-object v0, Larn;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic f(Larn;)Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Larn;->l:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method private g()V
    .locals 5

    iget v0, p0, Larn;->A:I

    iget v1, p0, Larn;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Larn;->J:Landroid/content/Context;

    iget v1, p0, Larn;->U:I

    iget-object v2, p0, Larn;->W:Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/tencent/qqpimsecure/ui/activity/privacy/PrivacyPatternPasswordEnterActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, -0x1

    invoke-static {v3, v1, v4, v2}, La;->a(Landroid/content/Intent;IILjava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Larn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    return-void
.end method

.method static synthetic g(Larn;)V
    .locals 1

    iget-object v0, p0, Larn;->j:Larm;

    invoke-virtual {v0}, Larm;->a()V

    return-void
.end method

.method static synthetic h(Larn;)V
    .locals 3

    iget-object v0, p0, Larn;->E:Lg;

    iget-object v1, p0, Larn;->x:Ljava/lang/String;

    iget-object v2, p0, Larn;->I:Ljava/util/List;

    iput-object v1, v0, Lg;->a:Ljava/lang/String;

    iput-object v2, v0, Lg;->b:Ljava/util/List;

    iget-object v0, p0, Larn;->E:Lg;

    invoke-virtual {v0}, Lg;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    iget-object v1, p0, Larn;->j:Larm;

    invoke-virtual {v1, v0}, Larm;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Larn;->B:Z

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private h()Z
    .locals 15

    const/4 v6, 0x0

    const/4 v9, 0x1

    iput-boolean v9, p0, Larn;->F:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Larn;->G:J

    sub-long/2addr v0, v2

    iget v2, p0, Larn;->f:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    move v0, v9

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Larn;->j:Larm;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Larm;->sendEmptyMessage(I)Z

    :cond_0
    :goto_1
    return v9

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Larn;->B:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Larn;->C:[I

    if-nez v0, :cond_3

    :try_start_0
    iget v0, p0, Larn;->y:I

    iget v1, p0, Larn;->z:I

    mul-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Larn;->C:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    iget-object v0, p0, Larn;->C:[I

    iget v1, p0, Larn;->z:I

    iget v2, p0, Larn;->y:I

    const-class v3, Lcom/tencent/faceverify/util/ImageSize;

    const-class v4, Lcom/tencent/faceverify/util/FaceLoc;

    const-class v5, Lcom/tencent/faceverify/util/EyeInfo;

    invoke-static/range {v0 .. v5}, Lcom/tencent/faceverify/util/FaceLib;->faceImgCut([IIILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Larn;->a:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Larn;->D:[B

    iget v4, p0, Larn;->y:I

    iget v5, p0, Larn;->z:I

    iget-object v7, p0, Larn;->C:[I

    sget v8, Lcom/tencent/faceverify/util/ImageSize;->width:I

    sget v10, Lcom/tencent/faceverify/util/ImageSize;->height:I

    invoke-static {v0, v4, v5}, Lcom/tencent/faceverify/util/Utils;->rawYuvArray2BitmapNew([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    neg-int v0, v8

    move v2, v6

    :goto_2
    if-ge v2, v10, :cond_7

    add-int v3, v0, v8

    move v1, v6

    :goto_3
    if-ge v1, v8, :cond_6

    add-int v0, v3, v1

    shl-int/lit8 v13, v0, 0x1

    aget v13, v7, v13

    sub-int v13, v5, v13

    add-int/lit8 v13, v13, -0x1

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    aget v0, v7, v0

    sget-boolean v14, Lcom/tencent/faceverify/util/Utils;->isSpecialPhone:Z

    if-nez v14, :cond_5

    sub-int v0, v4, v0

    add-int/lit8 v0, v0, -0x1

    :cond_5
    invoke-virtual {v11, v0, v13}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-virtual {v12, v1, v2, v0}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x46

    invoke-virtual {v12, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    if-eqz v8, :cond_0

    iput-boolean v9, p0, Larn;->B:Z

    array-length v7, v8

    new-instance v0, Lcom/tencent/faceverify/util/ImageInfo;

    sget v1, Lcom/tencent/faceverify/util/FaceLoc;->left:I

    sget v2, Lcom/tencent/faceverify/util/FaceLoc;->top:I

    sget v3, Lcom/tencent/faceverify/util/FaceLoc;->width:I

    sget v4, Lcom/tencent/faceverify/util/FaceLoc;->height:I

    sget v5, Lcom/tencent/faceverify/util/ImageSize;->width:I

    sget v6, Lcom/tencent/faceverify/util/ImageSize;->height:I

    invoke-direct/range {v0 .. v8}, Lcom/tencent/faceverify/util/ImageInfo;-><init>(IIIIIII[B)V

    iget-object v1, p0, Larn;->I:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Larn;->I:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Larq;

    invoke-direct {v1, p0}, Larq;-><init>(Larn;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Larn;->O:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Larn;->N:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Larn;->i:La;

    iget-object v1, v0, La;->a:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, La;->c:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, La;->d:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, La;->a:Landroid/hardware/Camera;

    new-instance v1, Lb;

    invoke-direct {v1}, Lb;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Message;)V
    .locals 7

    const v5, 0x7f0b0a75

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Larn;->P:Z

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Larn;->M:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Larn;->M:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Larn;->M:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_0
    if-nez v0, :cond_2

    iget-object v0, p0, Larn;->J:Landroid/content/Context;

    invoke-static {v0, v5}, Lha;->b(Landroid/content/Context;I)V

    sget-object v0, Larn;->a:Ljava/lang/String;

    iget-object v0, p0, Larn;->J:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    iget-object v0, p0, Larn;->J:Landroid/content/Context;

    check-cast v0, Lcom/tencent/qqpimsecure/ui/activity/faceverify/CameraCaptureActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/faceverify/CameraCaptureActivity;->finish()V

    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    new-array v0, v4, [I

    new-array v3, v4, [I

    new-array v4, v4, [I

    iget-object v5, p0, Larn;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    iget-object v5, p0, Larn;->k:Landroid/view/SurfaceView;

    invoke-virtual {v5, v3}, Landroid/view/SurfaceView;->getLocationOnScreen([I)V

    iget-object v5, p0, Larn;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    sget-object v5, Larn;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mSurfaceLl: x, y, width, height: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v4, v4, v1

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Larn;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Larn;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v4, Larn;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mSurfaceView: x, y, width, height: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v3, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Larn;->k:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Larn;->k:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v3, Larn;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mPromptLl: x, y, width, height: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Larn;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Larn;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Larn;->L:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Larn;->i:La;

    iget-object v3, v3, La;->b:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v0

    iget v5, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v5

    int-to-float v5, v0

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float v3, v5, v3

    iput v3, p0, Larn;->s:F

    iget v3, p0, Larn;->u:I

    int-to-float v3, v3

    iget v5, p0, Larn;->s:F

    const/high16 v6, 0x4000

    mul-float/2addr v5, v6

    div-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Larn;->t:I

    sget-object v3, Larn;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "mScale: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Larn;->s:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mEyeSquareMarkBias: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Larn;->t:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v3, p0, Larn;->k:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v5, p0, Larn;->k:Landroid/view/SurfaceView;

    invoke-virtual {v5, v3}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Larn;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Larn;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Larn;->R:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Larn;->R:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Larn;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Larn;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget-object v0, Larn;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "mPromptLl: width, height: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Larn;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Larn;->o:Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Larn;->R:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Larn;->R:Landroid/widget/ImageView;

    iget-object v2, p0, Larn;->Q:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v1, p0, Larn;->O:Z

    goto/16 :goto_1
.end method

.method public final b(Landroid/os/Message;)V
    .locals 12

    const/4 v4, 0x7

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iput-object v0, p0, Larn;->D:[B

    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Larn;->y:I

    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Larn;->z:I

    iget-boolean v0, p0, Larn;->N:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Larn;->S:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Larn;->S:I

    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Larn;->s:F

    sget v3, Lcom/tencent/faceverify/util/FaceLoc;->left:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Larn;->s:F

    sget v5, Lcom/tencent/faceverify/util/FaceLoc;->top:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget v5, p0, Larn;->s:F

    sget v6, Lcom/tencent/faceverify/util/FaceLoc;->left:I

    sget v7, Lcom/tencent/faceverify/util/FaceLoc;->width:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Larn;->s:F

    sget v7, Lcom/tencent/faceverify/util/FaceLoc;->top:I

    sget v9, Lcom/tencent/faceverify/util/FaceLoc;->height:I

    add-int/2addr v7, v9

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v0, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Larn;->s:F

    sget v5, Lcom/tencent/faceverify/util/EyeInfo;->xLeft:I

    iget v6, p0, Larn;->t:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget v5, p0, Larn;->s:F

    sget v6, Lcom/tencent/faceverify/util/EyeInfo;->yLeft:I

    iget v7, p0, Larn;->t:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Larn;->s:F

    sget v7, Lcom/tencent/faceverify/util/EyeInfo;->xLeft:I

    iget v9, p0, Larn;->t:I

    add-int/2addr v7, v9

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p0, Larn;->s:F

    sget v9, Lcom/tencent/faceverify/util/EyeInfo;->yLeft:I

    iget v10, p0, Larn;->t:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v7, v9

    float-to-int v7, v7

    invoke-direct {v2, v3, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    iget v5, p0, Larn;->s:F

    sget v6, Lcom/tencent/faceverify/util/EyeInfo;->xRight:I

    iget v7, p0, Larn;->t:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Larn;->s:F

    sget v7, Lcom/tencent/faceverify/util/EyeInfo;->yRight:I

    iget v9, p0, Larn;->t:I

    sub-int/2addr v7, v9

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p0, Larn;->s:F

    sget v9, Lcom/tencent/faceverify/util/EyeInfo;->xRight:I

    iget v10, p0, Larn;->t:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v7, v9

    float-to-int v7, v7

    iget v9, p0, Larn;->s:F

    sget v10, Lcom/tencent/faceverify/util/EyeInfo;->yRight:I

    iget v11, p0, Larn;->t:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-direct {v3, v5, v6, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, p0, Larn;->m:Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;

    invoke-virtual {v5, v1, v0, v2, v3}, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->a(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v0, p0, Larn;->A:I

    iget v2, p0, Larn;->b:I

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Larn;->F:Z

    if-nez v0, :cond_3

    iput-boolean v1, p0, Larn;->F:Z

    iget-object v0, p0, Larn;->q:Landroid/widget/TextView;

    iget-object v2, p0, Larn;->J:Landroid/content/Context;

    const v3, 0x7f0b0a77

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    move v8, v1

    :goto_1
    if-eqz v8, :cond_0

    iget-object v0, p0, Larn;->j:Larm;

    invoke-virtual {v0}, Larm;->b()V

    goto/16 :goto_0

    :cond_3
    iput-boolean v1, p0, Larn;->F:Z

    iget v0, p0, Larn;->S:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    iput-boolean v1, p0, Larn;->N:Z

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    iget v0, p0, Larn;->w:I

    iget v1, p0, Larn;->y:I

    iget v2, p0, Larn;->z:I

    iget-object v3, p0, Larn;->D:[B

    iget-boolean v5, p0, Larn;->F:Z

    iget-object v6, p0, Larn;->o:Landroid/view/ViewGroup$LayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v7, p0, Larn;->o:Landroid/view/ViewGroup$LayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static/range {v0 .. v7}, Larn;->a(III[BIZII)Larr;

    move-result-object v0

    const-string v1, "dataInfo4Ui"

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Larn;->J:Landroid/content/Context;

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/faceverify/AddUserInfoActivity;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Larn;->J:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Larn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Larn;->h()Z

    iget-object v0, p0, Larn;->j:Larm;

    invoke-virtual {v0}, Larm;->b()V

    goto/16 :goto_0

    :pswitch_1
    iput v8, p0, Larn;->S:I

    iget-object v0, p0, Larn;->m:Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;

    invoke-virtual {v0, v8, v2, v2, v2}, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->a(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Larn;->j:Larm;

    invoke-virtual {v0}, Larm;->b()V

    iget v0, p0, Larn;->A:I

    iget v2, p0, Larn;->c:I

    if-ne v0, v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v5, p0, Larn;->G:J

    sub-long/2addr v2, v5

    iget v0, p0, Larn;->f:I

    int-to-long v5, v0

    cmp-long v0, v2, v5

    if-lez v0, :cond_5

    move v0, v1

    :goto_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Larn;->j:Larm;

    invoke-virtual {v0, v4}, Larm;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_5
    move v0, v8

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c(Landroid/os/Message;)V
    .locals 10

    const/4 v4, 0x7

    const/4 v9, 0x2

    const/4 v0, 0x1

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iget-boolean v1, p0, Larn;->N:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v2, 0x6740

    invoke-virtual {v1, v2}, Lnd;->a(I)V

    iput-boolean v0, p0, Larn;->N:Z

    iget v0, p0, Larn;->w:I

    iget v1, p0, Larn;->y:I

    iget v2, p0, Larn;->z:I

    iget-object v3, p0, Larn;->D:[B

    const/4 v4, 0x6

    iget-boolean v5, p0, Larn;->F:Z

    iget-object v6, p0, Larn;->o:Landroid/view/ViewGroup$LayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v7, p0, Larn;->o:Landroid/view/ViewGroup$LayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static/range {v0 .. v7}, Larn;->a(III[BIZII)Larr;

    move-result-object v0

    const-string v1, "dataInfo4Ui"

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "type"

    iget v1, p0, Larn;->U:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v0, p0, Larn;->U:I

    if-ne v0, v9, :cond_2

    iget-object v0, p0, Larn;->W:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "PkgName"

    iget-object v1, p0, Larn;->W:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v0, "CameraCaptureFirstTry"

    iget-boolean v1, p0, Larn;->T:Z

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Larn;->J:Landroid/content/Context;

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/faceverify/VerifyResultActivity;

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Larn;->J:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Larn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, p0, Larn;->G:J

    sub-long/2addr v1, v5

    iget v3, p0, Larn;->f:I

    int-to-long v5, v3

    cmp-long v1, v1, v5

    if-lez v1, :cond_3

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Larn;->j:Larm;

    invoke-virtual {v0, v4}, Larm;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_2
    iput-boolean v0, p0, Larn;->N:Z

    const/16 v0, 0x673f

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    iget v0, p0, Larn;->w:I

    iget v1, p0, Larn;->y:I

    iget v2, p0, Larn;->z:I

    iget-object v3, p0, Larn;->D:[B

    iget-boolean v5, p0, Larn;->F:Z

    iget-object v6, p0, Larn;->o:Landroid/view/ViewGroup$LayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v7, p0, Larn;->o:Landroid/view/ViewGroup$LayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static/range {v0 .. v7}, Larn;->a(III[BIZII)Larr;

    move-result-object v0

    const-string v1, "dataInfo4Ui"

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "type"

    iget v1, p0, Larn;->U:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v0, p0, Larn;->U:I

    if-ne v0, v9, :cond_4

    iget-object v0, p0, Larn;->W:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "PkgName"

    iget-object v1, p0, Larn;->W:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string v0, "CameraCaptureFirstTry"

    iget-boolean v1, p0, Larn;->T:Z

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Larn;->J:Landroid/content/Context;

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/faceverify/VerifyResultActivity;

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Larn;->J:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Larn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Larn;->r:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final f()La;
    .locals 1

    iget-object v0, p0, Larn;->i:La;

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Larn;->j:Larm;

    return-object v0
.end method

.method public final onBackClick()V
    .locals 2

    iget-boolean v0, p0, Larn;->P:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Larn;->N:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Larn;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mCanExit:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Larn;->P:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mRequestExitFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Larn;->N:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Larn;->N:Z

    iget v0, p0, Larn;->U:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v0, Lyj;

    iget-object v1, p0, Larn;->J:Landroid/content/Context;

    invoke-direct {v0, v1}, Lyj;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lyj;->a()V

    :cond_2
    invoke-virtual {p0}, Larn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Larn;->a:Ljava/lang/String;

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Larn;->H:J

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Larn;->L:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Larn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Larn;->L:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const v0, 0x7f08011c

    invoke-virtual {p0, v0}, Larn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;

    iput-object v0, p0, Larn;->m:Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;

    const v0, 0x7f08011b

    invoke-virtual {p0, v0}, Larn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Larn;->k:Landroid/view/SurfaceView;

    const v0, 0x7f08011e

    invoke-virtual {p0, v0}, Larn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Larn;->n:Landroid/widget/LinearLayout;

    const v0, 0x7f08011f

    invoke-virtual {p0, v0}, Larn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Larn;->q:Landroid/widget/TextView;

    const v0, 0x7f08011a

    invoke-virtual {p0, v0}, Larn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Larn;->p:Landroid/widget/FrameLayout;

    const v0, 0x7f080119

    invoke-virtual {p0, v0}, Larn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Larn;->r:Landroid/widget/TextView;

    const v0, 0x7f08011d

    invoke-virtual {p0, v0}, Larn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Larn;->R:Landroid/widget/ImageView;

    iget-object v0, p0, Larn;->J:Landroid/content/Context;

    const v1, 0x7f040010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Larn;->Q:Landroid/view/animation/Animation;

    invoke-static {}, Lcom/tencent/faceverify/util/Utils;->getCameraInfoFacingFrontConst()I

    move-result v0

    iput v0, p0, Larn;->v:I

    new-instance v0, Larm;

    invoke-direct {v0, p0}, Larm;-><init>(Larn;)V

    iput-object v0, p0, Larn;->j:Larm;

    iget-object v0, p0, Larn;->k:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Larn;->l:Landroid/view/SurfaceHolder;

    iput-boolean v3, p0, Larn;->B:Z

    iput-boolean v3, p0, Larn;->N:Z

    new-instance v0, Lg;

    invoke-direct {v0}, Lg;-><init>()V

    iput-object v0, p0, Larn;->E:Lg;

    iput-boolean v3, p0, Larn;->O:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Larn;->P:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Larn;->J:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Larn;->M:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Larn;->M:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Larn;->M:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    invoke-virtual {p0}, Larn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Larn;->U:I

    const-string v1, "CameraCaptureAction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Larn;->V:Ljava/lang/String;

    iget v1, p0, Larn;->U:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "PkgName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Larn;->W:Ljava/lang/String;

    const v1, 0x7f0b0077

    invoke-virtual {p0, v1}, Larn;->setBackText(I)V

    :cond_0
    const-string v1, "CameraCaptureFirstTry"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Larn;->T:Z

    iget-boolean v0, p0, Larn;->T:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Larn;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Larn;->r:Landroid/widget/TextView;

    const v1, 0x7f0b0a7c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Larn;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Larn;->j:Larm;

    const/16 v1, 0xc

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Larm;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    iget-object v0, p0, Larn;->V:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Larn;->V:Ljava/lang/String;

    const-string v1, "CameraCaptureActionInit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Larn;->b:I

    iput v0, p0, Larn;->A:I

    :goto_0
    iget-object v0, p0, Larn;->J:Landroid/content/Context;

    invoke-static {v0}, La;->g(Landroid/content/Context;)Lfl;

    move-result-object v0

    sget-object v1, Lfl;->d:Lfl;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Larn;->J:Landroid/content/Context;

    const v2, 0x7f0b0a6f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Larn;->A:I

    iget v3, p0, Larn;->b:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Larn;->J:Landroid/content/Context;

    invoke-static {v2, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Larn;->g()V

    :cond_3
    sget-object v1, Lfl;->a:Lfl;

    if-ne v0, v1, :cond_d

    const/16 v0, 0x3a98

    iput v0, p0, Larn;->f:I

    :goto_1
    iget-object v0, p0, Larn;->K:Lho;

    invoke-virtual {v0}, Lho;->cI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Larn;->x:Ljava/lang/String;

    iget-object v0, p0, Larn;->x:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Larn;->x:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-object v2, p0, Larn;->J:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_5
    :goto_2
    iput-object v0, p0, Larn;->x:Ljava/lang/String;

    iget-object v0, p0, Larn;->x:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Larn;->x:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Larn;->K:Lho;

    iget-object v1, p0, Larn;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lho;->G(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Larn;->x:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Larn;->x:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    iget-object v0, p0, Larn;->J:Landroid/content/Context;

    const v1, 0x7f0b0a71

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Larn;->A:I

    iget v2, p0, Larn;->b:I

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Larn;->J:Landroid/content/Context;

    invoke-static {v1, v0}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    invoke-direct {p0}, Larn;->g()V

    :cond_9
    invoke-static {}, Larn;->b()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Larn;->J:Landroid/content/Context;

    const v1, 0x7f0b0a70

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Larn;->A:I

    iget v2, p0, Larn;->b:I

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Larn;->J:Landroid/content/Context;

    invoke-static {v1, v0}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_a
    invoke-direct {p0}, Larn;->g()V

    :cond_b
    iget-object v0, p0, Larn;->l:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Larn;->l:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void

    :cond_c
    iget v0, p0, Larn;->c:I

    iput v0, p0, Larn;->A:I

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x7530

    iput v0, p0, Larn;->f:I

    goto/16 :goto_1

    :cond_e
    invoke-static {v2}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_f
    move-object v0, v1

    goto :goto_2
.end method

.method public final onDestroy()V
    .locals 1

    sget-object v0, Larn;->a:Ljava/lang/String;

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    invoke-static {}, Larn;->c()Z

    return-void
.end method

.method public final onOptionClick(I)V
    .locals 5

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onOptionClick(I)V

    iget-boolean v0, p0, Larn;->P:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Larn;->N:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Larn;->N:Z

    iget-object v0, p0, Larn;->J:Landroid/content/Context;

    iget v1, p0, Larn;->U:I

    iget-object v2, p0, Larn;->W:Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/tencent/qqpimsecure/ui/activity/privacy/PrivacyPatternPasswordEnterActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, -0x1

    invoke-static {v3, v1, v4, v2}, La;->a(Landroid/content/Intent;IILjava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Larn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Larn;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mCanExit:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Larn;->P:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mRequestExitFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Larn;->N:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public final onPause()V
    .locals 1

    sget-object v0, Larn;->a:Ljava/lang/String;

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v0, Larn;->a:Ljava/lang/String;

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    iget v0, p0, Larn;->U:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f0b0077

    invoke-virtual {p0, v0}, Larn;->setBackText(I)V

    :cond_0
    iput v3, p0, Larn;->S:I

    iget-object v0, p0, Larn;->m:Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;

    invoke-virtual {v0, v3, v2, v2, v2}, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->a(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v0, p0, Larn;->A:I

    iget v1, p0, Larn;->c:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Larn;->q:Landroid/widget/TextView;

    iget-object v1, p0, Larn;->J:Landroid/content/Context;

    const v2, 0x7f0b0a8b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iput-boolean v3, p0, Larn;->N:Z

    return-void

    :cond_1
    iget-object v0, p0, Larn;->q:Landroid/widget/TextView;

    iget-object v1, p0, Larn;->J:Landroid/content/Context;

    const v2, 0x7f0b0a76

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onStart()V
    .locals 1

    sget-object v0, Larn;->a:Ljava/lang/String;

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStart()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    sget-object v0, Larn;->a:Ljava/lang/String;

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStop()V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 2

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    iget v0, p0, Larn;->A:I

    iget v1, p0, Larn;->c:I

    if-ne v0, v1, :cond_1

    const v0, 0x7f0b0a68

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    iget-object v0, p0, Larn;->J:Landroid/content/Context;

    const v1, 0x7f0200e3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleBarBackground(Landroid/content/Context;I)V

    iget-object v0, p0, Larn;->J:Landroid/content/Context;

    const v1, 0x7f020335

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonBackground(Landroid/content/Context;I)V

    iget-object v0, p0, Larn;->J:Landroid/content/Context;

    const v1, 0x7f090006

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonTextColor(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Larn;->T:Z

    if-nez v0, :cond_0

    const v0, 0x7f0200e1

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonWithImageResource(I)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleBarLayoutPadding()V

    return-void

    :cond_1
    const v0, 0x7f0b0a6b

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    goto :goto_0
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    sget-object v0, Larn;->a:Ljava/lang/String;

    sget-object v0, Larn;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "width*height: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    sget-object v0, Larn;->a:Ljava/lang/String;

    iget-object v0, p0, Larn;->M:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0a73

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Larn;->P:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Laro;

    invoke-direct {v1, p0}, Laro;-><init>(Larn;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Larn;->M:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    sget-object v0, Larn;->a:Ljava/lang/String;

    iget-object v0, p0, Larn;->R:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Larn;->N:Z

    iget-boolean v0, p0, Larn;->O:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Larp;

    invoke-direct {v1, p0}, Larp;-><init>(Larn;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
