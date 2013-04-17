.class public final Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lbyg;

.field private b:Lbyf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized getBatteryInfoHelper()Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->b:Lbyf;

    if-nez v0, :cond_0

    new-instance v0, Lbyf;

    invoke-direct {v0}, Lbyf;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->b:Lbyf;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->b:Lbyf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Lbyg;

    invoke-virtual {v0}, Lbyg;->a()Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getBatteryLevel()I
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Lbyg;

    sget v0, Lbxw;->a:I

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbyg;

    invoke-direct {v0}, Lbyg;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Lbyg;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Lbyg;

    invoke-virtual {v0, p1}, Lbyg;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Lbyg;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public final registerPowerSavingEventListener(Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;)V
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Lbyg;

    iget-object v0, v0, Lbyg;->d:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final setPowerSavingConfig(Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Lbyg;

    if-eqz p1, :cond_0

    iput-object p1, v4, Lbyg;->a:Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    iput-boolean p2, v4, Lbyg;->b:Z

    iget v0, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBrightness:I

    if-gtz v0, :cond_b

    iget-object v0, v4, Lbyg;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    iget v0, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mScreenOffTime:I

    iget-object v1, v4, Lbyg;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "screen_off_timeout"

    invoke-static {v1, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "screen_off_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, v4, Lbyg;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-byte v0, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mHapticFeedbackStateOperation:B

    if-ne v0, v2, :cond_c

    iget-object v0, v4, Lbyg;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_2
    iget-byte v0, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mVibrateStateOperation:B

    if-ne v0, v2, :cond_d

    iget-object v0, v4, Lbyg;->c:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    :cond_3
    :goto_3
    iget-byte v0, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mAutoSyncStateOperation:B

    if-ne v0, v2, :cond_e

    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    :cond_4
    :goto_4
    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    iget-object v1, v4, Lbyg;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "airplane_mode_on"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_f

    move v1, v2

    :goto_5
    iget-byte v5, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mAirplaneModeStateOperation:B

    if-eq v5, v2, :cond_13

    iget-byte v5, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mAirplaneModeStateOperation:B

    if-ne v5, v7, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v4, v3}, Lbyg;->a(Z)V

    :cond_5
    iget-byte v1, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mWifiStateOperation:B

    if-ne v1, v2, :cond_10

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setWifiEnabled(Z)Z

    sput-boolean v2, Lbxw;->b:Z

    :cond_6
    :goto_6
    const-class v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    iget-byte v4, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mMobileNetWorkStateOperation:B

    if-ne v4, v2, :cond_11

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    move-result v4

    if-nez v4, :cond_11

    const-class v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v1, v2}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    sput-boolean v2, Lbxw;->c:Z

    :cond_7
    :goto_7
    iget-byte v1, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBlueToothStateOperation:B

    if-ne v1, v2, :cond_12

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->enableBluetooth()Z

    sput-boolean v2, Lbxw;->d:Z

    :cond_8
    :goto_8
    sget-object v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->ANIMATION_STATE_SETTINGS:[I

    iget v1, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mAnimationState:I

    aget v0, v0, v1

    new-instance v1, Lbyi;

    invoke-direct {v1}, Lbyi;-><init>()V

    invoke-static {}, Lbyi;->a()[F

    move-result-object v1

    if-eqz v1, :cond_9

    array-length v4, v1

    if-lez v4, :cond_9

    rem-int/lit8 v4, v0, 0xa

    int-to-float v4, v4

    aput v4, v1, v3

    :cond_9
    if-eqz v1, :cond_a

    array-length v3, v1

    if-lt v3, v7, :cond_a

    div-int/lit8 v0, v0, 0xa

    rem-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    aput v0, v1, v2

    :cond_a
    invoke-static {v1}, Lbyi;->a([F)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, v4, Lbyg;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget v0, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBrightness:I

    iget-object v1, v4, Lbyg;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "screen_brightness"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "screen_brightness"

    invoke-static {v1, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_1

    :cond_c
    iget-byte v0, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mHapticFeedbackStateOperation:B

    if-ne v0, v7, :cond_2

    iget-object v0, v4, Lbyg;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_d
    iget-byte v0, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mVibrateStateOperation:B

    if-ne v0, v7, :cond_3

    iget-object v0, v4, Lbyg;->c:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v3}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto/16 :goto_3

    :cond_e
    iget-byte v0, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mAutoSyncStateOperation:B

    if-ne v0, v7, :cond_4

    invoke-static {v3}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto/16 :goto_4

    :cond_f
    move v1, v3

    goto/16 :goto_5

    :cond_10
    iget-byte v1, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mWifiStateOperation:B

    if-ne v1, v7, :cond_6

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setWifiEnabled(Z)Z

    sput-boolean v2, Lbxw;->b:Z

    goto/16 :goto_6

    :cond_11
    iget-byte v4, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mMobileNetWorkStateOperation:B

    if-ne v4, v7, :cond_7

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    move-result v1

    if-eqz v1, :cond_7

    const-class v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v1, v3}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    sput-boolean v2, Lbxw;->c:Z

    goto/16 :goto_7

    :cond_12
    iget-byte v1, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBlueToothStateOperation:B

    if-ne v1, v7, :cond_8

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isBluetoothEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->disableBluetooth()Z

    sput-boolean v2, Lbxw;->d:Z

    goto/16 :goto_8

    :cond_13
    if-nez v1, :cond_14

    invoke-virtual {v4, v2}, Lbyg;->a(Z)V

    goto/16 :goto_8

    :cond_14
    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setWifiEnabled(Z)Z

    sput-boolean v2, Lbxw;->b:Z

    :cond_15
    const-class v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    move-result v1

    if-eqz v1, :cond_16

    const-class v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v1, v3}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    sput-boolean v2, Lbxw;->c:Z

    :cond_16
    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isBluetoothEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->disableBluetooth()Z

    sput-boolean v2, Lbxw;->d:Z

    goto/16 :goto_8
.end method

.method public final unRegisterPowerSavingEventListener(Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;)V
    .locals 5

    invoke-static {}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Lbyg;

    if-eqz p1, :cond_0

    iget-object v3, v2, Lbyg;->d:Ljava/util/List;

    monitor-enter v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    :try_start_0
    iget-object v0, v2, Lbyg;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, v2, Lbyg;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_3

    iget-object v1, v2, Lbyg;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
