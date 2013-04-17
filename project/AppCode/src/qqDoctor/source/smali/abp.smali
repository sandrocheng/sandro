.class public Labp;
.super Lcom/tencent/tmsecure/common/BaseService;


# static fields
.field public static a:Z

.field public static d:Z


# instance fields
.field b:Landroid/media/MediaPlayer;

.field c:Ljava/lang/String;

.field e:Landroid/media/AudioManager;

.field private f:Landroid/graphics/Bitmap;

.field private g:Laal;

.field private h:Lho;

.field private i:Landroid/content/Context;

.field private j:Landroid/net/Uri;

.field private k:Landroid/os/Handler;

.field private l:Landroid/content/BroadcastReceiver;

.field private m:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Labp;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseService;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Labp;->b:Landroid/media/MediaPlayer;

    const-string v0, ""

    iput-object v0, p0, Labp;->c:Ljava/lang/String;

    new-instance v0, Labq;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Labq;-><init>(Labp;Landroid/os/Looper;)V

    iput-object v0, p0, Labp;->k:Landroid/os/Handler;

    new-instance v0, Labs;

    invoke-direct {v0, p0}, Labs;-><init>(Labp;)V

    iput-object v0, p0, Labp;->l:Landroid/content/BroadcastReceiver;

    new-instance v0, Labt;

    invoke-direct {v0, p0}, Labt;-><init>(Labp;)V

    iput-object v0, p0, Labp;->m:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Labp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Labp;->i:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mounted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Labp;->i:Landroid/content/Context;

    iget-object v3, p0, Labp;->i:Landroid/content/Context;

    const v4, 0x7f0b088a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    sget-boolean v3, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;->a:Z

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;->a:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Labp;->i:Landroid/content/Context;

    const-class v4, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Labp;->i:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    move v0, v1

    :cond_2
    if-nez v0, :cond_4

    iget-object v0, p0, Labp;->h:Lho;

    invoke-virtual {v0}, Lho;->bM()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Labp;->h:Lho;

    invoke-virtual {v0}, Lho;->bM()I

    move-result v0

    if-ne v0, v2, :cond_3

    sput-boolean v1, Labp;->d:Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Labr;

    invoke-direct {v1, p0}, Labr;-><init>(Labp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method static synthetic b(Labp;)V
    .locals 0

    invoke-direct {p0}, Labp;->a()V

    return-void
.end method

.method private b()Z
    .locals 8

    const/16 v2, 0x64

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, ""

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v5, p0, Labp;->h:Lho;

    invoke-virtual {v5}, Lho;->bP()I

    move-result v5

    if-nez v5, :cond_3

    const-string v1, ".png"

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :cond_0
    :goto_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Labp;->h:Lho;

    invoke-virtual {v6}, Lho;->bN()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Labp;->h:Lho;

    invoke-virtual {v6}, Lho;->bN()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Labp;->h:Lho;

    invoke-virtual {v6}, Lho;->bN()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd_HHmmss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labp;->c:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v1

    const/16 v5, 0xe

    if-lt v1, v5, :cond_4

    :try_start_0
    iget-object v0, p0, Labp;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "screencap -p  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(Ljava/lang/StringBuilder;Ljava/util/List;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labp;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Labp;->i:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    :cond_2
    :goto_1
    return v4

    :cond_3
    iget-object v5, p0, Labp;->h:Lho;

    invoke-virtual {v5}, Lho;->bP()I

    move-result v5

    if-ne v5, v3, :cond_0

    const-string v1, ".jpg"

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, La;->d(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Labp;->f:Landroid/graphics/Bitmap;

    iget-object v1, p0, Labp;->h:Lho;

    invoke-virtual {v1}, Lho;->bQ()I

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_2
    iget-object v2, p0, Labp;->f:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9

    iget-object v2, p0, Labp;->f:Landroid/graphics/Bitmap;

    iget-object v4, p0, Labp;->c:Ljava/lang/String;

    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    :cond_5
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v0, v1, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labp;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Labp;->i:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6
    move v0, v3

    :goto_4
    move v4, v0

    goto :goto_1

    :cond_7
    if-ne v1, v3, :cond_8

    const/16 v1, 0x50

    goto :goto_2

    :cond_8
    const/4 v5, 0x2

    if-ne v1, v5, :cond_a

    const/16 v1, 0x32

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_9
    move v0, v4

    goto :goto_4

    :cond_a
    move v1, v2

    goto :goto_2
.end method

.method static synthetic c(Labp;)Lho;
    .locals 1

    iget-object v0, p0, Labp;->h:Lho;

    return-object v0
.end method

.method static synthetic d(Labp;)V
    .locals 3

    iget-object v0, p0, Labp;->h:Lho;

    invoke-virtual {v0}, Lho;->bM()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Labp;->d:Z

    :cond_0
    iget-object v0, p0, Labp;->h:Lho;

    iget-object v1, p0, Labp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lho;->s(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Labp;->i:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "strFileName"

    iget-object v2, p0, Labp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Labp;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic e(Labp;)Z
    .locals 1

    invoke-direct {p0}, Labp;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Labp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Labp;->k:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBind()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Labp;->i:Landroid/content/Context;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Labp;->h:Lho;

    iget-object v0, p0, Labp;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const-string v0, "file:///system/media/audio/ui/camera_click.ogg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Labp;->j:Landroid/net/Uri;

    iget-object v0, p0, Labp;->j:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Labp;->i:Landroid/content/Context;

    iget-object v1, p0, Labp;->j:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Labp;->b:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Labp;->e:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Labp;->i:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Labp;->e:Landroid/media/AudioManager;

    :cond_1
    new-instance v0, Laal;

    iget-object v1, p0, Labp;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Laal;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Labp;->g:Laal;

    iget-object v0, p0, Labp;->g:Laal;

    new-instance v1, Laal$a;

    invoke-direct {v1, p0}, Laal$a;-><init>(Labp;)V

    invoke-virtual {v0, v1}, Laal;->a(Laal$a;)V

    iget-object v0, p0, Labp;->g:Laal;

    invoke-virtual {v0}, Laal;->a()V

    iget-object v0, p0, Labp;->l:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "notification_screenshot_action"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Labp;->m:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "shake_screenshot_action"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestory()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tencent/tmsecure/common/BaseService;->onDestory()V

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    invoke-virtual {v0, v1}, Lov;->b(Z)V

    sput-boolean v1, Labp;->d:Z

    iget-object v0, p0, Labp;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Labp;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Labp;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Labp;->b:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Labp;->g:Laal;

    invoke-virtual {v0}, Laal;->b()V

    iget-object v0, p0, Labp;->i:Landroid/content/Context;

    iget-object v1, p0, Labp;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Labp;->i:Landroid/content/Context;

    iget-object v1, p0, Labp;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "open_screenshot_service_action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Labp;->h:Lho;

    invoke-virtual {v0}, Lho;->bM()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lov;->b(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    invoke-virtual {v0, v3}, Lov;->b(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification_screenshot_action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Labp;->k:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shake_screenshot_action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Labp;->a()V

    goto :goto_0
.end method
