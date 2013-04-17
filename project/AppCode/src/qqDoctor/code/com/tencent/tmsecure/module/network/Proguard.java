package com.tencent.tmsecure.module.network;

import com.tencent.tmsecure.common.ManagerCreator;

public final class Proguard
{
  public final void callAllMethods()
  {
    NetworkManager localNetworkManager = (NetworkManager)ManagerCreator.getManager(NetworkManager.class);
    localNetworkManager.addDefaultMobileMonitor(null, null);
    localNetworkManager.addDefaultWifiMonitor(null, null);
    localNetworkManager.removeMonitor(null);
    localNetworkManager.addMonitor(null, null, null);
    localNetworkManager.clearTrafficInfo(null);
    localNetworkManager.findMonitor(null);
    localNetworkManager.getInterval();
    localNetworkManager.getIntervalType();
    localNetworkManager.getMobileRxBytes(null);
    localNetworkManager.getMobileTxBytes(null);
    localNetworkManager.getTrafficEntity(null);
    localNetworkManager.getWIFIRxBytes(null);
    localNetworkManager.getWIFITxBytes(null);
    localNetworkManager.isEnable();
    localNetworkManager.isSupportTrafficState();
    localNetworkManager.notifyConfigChange();
    localNetworkManager.refreshTrafficInfo(null, false);
    localNetworkManager.setEnable(false);
    localNetworkManager.setInterval(0L);
    localNetworkManager.updateSelfMobileDownloadBytes(0L);
    localNetworkManager.getSelfMobileDownloadBytes();
    localNetworkManager.updateSelfMobileUploadBytes(0L);
    localNetworkManager.getSelfMobileUploadBytes();
    TrafficCorrectionManager localTrafficCorrectionManager = (TrafficCorrectionManager)ManagerCreator.getManager(TrafficCorrectionManager.class);
    localTrafficCorrectionManager.startCorrection(null);
    localTrafficCorrectionManager.getCorrectionResult(null, null, null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.network.Proguard
 * JD-Core Version:    0.6.2
 */