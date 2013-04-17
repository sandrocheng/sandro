.class final Lbye;
.super Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper$BlueToothObserver;


# instance fields
.field private synthetic a:Lbyd;

.field private final synthetic b:Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;


# direct methods
.method constructor <init>(Lbyd;Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;)V
    .locals 0

    iput-object p1, p0, Lbye;->a:Lbyd;

    iput-object p2, p0, Lbye;->b:Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper$BlueToothObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final ScanFinish(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    const-wide/32 v5, 0x493e0

    const/4 v1, 0x1

    iget-object v0, p0, Lbye;->b:Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    iget v0, v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBlueToothAutoCloseCondition:I

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->disableBluetooth()Z

    sput-boolean v1, Lbxw;->d:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbye;->a:Lbyd;

    invoke-static {v0}, Lbyd;->a(Lbyd;)Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->g:Landroid/os/Handler;

    iget-object v1, p0, Lbye;->a:Lbyd;

    invoke-static {v1}, Lbyd;->a(Lbyd;)Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    if-nez v0, :cond_4

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->disableBluetooth()Z

    sput-boolean v1, Lbxw;->d:Z

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v4, 0xc

    if-ne v0, v4, :cond_2

    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lbye;->a:Lbyd;

    invoke-static {v0}, Lbyd;->a(Lbyd;)Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->g:Landroid/os/Handler;

    iget-object v1, p0, Lbye;->a:Lbyd;

    invoke-static {v1}, Lbyd;->a(Lbyd;)Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
