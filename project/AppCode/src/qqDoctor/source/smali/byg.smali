.class public final Lbyg;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field public a:Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

.field public b:Z

.field public c:Landroid/content/Context;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;

.field private f:Lbxw;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbyg;->b:Z

    new-instance v0, Lbyh;

    invoke-direct {v0, p0}, Lbyh;-><init>(Lbyg;)V

    iput-object v0, p0, Lbyg;->f:Lbxw;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbyg;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lbyg;)Z
    .locals 1

    iget-boolean v0, p0, Lbyg;->b:Z

    return v0
.end method

.method static synthetic b(Lbyg;)Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;
    .locals 1

    iget-object v0, p0, Lbyg;->a:Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    return-object v0
.end method

.method static synthetic c(Lbyg;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbyg;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbyg;->e:Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;

    if-nez v0, :cond_0

    new-instance v0, Lbyb;

    iget-object v1, p0, Lbyg;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lbyb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbyg;->e:Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;

    :cond_0
    iget-object v0, p0, Lbyg;->e:Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)V
    .locals 3

    iget-object v0, p0, Lbyg;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lbyg;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lbyg;->c:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lbyg;->c:Landroid/content/Context;

    iget-object v2, p0, Lbyg;->f:Lbxw;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
