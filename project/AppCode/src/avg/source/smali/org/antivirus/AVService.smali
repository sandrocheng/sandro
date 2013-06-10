.class public Lorg/antivirus/AVService;
.super Lorg/antivirus/core/AVCoreService;


# static fields
.field public static final c_actionAcceptLicense:I = 0x72

.field public static final c_actionAutoScan:I = 0x141

.field public static final c_actionBatteryUpdate:I = 0x13a

.field public static final c_actionBatteryUpdateForWidget:I = 0x13b

.field public static final c_actionBrowseForMe:I = 0x78

.field public static final c_actionBrowseForMeDefBrowserTab:I = 0x7a

.field public static final c_actionBuyPro:I = 0x77

.field public static final c_actionC2DM:I = 0x64

.field public static final c_actionConnectivityChange:I = 0x13d

.field public static final c_actionFirstWidgetCreated:I = 0x1f4

.field public static final c_actionInstallReferrer:I = 0x66

.field public static final c_actionLastWidgetRemoved:I = 0x1f5

.field public static final c_actionLockDevice:I = 0x67

.field public static final c_actionPrdImp:I = 0x190

.field public static final c_actionRegisterBatteryReceiver:I = 0x6d

.field public static final c_actionRegisterWidgetBatteryReceiver:I = 0x6e

.field public static final c_actionSetAutoScanSMS:I = 0x76

.field public static final c_actionSetTrafficCounterAlarms:I = 0x6f

.field public static final c_actionSetUrlFiltering:I = 0x70

.field public static final c_actionShutDown:I = 0x71

.field public static final c_actionUpdateAutoScanInterval:I = 0x6b

.field public static final c_actionUpdateSchedUpdateInterval:I = 0x6a

.field public static final c_actionVersionUpdate:I = 0x75

.field public static final c_actionWidgetCloseAll:I = 0x1fa

.field public static final c_actionWidgetFlashlight:I = 0x1f9

.field public static final c_actionWidgetItemLaunched:I = 0x1f7

.field public static final c_actionWidgetRebuilt:I = 0x1f6

.field public static final c_actionWidgetTrialItemLaunched:I = 0x1f8


# instance fields
.field private volatile f:Lorg/antivirus/AVServiceHandler;

.field private g:Lorg/antivirus/antitheft/a;

.field private h:Lorg/antivirus/tuneup/bm;

.field private i:Lorg/antivirus/a/a;

.field private final j:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/core/AVCoreService;-><init>()V

    new-instance v0, Lorg/antivirus/AVService$LocalBinder;

    invoke-direct {v0, p0}, Lorg/antivirus/AVService$LocalBinder;-><init>(Lorg/antivirus/AVService;)V

    iput-object v0, p0, Lorg/antivirus/AVService;->j:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/AVService;)Lorg/antivirus/core/b/e;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/AVService;->c:Lorg/antivirus/core/b/e;

    return-object v0
.end method

.method private a(Landroid/content/Intent;I)V
    .locals 9

    const/16 v8, 0xde

    const/4 v7, 0x3

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v2, v2, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v2}, Lorg/antivirus/core/EngineSettings;->getNextSecurityUpdate()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    const-wide v2, 0x4194997000000000L

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v2, v2, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/core/EngineSettings;->setNextSecurityUpdate(J)V

    invoke-direct {p0}, Lorg/antivirus/AVService;->t()V

    iget-object v0, p0, Lorg/antivirus/AVService;->c:Lorg/antivirus/core/b/e;

    invoke-virtual {v0}, Lorg/antivirus/core/b/e;->a()Z

    move-result v0

    iget-object v1, p0, Lorg/antivirus/AVService;->c:Lorg/antivirus/core/b/e;

    iget-object v1, v1, Lorg/antivirus/core/b/e;->a:Lorg/antivirus/core/b/a;

    sput-object v1, Lorg/antivirus/AvApplication;->mAvgFeatures:Lorg/antivirus/core/b/a;

    iget-object v2, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    invoke-virtual {v2, v1}, Lorg/antivirus/core/Engine;->setAvgFeatures(Lorg/antivirus/core/b/a;)V

    iget-object v1, v1, Lorg/antivirus/core/b/a;->d:Lorg/antivirus/core/b/c;

    sget-object v2, Lorg/antivirus/core/b/c;->c:Lorg/antivirus/core/b/c;

    if-eq v1, v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/antivirus/applocker/AppBlockService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "__SAC"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lorg/antivirus/AVService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/AVService;->c:Lorg/antivirus/core/b/e;

    iget-object v0, v0, Lorg/antivirus/core/b/e;->a:Lorg/antivirus/core/b/a;

    sput-object v0, Lorg/antivirus/AvApplication;->mAvgFeatures:Lorg/antivirus/core/b/a;

    iget-object v1, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    invoke-virtual {v1, v0}, Lorg/antivirus/core/Engine;->setAvgFeatures(Lorg/antivirus/core/b/a;)V

    iget-object v1, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    sget-object v2, Lorg/antivirus/core/a/d;->e:Lorg/antivirus/core/a/d;

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lorg/antivirus/core/a/c;->a(Lorg/antivirus/core/Engine;Lorg/antivirus/core/a/d;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-static {v1}, Lorg/antivirus/AVSettings;->setBuyNotificationyShownIdx(I)V

    invoke-static {p0}, Lorg/antivirus/widget/a/k;->a(Landroid/content/Context;)Lorg/antivirus/widget/a/k;

    move-result-object v1

    invoke-virtual {v0}, Lorg/antivirus/core/b/a;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lorg/antivirus/widget/a/k;->a(Ljava/lang/Boolean;Z)Z

    iget-object v0, v0, Lorg/antivirus/core/b/a;->d:Lorg/antivirus/core/b/c;

    sget-object v1, Lorg/antivirus/core/b/c;->c:Lorg/antivirus/core/b/c;

    if-eq v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/applocker/AppBlockService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/AVService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    iget-object v0, p0, Lorg/antivirus/AVService;->g:Lorg/antivirus/antitheft/a;

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/antitheft/C2DMReceiver;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->getAutoScanInterval()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v4, v4, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v4}, Lorg/antivirus/core/EngineSettings;->getAutoScanLastTime()J

    move-result-wide v4

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "__SAC"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "__SAD"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lorg/antivirus/AVService;->f:Lorg/antivirus/AVServiceHandler;

    invoke-virtual {v1}, Lorg/antivirus/AVServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput p2, v1, Landroid/os/Message;->arg1:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/AVService;->f:Lorg/antivirus/AVServiceHandler;

    invoke-virtual {v0, v1}, Lorg/antivirus/AVServiceHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    invoke-direct {p0}, Lorg/antivirus/AVService;->s()V

    :cond_3
    invoke-direct {p0}, Lorg/antivirus/AVService;->r()V

    iget-object v0, p0, Lorg/antivirus/AVService;->f:Lorg/antivirus/AVServiceHandler;

    invoke-virtual {v0}, Lorg/antivirus/AVServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "__SAC"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lorg/antivirus/AVService;->f:Lorg/antivirus/AVServiceHandler;

    invoke-virtual {v1, v0}, Lorg/antivirus/AVServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Lorg/antivirus/AVService;I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lorg/antivirus/AVService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020051

    const v3, 0x7f090091

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/high16 v2, 0x7f09

    invoke-virtual {p0, v2}, Lorg/antivirus/AVService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x3000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "ScannerClient"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "from_notification"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, v6, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget v5, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v1, Landroid/app/Notification;->defaults:I

    const/16 v5, 0x10

    iput v5, v1, Landroid/app/Notification;->flags:I

    invoke-virtual {v1, p0, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic a(Lorg/antivirus/AVService;Lorg/antivirus/core/scanners/g;Lorg/antivirus/core/scanners/c;)V
    .locals 3

    sget-object v0, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v0, p2}, Lorg/antivirus/core/scanners/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "firstScan"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "threatFound"

    invoke-virtual {p1}, Lorg/antivirus/core/scanners/g;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "ScannerClient"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "threatCount"

    invoke-virtual {p1}, Lorg/antivirus/core/scanners/g;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lorg/antivirus/widget/a/k;->a(Landroid/content/Context;)Lorg/antivirus/widget/a/k;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/antivirus/widget/a/k;->a(Landroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method private a(Lorg/antivirus/core/b/c;Ljava/lang/Class;IIII)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lorg/antivirus/core/b/c;->c:Lorg/antivirus/core/b/c;

    invoke-virtual {p1, v1}, Lorg/antivirus/core/b/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/antivirus/AVService;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-class v1, Lorg/antivirus/ui/TransparentDummyActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "FEATURE_EXPIRED_TITLE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "FEATURE_EXPIRED_SUBTITLE"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "FEATURE_EXPIRED_BODY"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "FEATURE_EXPIRED_ICON"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic b(Lorg/antivirus/AVService;)Lorg/antivirus/core/b/e;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/AVService;->c:Lorg/antivirus/core/b/e;

    return-object v0
.end method

.method static synthetic c(Lorg/antivirus/AVService;)Lorg/antivirus/core/Engine;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    return-object v0
.end method

.method static synthetic d(Lorg/antivirus/AVService;)Lorg/antivirus/core/Engine;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    return-object v0
.end method

.method static synthetic e(Lorg/antivirus/AVService;)Lorg/antivirus/core/Engine;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    return-object v0
.end method

.method static synthetic f(Lorg/antivirus/AVService;)Lorg/antivirus/core/Engine;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    return-object v0
.end method

.method static synthetic g(Lorg/antivirus/AVService;)Lorg/antivirus/a/a;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/AVService;->i:Lorg/antivirus/a/a;

    return-object v0
.end method

.method private r()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lorg/antivirus/AVService;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/antivirus/AVService;->c:Lorg/antivirus/core/b/e;

    iget-object v0, v0, Lorg/antivirus/core/b/e;->a:Lorg/antivirus/core/b/a;

    invoke-virtual {v0}, Lorg/antivirus/core/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/antivirus/AVSettings;->getBuyNotificationyShownIdx()I

    move-result v0

    iget-object v1, p0, Lorg/antivirus/AVService;->c:Lorg/antivirus/core/b/e;

    iget-object v1, v1, Lorg/antivirus/core/b/e;->a:Lorg/antivirus/core/b/a;

    iget v2, v1, Lorg/antivirus/core/b/a;->n:I

    add-int/lit8 v1, v0, 0x1

    if-ltz v1, :cond_0

    sget-object v0, Lorg/antivirus/AVSettings;->LICENSE_BUY_NOTIFICATION_TIME:[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    sget-object v0, Lorg/antivirus/AVSettings;->LICENSE_BUY_NOTIFICATION_TIME:[I

    aget v0, v0, v1

    if-eq v2, v0, :cond_2

    sget-object v0, Lorg/antivirus/AVSettings;->LICENSE_BUY_NOTIFICATION_TIME:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    sget-object v0, Lorg/antivirus/AVSettings;->LICENSE_BUY_NOTIFICATION_TIME:[I

    aget v0, v0, v1

    if-ge v2, v0, :cond_0

    sget-object v0, Lorg/antivirus/AVSettings;->LICENSE_BUY_NOTIFICATION_TIME:[I

    add-int/lit8 v3, v1, 0x1

    aget v0, v0, v3

    if-lt v2, v0, :cond_0

    :cond_2
    if-ne v2, v6, :cond_4

    const v0, 0x7f090135

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-object v3, Lorg/antivirus/AVSettings;->LICENSE_BUY_NOTIFICATION_TIME:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    sget-object v3, Lorg/antivirus/AVSettings;->LICENSE_BUY_NOTIFICATION_TIME:[I

    aget v3, v3, v1

    if-ge v2, v3, :cond_3

    sget-object v3, Lorg/antivirus/AVSettings;->LICENSE_BUY_NOTIFICATION_TIME:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    if-ne v2, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    invoke-static {v1}, Lorg/antivirus/AVSettings;->setBuyNotificationyShownIdx(I)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/antivirus/ui/main/AntivirusMainScreen;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "from_notification"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f090133

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f020051

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v4, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Landroid/app/Notification;->defaults:I

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    invoke-virtual {v3, p0, v2, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lorg/antivirus/AVService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_4
    const v0, 0x7f090134

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "[number]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private s()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    invoke-static {v0}, Lorg/antivirus/core/a/t;->a(Lorg/antivirus/core/Engine;)V

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v6}, Lorg/antivirus/core/Engine;->sendCommMessage(ILandroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lorg/antivirus/AVSettings;->getVersionUpdateNotificationLastTime()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    invoke-static {v6, v0}, Lorg/antivirus/a/a;->a(Landroid/content/Context;Lorg/antivirus/core/Engine;)V

    :cond_0
    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    invoke-static {v0}, Lorg/antivirus/core/b/j;->a(Lorg/antivirus/core/Engine;)V

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    sget-object v1, Lorg/antivirus/core/a/d;->g:Lorg/antivirus/core/a/d;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/antivirus/core/a/c;->a(Lorg/antivirus/core/Engine;Lorg/antivirus/core/a/d;Ljava/lang/String;)V

    return-void
.end method

.method private t()V
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/antivirus/core/receivers/AlarmReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "alarm_code"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "antivirus"

    const-string v3, "antivirus"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lorg/antivirus/AVService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v2, v2, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v2}, Lorg/antivirus/core/EngineSettings;->getNextSecurityUpdate()J

    move-result-wide v2

    const-wide/32 v4, 0x2bf20

    add-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    const/16 v1, 0x400

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/Engine;->sendCommMessage(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method final a(ILorg/antivirus/core/scanners/c;Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v1, v1, Lorg/antivirus/core/Engine;->mScanManager:Lorg/antivirus/core/scanners/a;

    const v2, 0x7f090097

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090098

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast p3, Lorg/antivirus/core/scanners/ScannerSmsResult;

    new-instance v4, Lorg/antivirus/core/scanners/aa;

    iget-object v5, v1, Lorg/antivirus/core/scanners/a;->b:Lorg/antivirus/core/EngineSettings;

    invoke-direct {v4, v5}, Lorg/antivirus/core/scanners/aa;-><init>(Lorg/antivirus/core/EngineSettings;)V

    if-eqz p2, :cond_0

    sget-object v4, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    if-ne p2, v4, :cond_0

    sget-object v0, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v1, v0}, Lorg/antivirus/core/scanners/a;->b(Lorg/antivirus/core/scanners/c;)Lorg/antivirus/core/scanners/g;

    move-result-object v0

    :cond_0
    iget-object v1, v1, Lorg/antivirus/core/scanners/a;->a:Landroid/content/Context;

    invoke-static {v1, v0, p3, v2, v3}, Lorg/antivirus/core/scanners/aa;->a(Landroid/content/Context;Lorg/antivirus/core/scanners/g;Lorg/antivirus/core/scanners/ScannerSmsResult;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v1, v1, Lorg/antivirus/core/Engine;->mScanManager:Lorg/antivirus/core/scanners/a;

    check-cast p3, Lorg/antivirus/core/scanners/ScannerFilesResult;

    if-eqz p2, :cond_2

    sget-object v2, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    if-ne p2, v2, :cond_2

    sget-object v0, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v1, v0}, Lorg/antivirus/core/scanners/a;->b(Lorg/antivirus/core/scanners/c;)Lorg/antivirus/core/scanners/g;

    move-result-object v0

    :cond_2
    iget-object v1, v1, Lorg/antivirus/core/scanners/a;->a:Landroid/content/Context;

    invoke-static {v1, v0, p3}, Lorg/antivirus/core/scanners/s;->a(Landroid/content/Context;Lorg/antivirus/core/scanners/g;Lorg/antivirus/core/scanners/ScannerFilesResult;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mScanManager:Lorg/antivirus/core/scanners/a;

    check-cast p3, Lorg/antivirus/core/scanners/ScannerPackagesResult;

    invoke-virtual {v0, p2, p3}, Lorg/antivirus/core/scanners/a;->a(Lorg/antivirus/core/scanners/c;Lorg/antivirus/core/scanners/ScannerPackagesResult;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    goto :goto_0
.end method

.method final a(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v0, p0, Lorg/antivirus/AVService;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    const-string v0, "__SAD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lorg/antivirus/AVService;->a()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v2, v2, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v2}, Lorg/antivirus/core/EngineSettings;->getAutoScanLastTime()J

    move-result-wide v2

    iget-object v4, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v4, v4, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v4}, Lorg/antivirus/core/EngineSettings;->getAutoScanInterval()J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v2, v2, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/core/EngineSettings;->setAutoScanLastTime(J)V

    sget-object v0, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v6, v6}, Lorg/antivirus/AVService;->a(Lorg/antivirus/core/scanners/c;ZLorg/antivirus/core/scanners/ScannerFilesConfig;Landroid/os/Messenger;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/antivirus/AVService;->h:Lorg/antivirus/tuneup/bm;

    iget-object v1, v0, Lorg/antivirus/tuneup/bm;->b:Lorg/antivirus/tuneup/ba;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/antivirus/tuneup/ba;->a(Landroid/content/Context;)Lorg/antivirus/tuneup/ba;

    move-result-object v1

    iput-object v1, v0, Lorg/antivirus/tuneup/bm;->b:Lorg/antivirus/tuneup/ba;

    :cond_2
    iget-object v0, v0, Lorg/antivirus/tuneup/bm;->b:Lorg/antivirus/tuneup/ba;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/ba;->h()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lorg/antivirus/AVService;->h:Lorg/antivirus/tuneup/bm;

    iget-object v1, v0, Lorg/antivirus/tuneup/bm;->b:Lorg/antivirus/tuneup/ba;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/antivirus/tuneup/ba;->a(Landroid/content/Context;)Lorg/antivirus/tuneup/ba;

    move-result-object v1

    iput-object v1, v0, Lorg/antivirus/tuneup/bm;->b:Lorg/antivirus/tuneup/ba;

    :cond_3
    iget-object v0, v0, Lorg/antivirus/tuneup/bm;->b:Lorg/antivirus/tuneup/ba;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/ba;->i()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method final a(Landroid/os/Messenger;)V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/AVService;->c:Lorg/antivirus/core/b/e;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "could not send license activation result message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/antivirus/AVService;->verifyPermissions()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "F"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x800

    new-array v4, v1, [B

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lorg/antivirus/AVService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v5, "av.log"

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "av.log"

    invoke-virtual {p0, v1}, Lorg/antivirus/AVService;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_2
    :try_start_3
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_3
    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :try_start_8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmod 777 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    and-int/lit8 v3, v4, 0x1

    if-eqz v3, :cond_7

    move v3, v0

    :goto_4
    sput-boolean v3, Lorg/antivirus/core/Logger;->mLogExceptions:Z

    invoke-static {v3}, Lorg/antivirus/AVSettings;->setLogExceptions(Z)V

    and-int/lit8 v3, v4, 0x2

    if-eqz v3, :cond_8

    :goto_5
    invoke-static {v0}, Lorg/antivirus/AVSettings;->setLogToFile(Z)V

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    invoke-static {}, Lorg/antivirus/AvApplication;->getInstance()Lorg/antivirus/AvApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/AvApplication;->setLoggingOptions()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_6
    if-eqz v3, :cond_5

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :cond_6
    :goto_8
    throw v0

    :cond_7
    move v3, v1

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_4
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_7

    :catch_5
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_2
.end method

.method final a(Ljava/lang/String;Z)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v0, "com.android.browser"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.browser.application_id"

    const-string v2, "com.android.browser"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 v0, 0x1400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->getAWSserver()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "https://aws.droidsecurity.com"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lorg/antivirus/AVService;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "https://droidsecurity.appspot.com"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final a(Lorg/antivirus/core/scanners/c;ZLorg/antivirus/core/scanners/ScannerFilesConfig;Landroid/os/Messenger;)V
    .locals 11

    const/4 v1, 0x5

    const/4 v4, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-boolean v0, p0, Lorg/antivirus/AVService;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    sget-object v0, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    invoke-virtual {v0, p1}, Lorg/antivirus/core/Engine;->getScanResults(Lorg/antivirus/core/scanners/c;)Lorg/antivirus/core/scanners/g;

    move-result-object v0

    iget-wide v2, v0, Lorg/antivirus/core/scanners/g;->a:J

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    add-long/2addr v5, v7

    cmp-long v0, v2, v5

    if-ltz v0, :cond_0

    :cond_2
    if-nez p3, :cond_b

    new-instance v3, Lorg/antivirus/core/scanners/ScannerFilesConfig;

    invoke-direct {v3}, Lorg/antivirus/core/scanners/ScannerFilesConfig;-><init>()V

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->isPUPEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x1869f

    :goto_1
    iput v0, v3, Lorg/antivirus/core/scanners/ScannerFilesConfig;->g:I

    :goto_2
    iget-object v0, v3, Lorg/antivirus/core/scanners/ScannerFilesConfig;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x7

    if-le v0, v5, :cond_7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_3
    :goto_3
    iget-object v2, v3, Lorg/antivirus/core/scanners/ScannerFilesConfig;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v0, Lorg/antivirus/AVService$5;->a:[I

    invoke-virtual {p1}, Lorg/antivirus/core/scanners/c;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/io/File;

    const-string v5, "/mnt"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_7
    move-object v0, v2

    goto :goto_3

    :pswitch_0
    const/4 v2, -0x1

    if-eqz p2, :cond_8

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->isSDScanEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lorg/antivirus/core/scanners/ScannerFilesConfig;->d:Ljava/lang/Boolean;

    :goto_4
    if-eqz p2, :cond_a

    new-instance v1, Lorg/antivirus/AVService$1;

    invoke-direct {v1, p0}, Lorg/antivirus/AVService$1;-><init>(Lorg/antivirus/AVService;)V

    :goto_5
    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mScanManager:Lorg/antivirus/core/scanners/a;

    move-object v4, p4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/antivirus/core/scanners/a;->a(Lorg/antivirus/core/scanners/i;ILorg/antivirus/core/scanners/l;Landroid/os/Messenger;Lorg/antivirus/core/scanners/c;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {p0}, Lorg/antivirus/tools/AvgMisc;->isCharging(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lorg/antivirus/core/scanners/ScannerFilesConfig;->d:Ljava/lang/Boolean;

    goto :goto_4

    :pswitch_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lorg/antivirus/core/scanners/ScannerFilesConfig;->d:Ljava/lang/Boolean;

    move v2, v4

    goto :goto_4

    :pswitch_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lorg/antivirus/core/scanners/ScannerFilesConfig;->d:Ljava/lang/Boolean;

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->isPUPEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0x270f

    :cond_9
    iput v1, v3, Lorg/antivirus/core/scanners/ScannerFilesConfig;->g:I

    move v2, v4

    goto :goto_4

    :cond_a
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lorg/antivirus/AVService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/Notification;

    const v4, 0x7f020051

    const v5, 0x7f090094

    invoke-static {v5}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/high16 v4, 0x7f09

    invoke-virtual {p0, v4}, Lorg/antivirus/AVService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090095

    invoke-static {v5}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lorg/antivirus/ui/main/AntivirusMainScreen;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "ScannerClient"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v10, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iget v7, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v1, Landroid/app/Notification;->defaults:I

    const/16 v7, 0x10

    iput v7, v1, Landroid/app/Notification;->flags:I

    invoke-virtual {v1, p0, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v4, 0xe

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-instance v1, Lorg/antivirus/AVService$2;

    invoke-direct {v1, p0}, Lorg/antivirus/AVService$2;-><init>(Lorg/antivirus/AVService;)V

    goto/16 :goto_5

    :cond_b
    move-object v3, p3

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method final b()V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->isAutoScanSMS()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/antivirus/core/scanners/aa;

    iget-object v1, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v1, v1, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-direct {v0, v1}, Lorg/antivirus/core/scanners/aa;-><init>(Lorg/antivirus/core/EngineSettings;)V

    invoke-virtual {v0, p0}, Lorg/antivirus/core/scanners/aa;->b(Landroid/content/Context;)V

    iget-object v1, v0, Lorg/antivirus/core/scanners/aa;->a:Lorg/antivirus/core/scanners/d;

    iget-boolean v1, v1, Lorg/antivirus/core/scanners/d;->a:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iget-object v0, v0, Lorg/antivirus/core/scanners/aa;->a:Lorg/antivirus/core/scanners/d;

    check-cast v0, Lorg/antivirus/core/scanners/ScannerSmsResult;

    const v2, 0x7f090097

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090098

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v0, v2, v3}, Lorg/antivirus/core/scanners/aa;->a(Landroid/content/Context;Lorg/antivirus/core/scanners/g;Lorg/antivirus/core/scanners/ScannerSmsResult;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final b(ILorg/antivirus/core/scanners/c;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mScanManager:Lorg/antivirus/core/scanners/a;

    check-cast p3, Lorg/antivirus/core/scanners/ScannerPackagesResult;

    invoke-virtual {v0, p2, p3}, Lorg/antivirus/core/scanners/a;->b(Lorg/antivirus/core/scanners/c;Lorg/antivirus/core/scanners/ScannerPackagesResult;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mScanManager:Lorg/antivirus/core/scanners/a;

    check-cast p3, Lorg/antivirus/core/scanners/ad;

    invoke-virtual {v0, p2, p3}, Lorg/antivirus/core/scanners/a;->a(Lorg/antivirus/core/scanners/c;Lorg/antivirus/core/scanners/ad;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    goto :goto_0
.end method

.method final b(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/AVService;->g:Lorg/antivirus/antitheft/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "__SAC"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v2, "stopshout"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lorg/antivirus/antitheft/a;->c:Lorg/antivirus/antitheft/j;

    invoke-virtual {v0}, Lorg/antivirus/antitheft/j;->a()V

    :goto_0
    return-void

    :cond_0
    const-string v2, "fromsms"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lorg/antivirus/antitheft/a;->c:Lorg/antivirus/antitheft/j;

    invoke-virtual {v0, p1, v1}, Lorg/antivirus/antitheft/j;->b(Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/antivirus/antitheft/a;->c:Lorg/antivirus/antitheft/j;

    invoke-virtual {v0, p1, v1}, Lorg/antivirus/antitheft/j;->a(Landroid/os/Bundle;Landroid/content/Context;)Z

    goto :goto_0
.end method

.method final c()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/antivirus/AVSettings;->setShowActivationScreen(Z)V

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    iget-object v2, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v2, v2, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    const-wide/32 v3, 0x240c8400

    invoke-virtual {v2, v3, v4}, Lorg/antivirus/core/EngineSettings;->setAutoScanInterval(J)V

    iget-object v2, p0, Lorg/antivirus/AVService;->c:Lorg/antivirus/core/b/e;

    iget-object v2, v2, Lorg/antivirus/core/b/e;->b:Lorg/antivirus/core/b/g;

    invoke-virtual {v2}, Lorg/antivirus/core/b/g;->b()V

    iput-boolean v0, p0, Lorg/antivirus/AVService;->a:Z

    iget-object v2, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    invoke-virtual {v2}, Lorg/antivirus/core/Engine;->enable()V

    const-class v2, Lorg/antivirus/ui/scan/ScanBeforeInstallActivity;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-le v3, v4, :cond_1

    :goto_0
    invoke-static {p0, v2, v0}, Lorg/antivirus/core/scanners/w;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    invoke-static {v0}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/Engine;)V

    invoke-static {}, Lorg/antivirus/AVSettings;->isUrlAntiPhishingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/AVService;->d:Lorg/antivirus/core/d/e;

    iget-object v1, p0, Lorg/antivirus/AVService;->f:Lorg/antivirus/AVServiceHandler;

    invoke-virtual {v0, p0, v1}, Lorg/antivirus/core/d/e;->a(Landroid/content/Context;Landroid/os/Handler;)V

    :cond_0
    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mScanManager:Lorg/antivirus/core/scanners/a;

    invoke-virtual {v0}, Lorg/antivirus/core/scanners/a;->a()V

    iget-object v0, p0, Lorg/antivirus/AVService;->g:Lorg/antivirus/antitheft/a;

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/antitheft/C2DMReceiver;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lorg/antivirus/apploader/d;->a(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/applocker/AppBlockService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/antivirus/AVService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method final c(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/AVService;->d:Lorg/antivirus/core/d/e;

    invoke-virtual {p0}, Lorg/antivirus/AVService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "__SAD"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/antivirus/ui/urlFilter/UrlWarningActivity;

    invoke-virtual {v0, v1, v2, v3}, Lorg/antivirus/core/d/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "UrlChecker"

    const-string v2, "Bad"

    invoke-static {p0, v1, v2, v0}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final d()V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/AVService;->g:Lorg/antivirus/antitheft/a;

    invoke-virtual {p0}, Lorg/antivirus/AVService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lorg/antivirus/antitheft/a;->a:Lorg/antivirus/antitheft/q;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/antitheft/q;->a(Landroid/content/Context;)V

    return-void
.end method

.method final d(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/AVService;->d:Lorg/antivirus/core/d/e;

    const-string v1, "__SAD"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lorg/antivirus/core/d/e;->j:Lorg/antivirus/core/d/a;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final e()V
    .locals 3

    invoke-static {}, Lorg/antivirus/AVSettings;->isUrlAntiPhishingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/AVService;->d:Lorg/antivirus/core/d/e;

    invoke-virtual {p0}, Lorg/antivirus/AVService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/antivirus/AVService;->f:Lorg/antivirus/AVServiceHandler;

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/e;->a(Landroid/content/Context;Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/antivirus/AVService;->d:Lorg/antivirus/core/d/e;

    invoke-virtual {p0}, Lorg/antivirus/AVService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/core/d/e;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method final e(Landroid/os/Bundle;)V
    .locals 9

    const/16 v8, 0xb

    const/4 v6, 0x2

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/antivirus/AVService;->h:Lorg/antivirus/tuneup/bm;

    iget-object v0, v0, Lorg/antivirus/tuneup/bm;->a:Lorg/antivirus/tuneup/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lorg/antivirus/AVSettings;->isPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "level"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "status"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lorg/antivirus/AVSettings;->getLastBatteryThreshold()I

    move-result v3

    invoke-static {}, Lorg/antivirus/AVSettings;->getPowerSavingModeThreshold()I

    move-result v4

    if-gt v1, v4, :cond_1

    if-eq v2, v6, :cond_1

    if-nez v3, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x2442

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "from_notification"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090111

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f0200ef

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v3, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    const v5, 0x7f090112

    invoke-static {v5}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v3, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {v1}, Lorg/antivirus/AVSettings;->setLastBatteryThreshold(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v3, :cond_0

    invoke-static {v5}, Lorg/antivirus/AVSettings;->setLastBatteryThreshold(I)V

    if-ne v2, v6, :cond_0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method final f()V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/AVService;->h:Lorg/antivirus/tuneup/bm;

    invoke-static {}, Lorg/antivirus/tuneup/ba;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/antivirus/tuneup/bm;->b:Lorg/antivirus/tuneup/ba;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/antivirus/tuneup/ba;->a(Landroid/content/Context;)Lorg/antivirus/tuneup/ba;

    move-result-object v1

    iput-object v1, v0, Lorg/antivirus/tuneup/bm;->b:Lorg/antivirus/tuneup/ba;

    :cond_0
    iget-object v0, v0, Lorg/antivirus/tuneup/bm;->b:Lorg/antivirus/tuneup/ba;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/ba;->h()V

    :cond_1
    return-void
.end method

.method final f(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/AVService;->h:Lorg/antivirus/tuneup/bm;

    iget-object v0, v0, Lorg/antivirus/tuneup/bm;->a:Lorg/antivirus/tuneup/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/widget/a/k;->a(Landroid/content/Context;)Lorg/antivirus/widget/a/k;

    move-result-object v0

    sget-object v1, Lorg/antivirus/widget/a/i;->b:Lorg/antivirus/widget/a/i;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->a()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/antivirus/widget/a/k;->a(Landroid/os/Bundle;I)Z

    return-void
.end method

.method final g()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mScanManager:Lorg/antivirus/core/scanners/a;

    invoke-virtual {v0}, Lorg/antivirus/core/scanners/a;->a()V

    return-void
.end method

.method final g(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/AVService;->h:Lorg/antivirus/tuneup/bm;

    const-string v1, "__SAD"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/antivirus/tuneup/bm;->a:Lorg/antivirus/tuneup/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/g;->a(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, v0, Lorg/antivirus/tuneup/bm;->a:Lorg/antivirus/tuneup/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/g;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method final h()V
    .locals 9

    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/antivirus/AVService;->c:Lorg/antivirus/core/b/e;

    iget-object v0, v0, Lorg/antivirus/core/b/e;->a:Lorg/antivirus/core/b/a;

    iget-boolean v0, v0, Lorg/antivirus/core/b/a;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lorg/antivirus/AVSettings;->getAcceptLicenseReminderTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    invoke-static {v2, v3}, Lorg/antivirus/AVSettings;->setAcceptLicenseReminderTime(J)V

    invoke-virtual {p0}, Lorg/antivirus/AVService;->stopSelf()V

    goto :goto_0

    :cond_2
    cmp-long v4, v0, v7

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lorg/antivirus/AVService;->stopSelf()V

    goto :goto_0

    :cond_3
    const-wide/32 v4, 0x240c8400

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    invoke-static {v7, v8}, Lorg/antivirus/AVSettings;->setAcceptLicenseReminderTime(J)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lorg/antivirus/AVService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020051

    const v3, 0x7f0901cd

    invoke-virtual {p0, v3}, Lorg/antivirus/AVService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/antivirus/ui/main/ActivationActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v6, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget v3, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v1, Landroid/app/Notification;->defaults:I

    const/16 v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    const/high16 v3, 0x7f09

    invoke-virtual {p0, v3}, Lorg/antivirus/AVService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0901cc

    invoke-virtual {p0, v4}, Lorg/antivirus/AVService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v3, v4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v2, 0x7d2

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method final h(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/AVService;->h:Lorg/antivirus/tuneup/bm;

    const-string v1, "__SAD"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lorg/antivirus/tuneup/bm;->a:Lorg/antivirus/tuneup/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lorg/antivirus/tuneup/g;->a:Lorg/antivirus/tuneup/h;

    if-nez v2, :cond_0

    new-instance v2, Lorg/antivirus/tuneup/h;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lorg/antivirus/tuneup/h;-><init>(I)V

    iput-object v2, v0, Lorg/antivirus/tuneup/g;->a:Lorg/antivirus/tuneup/h;

    iget-object v0, v0, Lorg/antivirus/tuneup/g;->a:Lorg/antivirus/tuneup/h;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v0, Lorg/antivirus/tuneup/bm;->a:Lorg/antivirus/tuneup/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/g;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method final i()V
    .locals 3

    :try_start_0
    const-string v0, "upgrade"

    const-string v1, "antivirusPro"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/antivirus/AVService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v1, v1, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-static {v0, v1}, Lorg/antivirus/core/telephony/TelephonyInfo;->getUniqueId(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/purchase/dispatch?device_sn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&varCode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/antivirus/AVService;->c:Lorg/antivirus/core/b/e;

    iget-object v0, v0, Lorg/antivirus/core/b/e;->a:Lorg/antivirus/core/b/a;

    iget v0, v0, Lorg/antivirus/core/b/a;->o:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&fs="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/antivirus/AVService;->c:Lorg/antivirus/core/b/e;

    iget-object v0, v0, Lorg/antivirus/core/b/e;->a:Lorg/antivirus/core/b/a;

    iget v0, v0, Lorg/antivirus/core/b/a;->p:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/antivirus/AVService;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method final i(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lorg/antivirus/AVService;->h:Lorg/antivirus/tuneup/bm;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lorg/antivirus/tuneup/ShutDownReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "__SAD"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, v0, Lorg/antivirus/tuneup/bm;->b:Lorg/antivirus/tuneup/ba;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/antivirus/tuneup/ba;->a(Landroid/content/Context;)Lorg/antivirus/tuneup/ba;

    move-result-object v4

    iput-object v4, v0, Lorg/antivirus/tuneup/bm;->b:Lorg/antivirus/tuneup/ba;

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v2, v1, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    iget-object v0, v0, Lorg/antivirus/tuneup/bm;->b:Lorg/antivirus/tuneup/ba;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/ba;->j()V

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    iget-object v0, v0, Lorg/antivirus/tuneup/bm;->b:Lorg/antivirus/tuneup/ba;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/ba;->l()V

    goto :goto_0
.end method

.method final j()V
    .locals 6

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lorg/antivirus/AVService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v2, v2, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v2}, Lorg/antivirus/core/EngineSettings;->getLastSecurityUpdate()J

    move-result-wide v2

    const-wide/32 v4, 0xa4cb800

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-direct {p0}, Lorg/antivirus/AVService;->s()V

    :cond_1
    iget-object v0, p0, Lorg/antivirus/AVService;->h:Lorg/antivirus/tuneup/bm;

    invoke-static {}, Lorg/antivirus/tuneup/ba;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/antivirus/tuneup/bm;->b:Lorg/antivirus/tuneup/ba;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/antivirus/tuneup/ba;->a(Landroid/content/Context;)Lorg/antivirus/tuneup/ba;

    move-result-object v1

    iput-object v1, v0, Lorg/antivirus/tuneup/bm;->b:Lorg/antivirus/tuneup/ba;

    :cond_2
    iget-object v0, v0, Lorg/antivirus/tuneup/bm;->b:Lorg/antivirus/tuneup/ba;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/ba;->k()V

    :cond_3
    return-void
.end method

.method final j(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v1, v0, Lorg/antivirus/core/Engine;->mScanManager:Lorg/antivirus/core/scanners/a;

    const-string v0, "__SAD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/scanners/c;

    invoke-virtual {v1, v0}, Lorg/antivirus/core/scanners/a;->a(Lorg/antivirus/core/scanners/c;)V

    return-void
.end method

.method final k()V
    .locals 9

    const-wide/32 v4, 0x5265c00

    const/4 v7, 0x2

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v3, v0, Lorg/antivirus/core/Engine;->mScanManager:Lorg/antivirus/core/scanners/a;

    iget-object v0, v3, Lorg/antivirus/core/scanners/a;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v3, Lorg/antivirus/core/scanners/a;->a:Landroid/content/Context;

    const-class v6, Lorg/antivirus/core/receivers/AlarmReceiver;

    invoke-direct {v1, v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "alarm_code"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "antivirus"

    const-string v6, "antivirus"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v3, Lorg/antivirus/core/scanners/a;->a:Landroid/content/Context;

    const/high16 v6, 0x800

    invoke-static {v2, v7, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    :try_start_0
    iget-object v1, v3, Lorg/antivirus/core/scanners/a;->b:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v1}, Lorg/antivirus/core/EngineSettings;->getUpdateInterval()J

    move-result-wide v1

    const-wide/16 v7, -0x1

    cmp-long v7, v7, v1

    if-nez v7, :cond_0

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v1, v2}, Lorg/antivirus/core/receivers/AlarmReceiver;->isValidInterval(J)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v1, v3, Lorg/antivirus/core/scanners/a;->b:Lorg/antivirus/core/EngineSettings;

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v1, v2, v3}, Lorg/antivirus/core/EngineSettings;->setUpdateInterval(J)V

    :goto_1
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    move-wide v4, v1

    goto :goto_1
.end method

.method final k(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/AVService;->i:Lorg/antivirus/a/a;

    iget-object v1, v0, Lorg/antivirus/a/a;->c:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/antivirus/a/a;->b:Landroid/os/Handler;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lorg/antivirus/a/a;->b:Landroid/os/Handler;

    new-instance v2, Lorg/antivirus/a/c;

    invoke-direct {v2, v0, p1}, Lorg/antivirus/a/c;-><init>(Lorg/antivirus/a/a;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method final l()V
    .locals 9

    const-wide/32 v4, 0x240c8400

    const/4 v7, 0x3

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v3, v0, Lorg/antivirus/core/Engine;->mScanManager:Lorg/antivirus/core/scanners/a;

    iget-object v0, v3, Lorg/antivirus/core/scanners/a;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v3, Lorg/antivirus/core/scanners/a;->a:Landroid/content/Context;

    const-class v6, Lorg/antivirus/core/receivers/AlarmReceiver;

    invoke-direct {v1, v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "alarm_code"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "antivirus"

    const-string v6, "antivirus"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v3, Lorg/antivirus/core/scanners/a;->a:Landroid/content/Context;

    const/high16 v6, 0x800

    invoke-static {v2, v7, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    :try_start_0
    iget-object v1, v3, Lorg/antivirus/core/scanners/a;->b:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v1}, Lorg/antivirus/core/EngineSettings;->getAutoScanInterval()J

    move-result-wide v1

    const-wide/16 v7, -0x1

    cmp-long v7, v7, v1

    if-nez v7, :cond_0

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v1, v2}, Lorg/antivirus/core/receivers/AlarmReceiver;->isValidInterval(J)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    iget-object v1, v3, Lorg/antivirus/core/scanners/a;->b:Lorg/antivirus/core/EngineSettings;

    const-wide/32 v2, 0x240c8400

    invoke-virtual {v1, v2, v3}, Lorg/antivirus/core/EngineSettings;->setAutoScanInterval(J)V

    :goto_1
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    move-wide v4, v1

    goto :goto_1
.end method

.method final l(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    sget-object v1, Lorg/antivirus/core/a/d;->b:Lorg/antivirus/core/a/d;

    const-string v2, "referrer"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/antivirus/core/a/c;->a(Lorg/antivirus/core/Engine;Lorg/antivirus/core/a/d;Ljava/lang/String;)V

    return-void
.end method

.method final m(Landroid/os/Bundle;)V
    .locals 11

    iget-boolean v0, p0, Lorg/antivirus/AVService;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/antivirus/AVService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lorg/antivirus/AVSettings;->isAutoScanApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, ""

    :try_start_0
    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_1
    const-string v1, "package:"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updating"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    const-string v2, "A"

    invoke-static {v1, v0, v2}, Lorg/antivirus/core/a/z;->a(Lorg/antivirus/core/Engine;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v0

    :goto_1
    :try_start_2
    invoke-static {}, Lorg/antivirus/ui/backup/apps/RestoreActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/antivirus/ui/backup/apps/RestoreActivity;->c()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {}, Lorg/antivirus/ui/backup/apps/RestoreActivity;->c()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :try_start_3
    const-string v0, "notification"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "notification"

    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f020051

    const v6, 0x7f090096

    invoke-static {v6}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/high16 v5, 0x7f09

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f090096

    invoke-static {v6}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v3, v8, v7, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iget v8, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v4, Landroid/app/Notification;->defaults:I

    const/16 v8, 0x10

    iput v8, v4, Landroid/app/Notification;->flags:I

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-instance v1, Lorg/antivirus/tools/NotificationCanceler;

    const/16 v3, 0xf

    const-wide/16 v4, 0x1b58

    invoke-direct {v1, v0, v3, v4, v5}, Lorg/antivirus/tools/NotificationCanceler;-><init>(Landroid/app/NotificationManager;IJ)V

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    :try_start_4
    new-instance v1, Lorg/antivirus/AVService$3;

    invoke-direct {v1, p0}, Lorg/antivirus/AVService$3;-><init>(Lorg/antivirus/AVService;)V

    new-instance v3, Lorg/antivirus/core/scanners/ScannerPackagesConfig;

    invoke-direct {v3}, Lorg/antivirus/core/scanners/ScannerPackagesConfig;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->b:Ljava/lang/Boolean;

    iget-object v0, v3, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->isPUPEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x1869f

    :goto_3
    iput v0, v3, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->d:I

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mScanManager:Lorg/antivirus/core/scanners/a;

    const/4 v2, 0x1

    const/4 v4, 0x0

    sget-object v5, Lorg/antivirus/core/scanners/c;->c:Lorg/antivirus/core/scanners/c;

    invoke-virtual/range {v0 .. v5}, Lorg/antivirus/core/scanners/a;->a(Lorg/antivirus/core/scanners/i;ILorg/antivirus/core/scanners/l;Landroid/os/Messenger;Lorg/antivirus/core/scanners/c;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_3
    :try_start_5
    iget-object v1, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    const-string v2, "A"

    invoke-static {v1, v0, v2}, Lorg/antivirus/core/a/z;->a(Lorg/antivirus/core/Engine;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    move-object v2, v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :goto_4
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    move-object v2, v1

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :cond_5
    const/4 v0, 0x5

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4
.end method

.method final m()Z
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/AVService;->a:Z

    return v0
.end method

.method final n()V
    .locals 3

    const-string v0, "widget"

    const-string v1, "widget_added"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final n(Landroid/os/Bundle;)V
    .locals 5

    iget-boolean v0, p0, Lorg/antivirus/AVService;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/antivirus/AVService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "package_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "package:"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "updating"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    const-string v3, "D"

    invoke-static {v2, v1, v3}, Lorg/antivirus/core/a/z;->a(Lorg/antivirus/core/Engine;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v3, v3, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/antivirus/core/EngineSettings;->getAppUpdateAggregate(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "~0~1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/core/EngineSettings;->setAppUpdateAggregate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method final o()V
    .locals 3

    const-string v0, "widgetConfig.data"

    invoke-virtual {p0, v0}, Lorg/antivirus/AVService;->deleteFile(Ljava/lang/String;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lorg/antivirus/AVService;->SERVICE_IDENTIFIER:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "__SAC"

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "__SAD"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/AVService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v0, "widget"

    const-string v1, "widget_removed"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final o(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    const-string v1, "__SAD"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/antivirus/core/Engine;->sendCommMessage(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/AVService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lorg/antivirus/AVService;->j:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    const/4 v0, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Lorg/antivirus/core/AVCoreService;->onCreate()V

    invoke-static {p0}, Lorg/antivirus/tools/CountryIdentifier;->isCountryAllowed(Landroid/app/Service;)V

    invoke-static {}, Lorg/antivirus/AVSettings;->shouldShowActivationScreen()Z

    move-result v1

    if-nez v1, :cond_7

    :goto_0
    iput-boolean v0, p0, Lorg/antivirus/AVService;->a:Z

    new-instance v0, Lorg/antivirus/core/b/e;

    invoke-virtual {p0}, Lorg/antivirus/AVService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050007

    invoke-static {v1, v2}, Lorg/antivirus/core/AVResources;->getRawResourceOpener(Landroid/content/Context;I)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-virtual {p0}, Lorg/antivirus/AVService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050008

    invoke-static {v2, v3}, Lorg/antivirus/core/AVResources;->getRawResourceOpener(Landroid/content/Context;I)Ljava/util/concurrent/Callable;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/antivirus/core/b/e;-><init>(Landroid/content/Context;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lorg/antivirus/AVService;->c:Lorg/antivirus/core/b/e;

    iget-object v0, p0, Lorg/antivirus/AVService;->c:Lorg/antivirus/core/b/e;

    invoke-virtual {v0}, Lorg/antivirus/core/b/e;->a()Z

    move-result v7

    invoke-direct {p0}, Lorg/antivirus/AVService;->r()V

    new-instance v0, Lorg/antivirus/AVServiceHandler;

    iget-object v1, p0, Lorg/antivirus/AVService;->e:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lorg/antivirus/AVServiceHandler;-><init>(Lorg/antivirus/AVService;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/antivirus/AVService;->f:Lorg/antivirus/AVServiceHandler;

    new-instance v0, Lorg/antivirus/core/Engine;

    invoke-virtual {p0}, Lorg/antivirus/AVService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/antivirus/AVService;->c:Lorg/antivirus/core/b/e;

    iget-object v2, v2, Lorg/antivirus/core/b/e;->a:Lorg/antivirus/core/b/a;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-class v4, Lorg/antivirus/antitheft/e;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v4, Lorg/antivirus/antitheft/c;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v4, Lorg/antivirus/antitheft/f;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v4, Lorg/antivirus/antitheft/d;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v4, Lorg/antivirus/antitheft/h;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v4, Lorg/antivirus/antitheft/i;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v4, Lorg/antivirus/antitheft/g;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v4, Lorg/antivirus/applocker/h;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v4, Lorg/antivirus/ganalytics/a;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v4, Lorg/antivirus/ui/help/g;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v4, Lorg/antivirus/a/g;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/antivirus/AVService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Lorg/antivirus/core/AVResources;->getRawResourceSecDbOpener(Landroid/content/Context;[I)Ljava/util/ArrayList;

    move-result-object v4

    iget-boolean v5, p0, Lorg/antivirus/AVService;->a:Z

    invoke-direct/range {v0 .. v5}, Lorg/antivirus/core/Engine;-><init>(Landroid/content/Context;Lorg/antivirus/core/b/a;Ljava/util/List;Ljava/util/ArrayList;Z)V

    iput-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    invoke-static {p0}, Lorg/antivirus/tools/CountryIdentifier;->isCountryChina(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->getAWSserver()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->setAWSserver()V

    :cond_0
    invoke-virtual {p0}, Lorg/antivirus/AVService;->l()V

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v2, v2, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v2}, Lorg/antivirus/core/EngineSettings;->getNextSecurityUpdate()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/EngineSettings;->setLastSecurityUpdate(J)V

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/EngineSettings;->setNextSecurityUpdate(J)V

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    invoke-static {v0}, Lorg/antivirus/core/a/t;->a(Lorg/antivirus/core/Engine;)V

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v6}, Lorg/antivirus/core/Engine;->sendCommMessage(ILandroid/os/Bundle;)V

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    invoke-static {v0}, Lorg/antivirus/core/b/j;->a(Lorg/antivirus/core/Engine;)V

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    sget-object v1, Lorg/antivirus/core/a/d;->g:Lorg/antivirus/core/a/d;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/antivirus/core/a/c;->a(Lorg/antivirus/core/Engine;Lorg/antivirus/core/a/d;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lorg/antivirus/AVSettings;->getVersionUpdateNotificationLastTime()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    invoke-static {v6, v0}, Lorg/antivirus/a/a;->a(Landroid/content/Context;Lorg/antivirus/core/Engine;)V

    :cond_1
    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/EngineSettings;->setAutoScanLastTime(J)V

    :cond_2
    iget-object v0, p0, Lorg/antivirus/AVService;->c:Lorg/antivirus/core/b/e;

    iget-object v0, v0, Lorg/antivirus/core/b/e;->a:Lorg/antivirus/core/b/a;

    sput-object v0, Lorg/antivirus/AvApplication;->mAvgFeatures:Lorg/antivirus/core/b/a;

    invoke-direct {p0}, Lorg/antivirus/AVService;->t()V

    new-instance v0, Lorg/antivirus/tuneup/bm;

    invoke-direct {v0, p0}, Lorg/antivirus/tuneup/bm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/antivirus/AVService;->h:Lorg/antivirus/tuneup/bm;

    new-instance v0, Lorg/antivirus/antitheft/a;

    iget-object v1, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v2, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    iget-object v2, v2, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-direct {v0, p0, v1, v2}, Lorg/antivirus/antitheft/a;-><init>(Landroid/content/Context;Lorg/antivirus/core/Engine;Lorg/antivirus/core/EngineSettings;)V

    iput-object v0, p0, Lorg/antivirus/AVService;->g:Lorg/antivirus/antitheft/a;

    iget-boolean v0, p0, Lorg/antivirus/AVService;->a:Z

    if-eqz v0, :cond_3

    invoke-static {p0}, Lorg/antivirus/apploader/d;->a(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/applocker/AppBlockService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/antivirus/AVService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    invoke-virtual {p0}, Lorg/antivirus/AVService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050009

    invoke-static {v0, v1}, Lorg/antivirus/core/AVResources;->getRawResourceOpener(Landroid/content/Context;I)Ljava/util/concurrent/Callable;

    move-result-object v0

    new-instance v1, Lorg/antivirus/core/d/e;

    invoke-direct {v1, v0}, Lorg/antivirus/core/d/e;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lorg/antivirus/AVService;->d:Lorg/antivirus/core/d/e;

    invoke-static {}, Lorg/antivirus/AVSettings;->isUrlAntiPhishingEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/antivirus/AVService;->d:Lorg/antivirus/core/d/e;

    iget-object v1, p0, Lorg/antivirus/AVService;->f:Lorg/antivirus/AVServiceHandler;

    invoke-virtual {v0, p0, v1}, Lorg/antivirus/core/d/e;->a(Landroid/content/Context;Landroid/os/Handler;)V

    :cond_4
    new-instance v0, Lorg/antivirus/a/a;

    iget-object v1, p0, Lorg/antivirus/AVService;->f:Lorg/antivirus/AVServiceHandler;

    invoke-direct {v0, p0, v1}, Lorg/antivirus/a/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/antivirus/AVService;->i:Lorg/antivirus/a/a;

    if-eqz v7, :cond_5

    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    sget-object v1, Lorg/antivirus/core/a/d;->e:Lorg/antivirus/core/a/d;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/antivirus/core/a/c;->a(Lorg/antivirus/core/Engine;Lorg/antivirus/core/a/d;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {v0}, Lorg/antivirus/AVSettings;->setBuyNotificationyShownIdx(I)V

    :cond_5
    iget-object v0, p0, Lorg/antivirus/AVService;->b:Lorg/antivirus/core/Engine;

    const/16 v1, 0x46a

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/Engine;->sendCommMessage(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lorg/antivirus/AVService;->a:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/antivirus/AVService;->c:Lorg/antivirus/core/b/e;

    iget-object v0, v0, Lorg/antivirus/core/b/e;->a:Lorg/antivirus/core/b/a;

    invoke-virtual {v0}, Lorg/antivirus/core/b/a;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    invoke-static {p0}, Lorg/antivirus/widget/a/k;->a(Landroid/content/Context;)Lorg/antivirus/widget/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lorg/antivirus/widget/a/k;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/antivirus/widget/a/k;->a(Ljava/lang/Boolean;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_3
    return-void

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_8
    move-object v0, v6

    goto :goto_2

    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x5t 0x7ft
        0x3t 0x0t 0x5t 0x7ft
        0x4t 0x0t 0x5t 0x7ft
        0x5t 0x0t 0x5t 0x7ft
        0x6t 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method public onDestroy()V
    .locals 4

    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lorg/antivirus/AVService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lorg/antivirus/AVService;->h:Lorg/antivirus/tuneup/bm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/AVService;->h:Lorg/antivirus/tuneup/bm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, v0, Lorg/antivirus/tuneup/bm;->a:Lorg/antivirus/tuneup/g;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/antivirus/tuneup/bm;->a:Lorg/antivirus/tuneup/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/antivirus/tuneup/g;->c(Landroid/content/Context;)V

    iget-object v1, v0, Lorg/antivirus/tuneup/bm;->a:Lorg/antivirus/tuneup/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/antivirus/tuneup/g;->b(Landroid/content/Context;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/antivirus/tuneup/bm;->a:Lorg/antivirus/tuneup/g;

    :cond_0
    iget-object v1, v0, Lorg/antivirus/tuneup/bm;->b:Lorg/antivirus/tuneup/ba;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/antivirus/tuneup/bm;->b:Lorg/antivirus/tuneup/ba;

    invoke-virtual {v1}, Lorg/antivirus/tuneup/ba;->a()V

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/antivirus/tuneup/bm;->b:Lorg/antivirus/tuneup/ba;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/antivirus/AVService;->g:Lorg/antivirus/antitheft/a;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/antivirus/AVService;->g:Lorg/antivirus/antitheft/a;

    iget-object v0, v1, Lorg/antivirus/antitheft/a;->a:Lorg/antivirus/antitheft/q;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lorg/antivirus/antitheft/a;->a:Lorg/antivirus/antitheft/q;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v2, v0, Lorg/antivirus/antitheft/q;->b:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lorg/antivirus/antitheft/q;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/antivirus/antitheft/q;->b:Landroid/content/BroadcastReceiver;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, v1, Lorg/antivirus/antitheft/a;->a:Lorg/antivirus/antitheft/q;

    :cond_3
    iget-object v0, v1, Lorg/antivirus/antitheft/a;->b:Lorg/antivirus/antitheft/z;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lorg/antivirus/antitheft/a;->b:Lorg/antivirus/antitheft/z;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/antivirus/antitheft/z;->c:Z

    iget-object v0, v0, Lorg/antivirus/antitheft/z;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, v1, Lorg/antivirus/antitheft/a;->b:Lorg/antivirus/antitheft/z;

    :cond_4
    iget-object v0, v1, Lorg/antivirus/antitheft/a;->c:Lorg/antivirus/antitheft/j;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lorg/antivirus/antitheft/a;->c:Lorg/antivirus/antitheft/j;

    invoke-virtual {v0}, Lorg/antivirus/antitheft/j;->a()V

    const/4 v0, 0x0

    iput-object v0, v1, Lorg/antivirus/antitheft/a;->c:Lorg/antivirus/antitheft/j;

    :cond_5
    iget-object v0, p0, Lorg/antivirus/AVService;->d:Lorg/antivirus/core/d/e;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/antivirus/AVService;->d:Lorg/antivirus/core/d/e;

    invoke-virtual {v0, p0}, Lorg/antivirus/core/d/e;->a(Landroid/content/Context;)V

    :cond_6
    iget-object v0, p0, Lorg/antivirus/AVService;->i:Lorg/antivirus/a/a;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/antivirus/AVService;->i:Lorg/antivirus/a/a;

    iget-object v1, v0, Lorg/antivirus/a/a;->a:Lorg/antivirus/a/h;

    if-eqz v1, :cond_7

    iget-object v0, v0, Lorg/antivirus/a/a;->a:Lorg/antivirus/a/h;

    invoke-virtual {v0}, Lorg/antivirus/a/h;->a()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_7
    :try_start_5
    sget-object v0, Lorg/antivirus/widget/a/k;->a:Lorg/antivirus/widget/a/k;

    if-eqz v0, :cond_9

    sget-object v0, Lorg/antivirus/widget/a/k;->a:Lorg/antivirus/widget/a/k;

    iget-object v1, v0, Lorg/antivirus/widget/a/k;->h:Lorg/antivirus/widget/b/a;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lorg/antivirus/widget/a/k;->e:Landroid/content/Context;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lorg/antivirus/widget/a/k;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lorg/antivirus/widget/a/k;->h:Lorg/antivirus/widget/b/a;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_8
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/antivirus/widget/a/k;->e:Landroid/content/Context;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/antivirus/widget/a/k;->f:Landroid/appwidget/AppWidgetManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/antivirus/widget/a/k;->g:Landroid/content/ComponentName;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/antivirus/widget/a/k;->d:Landroid/widget/RemoteViews;

    iget-object v1, v0, Lorg/antivirus/widget/a/k;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lorg/antivirus/widget/a/k;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/antivirus/widget/a/k;->c:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/antivirus/widget/a/k;->b:Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_9
    :goto_2
    invoke-super {p0}, Lorg/antivirus/core/AVCoreService;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/antivirus/core/AVCoreService;->onStart(Landroid/content/Intent;I)V

    invoke-direct {p0, p1, p2}, Lorg/antivirus/AVService;->a(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-direct {p0, p1, p3}, Lorg/antivirus/AVService;->a(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    return v0
.end method

.method final p()V
    .locals 6

    const/4 v2, 0x0

    invoke-static {p0}, Lorg/antivirus/widget/a/k;->a(Landroid/content/Context;)Lorg/antivirus/widget/a/k;

    move-result-object v3

    invoke-virtual {v3}, Lorg/antivirus/widget/a/k;->b()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v4, Lorg/antivirus/widget/a/j;

    invoke-direct {v4, p0}, Lorg/antivirus/widget/a/j;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/Integer;

    move v1, v2

    :goto_0
    array-length v0, v5

    if-ge v1, v0, :cond_0

    iget-object v0, v4, Lorg/antivirus/widget/a/j;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_1
    array-length v1, v5

    if-ge v0, v1, :cond_1

    aget-object v1, v5, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lorg/antivirus/widget/a/k;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/antivirus/AVService;->c:Lorg/antivirus/core/b/e;

    iget-object v0, v0, Lorg/antivirus/core/b/e;->a:Lorg/antivirus/core/b/a;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    invoke-static {}, Lorg/antivirus/AVSettings;->shouldShowActivationScreen()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v3, v0, v2}, Lorg/antivirus/widget/a/k;->b(Ljava/lang/Boolean;Z)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v0}, Lorg/antivirus/core/b/a;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2
.end method

.method final p(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "pkgname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/antivirus/ui/Tools;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "catname"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lorg/antivirus/ui/scan/UnInstall;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "categtory"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "appName"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1800

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "suspicious"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lorg/antivirus/AVService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method final q()V
    .locals 5

    new-instance v2, Lorg/antivirus/ui/performance/p;

    invoke-virtual {p0}, Lorg/antivirus/AVService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/antivirus/ui/performance/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lorg/antivirus/ui/performance/p;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v2, p0}, Lorg/antivirus/ui/performance/p;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v2, p0}, Lorg/antivirus/ui/performance/p;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v1, v3, v0

    if-gtz v1, :cond_1

    const v0, 0x7f09018b

    invoke-virtual {p0, v0}, Lorg/antivirus/AVService;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lorg/antivirus/AVService;->f:Lorg/antivirus/AVServiceHandler;

    new-instance v2, Lorg/antivirus/AVService$4;

    invoke-direct {v2, p0, v0}, Lorg/antivirus/AVService$4;-><init>(Lorg/antivirus/AVService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/antivirus/AVServiceHandler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    const-string v0, "Something happened when Kill All Service was sleeping"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lorg/antivirus/ui/performance/p;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/antivirus/ui/backup/apps/BackUpActivity;->a(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f09018a

    invoke-virtual {p0, v2}, Lorg/antivirus/AVService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method final q(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "WidgetItem"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/widget/a/i;

    const-string v1, "WidgetItem"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "isService"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v1, "isService"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "DelegatedIntentClass"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const-string v3, "DelegatedIntentClass"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v3, "__SAC"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v3, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p0, v3}, Lorg/antivirus/AVService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    :try_start_0
    const-string v1, "widget"

    invoke-virtual {v0}, Lorg/antivirus/widget/a/i;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const/high16 v1, 0x1000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x4000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lorg/antivirus/AVService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method final r(Landroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Lorg/antivirus/AVService;->c:Lorg/antivirus/core/b/e;

    iget-object v0, v0, Lorg/antivirus/core/b/e;->a:Lorg/antivirus/core/b/a;

    const-string v1, "__SAC"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "trialItem"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v0, "Unknown trial feature"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, v0, Lorg/antivirus/core/b/a;->h:Lorg/antivirus/core/b/c;

    const-class v2, Lorg/antivirus/ui/backup/apps/BackupRestoreTab;

    const v3, 0x7f0901c9

    const v4, 0x7f0901ca

    const v5, 0x7f0901cb

    const v6, 0x7f0200b4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/antivirus/AVService;->a(Lorg/antivirus/core/b/c;Ljava/lang/Class;IIII)V

    goto :goto_0

    :pswitch_1
    iget-object v1, v0, Lorg/antivirus/core/b/a;->d:Lorg/antivirus/core/b/c;

    const-class v2, Lorg/antivirus/applocker/AppLockerActivity;

    const v3, 0x7f09005a

    const v4, 0x7f09005b

    const v5, 0x7f09005c

    const v6, 0x7f0200b5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/antivirus/AVService;->a(Lorg/antivirus/core/b/c;Ljava/lang/Class;IIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public verifyPermissions()Z
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/antivirus/AVService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Lorg/antivirus/AVService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    iget-object v6, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/antivirus/AVService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    return v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
