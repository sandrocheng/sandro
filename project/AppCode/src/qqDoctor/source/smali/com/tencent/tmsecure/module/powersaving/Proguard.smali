.class public final Lcom/tencent/tmsecure/module/powersaving/Proguard;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callAllMethods()V
    .locals 3

    const-class v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->setPowerSavingConfig(Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;Z)V

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->getBatteryInfoHelper()Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;->getMaxPowerUseHours()D

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;->getCallRemainHours()D

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;->getContinueRemainHours()D

    return-void
.end method
