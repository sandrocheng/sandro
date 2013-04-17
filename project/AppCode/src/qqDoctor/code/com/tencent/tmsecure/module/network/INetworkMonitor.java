package com.tencent.tmsecure.module.network;

import java.util.ArrayList;

public abstract interface INetworkMonitor
{
  public abstract int addCallback(INetworkChangeCallBack paramINetworkChangeCallBack);

  public abstract void clearAllLogs();

  public abstract ArrayList<NetworkInfoEntity> getAllLogs();

  public abstract boolean getRefreshState();

  public abstract void notifyConfigChange();

  public abstract boolean removeCallback(int paramInt);

  public abstract boolean removeCallback(INetworkChangeCallBack paramINetworkChangeCallBack);

  public abstract void setRefreshState(boolean paramBoolean);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.network.INetworkMonitor
 * JD-Core Version:    0.6.2
 */