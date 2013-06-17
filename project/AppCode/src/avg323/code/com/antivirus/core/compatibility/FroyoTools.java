package com.antivirus.core.compatibility;

import android.net.TrafficStats;

public class FroyoTools
{
  public static long getMobileRxBytes()
  {
    return TrafficStats.getMobileRxBytes();
  }

  public static long getMobileRxUidBytes(int paramInt)
  {
    return TrafficStats.getUidRxBytes(paramInt);
  }

  public static long getMobileTxBytes()
  {
    return TrafficStats.getMobileTxBytes();
  }

  public static long getMobileTxUidBytes(int paramInt)
  {
    return TrafficStats.getUidTxBytes(paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.compatibility.FroyoTools
 * JD-Core Version:    0.6.2
 */