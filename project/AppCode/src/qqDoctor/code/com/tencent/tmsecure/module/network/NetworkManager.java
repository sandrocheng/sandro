package com.tencent.tmsecure.module.network;

import android.content.Context;
import bwo;
import bwq;
import com.tencent.tmsecure.common.BaseManager;

public final class NetworkManager extends BaseManager
{
  public static final int INTERVAL_CUSTOM = 3;
  public static final int INTERVAL_FOR_BACKGROUND = 0;
  public static final int INTERVAL_FOR_REALTIME = 2;
  public static final int INTERVAL_FOR_UI = 1;
  private bwo a;
  private bwq b;

  public final boolean addDefaultMobileMonitor(String paramString, INetworkInfoDao paramINetworkInfoDao)
  {
    if (isExpired());
    for (boolean bool = false; ; bool = this.a.a(paramString, paramINetworkInfoDao))
      return bool;
  }

  public final boolean addDefaultWifiMonitor(String paramString, INetworkInfoDao paramINetworkInfoDao)
  {
    if (isExpired());
    for (boolean bool = false; ; bool = this.a.b(paramString, paramINetworkInfoDao))
      return bool;
  }

  public final boolean addMonitor(String paramString, NetDataEntityFactory paramNetDataEntityFactory, INetworkInfoDao paramINetworkInfoDao)
  {
    if (isExpired());
    for (boolean bool = false; ; bool = this.a.a(paramString, paramNetDataEntityFactory, paramINetworkInfoDao))
      return bool;
  }

  public final void clearTrafficInfo(String[] paramArrayOfString)
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.a(paramArrayOfString);
    }
  }

  public final INetworkMonitor findMonitor(String paramString)
  {
    if (isExpired())
      if (this.b == null)
        this.b = new bwq();
    for (Object localObject = this.b; ; localObject = this.a.b(paramString))
      return localObject;
  }

  public final long getInterval()
  {
    if (isExpired());
    for (long l = -1L; ; l = this.a.c())
      return l;
  }

  public final int getIntervalType()
  {
    if (isExpired());
    for (int i = -1; ; i = this.a.b())
      return i;
  }

  public final long getMobileRxBytes(String paramString)
  {
    if (isExpired());
    for (long l = 0L; ; l = this.a.d(paramString))
      return l;
  }

  public final long getMobileTxBytes(String paramString)
  {
    if (isExpired());
    for (long l = 0L; ; l = this.a.e(paramString))
      return l;
  }

  public final long getSelfMobileDownloadBytes()
  {
    if (isExpired());
    for (long l = 0L; ; l = bwo.g())
      return l;
  }

  public final long getSelfMobileUploadBytes()
  {
    if (isExpired());
    for (long l = 0L; ; l = bwo.h())
      return l;
  }

  public final TrafficEntity getTrafficEntity(String paramString)
  {
    if (isExpired());
    for (TrafficEntity localTrafficEntity = new TrafficEntity(); ; localTrafficEntity = this.a.c(paramString))
      return localTrafficEntity;
  }

  public final long getWIFIRxBytes(String paramString)
  {
    if (isExpired());
    for (long l = 0L; ; l = this.a.f(paramString))
      return l;
  }

  public final long getWIFITxBytes(String paramString)
  {
    if (isExpired());
    for (long l = 0L; ; l = this.a.g(paramString))
      return l;
  }

  public final boolean isEnable()
  {
    if (isExpired());
    for (boolean bool = false; ; bool = this.a.d())
      return bool;
  }

  public final boolean isSupportTrafficState()
  {
    if (isExpired());
    for (boolean bool = false; ; bool = this.a.f())
      return bool;
  }

  public final void notifyConfigChange()
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.e();
    }
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new bwo();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }

  public final void refreshTrafficInfo(String[] paramArrayOfString, boolean paramBoolean)
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.a(paramArrayOfString, paramBoolean);
    }
  }

  public final boolean removeMonitor(String paramString)
  {
    if (isExpired());
    for (boolean bool = false; ; bool = this.a.a(paramString))
      return bool;
  }

  public final void setEnable(boolean paramBoolean)
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.a(paramBoolean);
    }
  }

  public final void setInterval(long paramLong)
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.a((int)paramLong);
    }
  }

  public final void setIntervalType(int paramInt)
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.a(paramInt);
    }
  }

  public final void updateSelfMobileDownloadBytes(long paramLong)
  {
    if (isExpired());
    while (true)
    {
      return;
      bwo.b(paramLong);
    }
  }

  public final void updateSelfMobileUploadBytes(long paramLong)
  {
    if (isExpired());
    while (true)
    {
      return;
      bwo.c(paramLong);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.network.NetworkManager
 * JD-Core Version:    0.6.2
 */