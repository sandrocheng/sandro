.class public Lcom/tencent/powermanager/PowerManagerApplication;
.super Landroid/app/Application;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/powermanager/PowerManagerApplication$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private b:Lcom/tencent/powermanager/service/BatteryEventReceiver;

.field private c:Lcom/tencent/powermanager/service/ScreenEventReceiver;

.field private d:Lcom/tencent/powermanager/service/BlueToothReceiver;

.field private e:Lcom/tencent/powermanager/service/ModeEventReceiver;

.field private f:Lcom/tencent/powermanager/service/NetWorkEventReceiver;

.field private g:Lcom/tencent/powermanager/service/BatteryPowerRecordReciver;

.field private h:Lcj;

.field private i:Lch;

.field private j:Lcb;

.field private k:Lcom/tencent/tmsecure/common/ITMSApplicaionConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Lcom/tencent/powermanager/PowerManagerApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Application getApplicationContext = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/Integer;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/tencent/powermanager/PowerManagerApplication$a;

    invoke-direct {v0}, Lcom/tencent/powermanager/PowerManagerApplication$a;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->k:Lcom/tencent/tmsecure/common/ITMSApplicaionConfig;

    const-class v0, Lcom/tencent/powermanager/service/PowerManagerService;

    iget-object v1, p0, Lcom/tencent/powermanager/PowerManagerApplication;->k:Lcom/tencent/tmsecure/common/ITMSApplicaionConfig;

    invoke-static {p0, v0, v1}, Lcom/tencent/tmsecure/common/TMSApplication;->init(Landroid/content/Context;Ljava/lang/Class;Lcom/tencent/tmsecure/common/ITMSApplicaionConfig;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->b:Lcom/tencent/powermanager/service/BatteryEventReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;

    invoke-direct {v0}, Lcom/tencent/powermanager/service/BatteryEventReceiver;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->b:Lcom/tencent/powermanager/service/BatteryEventReceiver;

    :cond_1
    sget-object v0, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/powermanager/PowerManagerApplication;->b:Lcom/tencent/powermanager/service/BatteryEventReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->c:Lcom/tencent/powermanager/service/ScreenEventReceiver;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/powermanager/service/ScreenEventReceiver;

    invoke-direct {v0}, Lcom/tencent/powermanager/service/ScreenEventReceiver;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->c:Lcom/tencent/powermanager/service/ScreenEventReceiver;

    :cond_2
    sget-object v0, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/powermanager/PowerManagerApplication;->c:Lcom/tencent/powermanager/service/ScreenEventReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/powermanager/PowerManagerApplication;->c:Lcom/tencent/powermanager/service/ScreenEventReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->d:Lcom/tencent/powermanager/service/BlueToothReceiver;

    if-nez v0, :cond_3

    new-instance v0, Lcom/tencent/powermanager/service/BlueToothReceiver;

    invoke-direct {v0}, Lcom/tencent/powermanager/service/BlueToothReceiver;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->d:Lcom/tencent/powermanager/service/BlueToothReceiver;

    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/powermanager/PowerManagerApplication;->d:Lcom/tencent/powermanager/service/BlueToothReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->e:Lcom/tencent/powermanager/service/ModeEventReceiver;

    if-nez v0, :cond_4

    new-instance v0, Lcom/tencent/powermanager/service/ModeEventReceiver;

    invoke-direct {v0}, Lcom/tencent/powermanager/service/ModeEventReceiver;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->e:Lcom/tencent/powermanager/service/ModeEventReceiver;

    :cond_4
    sget-object v0, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/powermanager/PowerManagerApplication;->e:Lcom/tencent/powermanager/service/ModeEventReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "action.mode.status.changed"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/powermanager/PowerManagerApplication;->e:Lcom/tencent/powermanager/service/ModeEventReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->f:Lcom/tencent/powermanager/service/NetWorkEventReceiver;

    if-nez v0, :cond_5

    new-instance v0, Lcom/tencent/powermanager/service/NetWorkEventReceiver;

    invoke-direct {v0}, Lcom/tencent/powermanager/service/NetWorkEventReceiver;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->f:Lcom/tencent/powermanager/service/NetWorkEventReceiver;

    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/powermanager/PowerManagerApplication;->f:Lcom/tencent/powermanager/service/NetWorkEventReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/powermanager/PowerManagerApplication;->f:Lcom/tencent/powermanager/service/NetWorkEventReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->g:Lcom/tencent/powermanager/service/BatteryPowerRecordReciver;

    if-nez v0, :cond_6

    new-instance v0, Lcom/tencent/powermanager/service/BatteryPowerRecordReciver;

    invoke-direct {v0}, Lcom/tencent/powermanager/service/BatteryPowerRecordReciver;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->g:Lcom/tencent/powermanager/service/BatteryPowerRecordReciver;

    :cond_6
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.tencent.powermanager.levelrecorder"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/powermanager/PowerManagerApplication;->g:Lcom/tencent/powermanager/service/BatteryPowerRecordReciver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lby;->a:Lby;

    if-nez v0, :cond_7

    new-instance v0, Lby;

    invoke-direct {v0}, Lby;-><init>()V

    sput-object v0, Lby;->a:Lby;

    :cond_7
    sget-object v0, Lby;->a:Lby;

    invoke-static {v0}, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a(Lcom/tencent/powermanager/service/BatteryEventReceiver$a;)V

    sget-object v0, Lby;->a:Lby;

    if-nez v0, :cond_8

    new-instance v0, Lby;

    invoke-direct {v0}, Lby;-><init>()V

    sput-object v0, Lby;->a:Lby;

    :cond_8
    sget-object v0, Lby;->a:Lby;

    invoke-static {v0}, Laf;->a(Lbx;)V

    :cond_9
    new-instance v0, Lcj;

    invoke-direct {v0}, Lcj;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->h:Lcj;

    const-string v0, "vibrate_on"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/powermanager/PowerManagerApplication;->h:Lcj;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "mode_ringer"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/powermanager/PowerManagerApplication;->h:Lcj;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v0, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/powermanager/PowerManagerApplication;->h:Lcj;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v0, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/powermanager/PowerManagerApplication;->h:Lcj;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lch;->a()Lch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->i:Lch;

    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->i:Lch;

    invoke-virtual {v0}, Lch;->b()V

    invoke-static {}, Lcb;->a()Lcb;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->j:Lcb;

    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->j:Lcb;

    invoke-virtual {v0}, Lcb;->b()V

    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->i:Lch;

    iget-object v1, p0, Lcom/tencent/powermanager/PowerManagerApplication;->j:Lcb;

    invoke-virtual {v0, v1}, Lch;->a(Lch$a;)V

    invoke-static {p0}, Lc;->a(Landroid/app/Application;)V

    return-void
.end method

.method public onTerminate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->b:Lcom/tencent/powermanager/service/BatteryEventReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/powermanager/PowerManagerApplication;->b:Lcom/tencent/powermanager/service/BatteryEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->c:Lcom/tencent/powermanager/service/ScreenEventReceiver;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/powermanager/PowerManagerApplication;->c:Lcom/tencent/powermanager/service/ScreenEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->d:Lcom/tencent/powermanager/service/BlueToothReceiver;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/powermanager/PowerManagerApplication;->d:Lcom/tencent/powermanager/service/BlueToothReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->e:Lcom/tencent/powermanager/service/ModeEventReceiver;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/powermanager/PowerManagerApplication;->e:Lcom/tencent/powermanager/service/ModeEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->f:Lcom/tencent/powermanager/service/NetWorkEventReceiver;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/powermanager/PowerManagerApplication;->f:Lcom/tencent/powermanager/service/NetWorkEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->g:Lcom/tencent/powermanager/service/BatteryPowerRecordReciver;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/powermanager/PowerManagerApplication;->g:Lcom/tencent/powermanager/service/BatteryPowerRecordReciver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_5
    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->h:Lcj;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/tencent/powermanager/PowerManagerApplication;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/powermanager/PowerManagerApplication;->h:Lcj;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_6
    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lby;->a:Lby;

    if-nez v0, :cond_7

    new-instance v0, Lby;

    invoke-direct {v0}, Lby;-><init>()V

    sput-object v0, Lby;->a:Lby;

    :cond_7
    sget-object v0, Lby;->a:Lby;

    invoke-static {v0}, Lcom/tencent/powermanager/service/BatteryEventReceiver;->b(Lcom/tencent/powermanager/service/BatteryEventReceiver$a;)V

    sget-object v0, Lby;->a:Lby;

    if-nez v0, :cond_8

    new-instance v0, Lby;

    invoke-direct {v0}, Lby;-><init>()V

    sput-object v0, Lby;->a:Lby;

    :cond_8
    sget-object v0, Lby;->a:Lby;

    invoke-static {v0}, Laf;->b(Lbx;)Z

    :cond_9
    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->j:Lcb;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->j:Lcb;

    invoke-virtual {v0}, Lcb;->c()V

    :cond_a
    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->i:Lch;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->j:Lcb;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->i:Lch;

    iget-object v1, p0, Lcom/tencent/powermanager/PowerManagerApplication;->j:Lcb;

    invoke-virtual {v0, v1}, Lch;->b(Lch$a;)V

    :cond_b
    iget-object v0, p0, Lcom/tencent/powermanager/PowerManagerApplication;->i:Lch;

    invoke-virtual {v0}, Lch;->c()V

    :cond_c
    return-void
.end method
