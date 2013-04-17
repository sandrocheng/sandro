package com.tencent.tmsecure.module.network;

import java.util.ArrayList;
import java.util.Date;

public abstract interface INetworkInfoDao
{
  public abstract void clearAll();

  public abstract ArrayList<NetworkInfoEntity> getAll();

  public abstract int getClosingDayForMonth();

  public abstract NetDataEntity getLastNetDataEntity();

  public abstract NetworkInfoEntity getSystemTimeChange(Date paramDate);

  public abstract NetworkInfoEntity getTodayNetworkInfoEntity();

  public abstract long getTotalForMonth();

  public abstract long getUsedForMonth();

  public abstract void insert(NetworkInfoEntity paramNetworkInfoEntity);

  public abstract void resetToDayNetworkInfoEntity();

  public abstract void setClosingDayForMonth(int paramInt);

  public abstract void setLastNetDataEntity(NetDataEntity paramNetDataEntity);

  public abstract void setTodayNetworkInfoEntity(NetworkInfoEntity paramNetworkInfoEntity);

  public abstract void setTotalForMonth(long paramLong);

  public abstract void setUsedForMonth(long paramLong);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.network.INetworkInfoDao
 * JD-Core Version:    0.6.2
 */