package com.google.analytics.tracking.android;

import com.google.android.gms.analytics.internal.Command;
import java.util.List;
import java.util.Map;

abstract interface AnalyticsClient
{
  public abstract void sendHit(Map<String, String> paramMap, long paramLong, String paramString, List<Command> paramList);

  public abstract void clearHits();

  public abstract void connect();

  public abstract void disconnect();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.AnalyticsClient
 * JD-Core Version:    0.6.2
 */