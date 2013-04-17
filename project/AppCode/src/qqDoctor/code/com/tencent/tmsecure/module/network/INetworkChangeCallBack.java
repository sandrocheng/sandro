package com.tencent.tmsecure.module.network;

public abstract interface INetworkChangeCallBack
{
  public abstract void onClosingDateReached();

  public abstract void onDayChanged();

  public abstract void onNormalChanged(NetworkInfoEntity paramNetworkInfoEntity);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.network.INetworkChangeCallBack
 * JD-Core Version:    0.6.2
 */