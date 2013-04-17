package com.google.analytics.tracking.android;

import com.google.android.gms.analytics.internal.Command;
import java.util.List;
import java.util.Map;

abstract interface ServiceProxy
{
  public abstract void putHit(Map<String, String> paramMap, long paramLong, String paramString, List<Command> paramList);

  public abstract void clearHits();

  public abstract void dispatch();

  public abstract void createService();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.ServiceProxy
 * JD-Core Version:    0.6.2
 */