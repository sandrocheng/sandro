package com.google.analytics.tracking.android;

public abstract interface ServiceManager
{
  public abstract void dispatch();

  public abstract void setDispatchPeriod(int paramInt);

  public abstract void updateConnectivityStatus(boolean paramBoolean);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.ServiceManager
 * JD-Core Version:    0.6.2
 */