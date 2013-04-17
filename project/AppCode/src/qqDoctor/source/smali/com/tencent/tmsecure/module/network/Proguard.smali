.class public final Lcom/tencent/tmsecure/module/network/Proguard;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callAllMethods()V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v0, v1, v1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->addDefaultMobileMonitor(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z

    invoke-virtual {v0, v1, v1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->addDefaultWifiMonitor(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->removeMonitor(Ljava/lang/String;)Z

    invoke-virtual {v0, v1, v1, v1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->addMonitor(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->clearTrafficInfo([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->findMonitor(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->getInterval()J

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->getIntervalType()I

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->getMobileRxBytes(Ljava/lang/String;)J

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->getMobileTxBytes(Ljava/lang/String;)J

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->getTrafficEntity(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->getWIFIRxBytes(Ljava/lang/String;)J

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->getWIFITxBytes(Ljava/lang/String;)J

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isEnable()Z

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isSupportTrafficState()Z

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->notifyConfigChange()V

    invoke-virtual {v0, v1, v4}, Lcom/tencent/tmsecure/module/network/NetworkManager;->refreshTrafficInfo([Ljava/lang/String;Z)V

    invoke-virtual {v0, v4}, Lcom/tencent/tmsecure/module/network/NetworkManager;->setEnable(Z)V

    invoke-virtual {v0, v2, v3}, Lcom/tencent/tmsecure/module/network/NetworkManager;->setInterval(J)V

    invoke-virtual {v0, v2, v3}, Lcom/tencent/tmsecure/module/network/NetworkManager;->updateSelfMobileDownloadBytes(J)V

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->getSelfMobileDownloadBytes()J

    invoke-virtual {v0, v2, v3}, Lcom/tencent/tmsecure/module/network/NetworkManager;->updateSelfMobileUploadBytes(J)V

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->getSelfMobileUploadBytes()J

    const-class v0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->startCorrection(Ljava/util/ArrayList;)I

    invoke-virtual {v0, v1, v1, v1}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->getCorrectionResult(Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
