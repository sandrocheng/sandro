package com.tencent.tmsecure.module.network;

import com.tencent.tmsecure.common.BaseEntity;
import java.util.Date;

public class NetworkInfoEntity extends BaseEntity
  implements Comparable<NetworkInfoEntity>
{
  public long mRetialForMonth = 0L;
  public Date mStartDate = new Date();
  public long mTotalForMonth = 0L;
  public long mUsedForDay = 0L;
  public long mUsedForMonth = 0L;

  public int compareTo(NetworkInfoEntity paramNetworkInfoEntity)
  {
    return this.mStartDate.compareTo(paramNetworkInfoEntity.mStartDate);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.network.NetworkInfoEntity
 * JD-Core Version:    0.6.2
 */