.class public final Lbyd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

.field private final synthetic b:Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;


# direct methods
.method constructor <init>(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;)V
    .locals 0

    iput-object p1, p0, Lbyd;->a:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    iput-object p2, p0, Lbyd;->b:Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lbyd;)Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;
    .locals 1

    iget-object v0, p0, Lbyd;->a:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lbyd;->b:Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    iget v0, v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBlueToothAutoCloseCondition:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lbyd;->b:Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    iget v0, v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBlueToothAutoCloseCondition:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lbyd;->a:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    new-instance v1, Lbye;

    iget-object v2, p0, Lbyd;->b:Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    invoke-direct {v1, p0, v2}, Lbye;-><init>(Lbyd;Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;)V

    iget-object v2, v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->d:Landroid/content/Context;

    iget-object v4, v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    iput-object v1, v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->e:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper$BlueToothObserver;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lbyd;->b:Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    iget v0, v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBlueToothAutoCloseCondition:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lbyd;->a:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    iget-boolean v0, v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->f:Z

    if-nez v0, :cond_4

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->disableBluetooth()Z

    const/4 v0, 0x1

    sput-boolean v0, Lbxw;->d:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lbyd;->a:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->g:Landroid/os/Handler;

    iget-object v1, p0, Lbyd;->a:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->h:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
