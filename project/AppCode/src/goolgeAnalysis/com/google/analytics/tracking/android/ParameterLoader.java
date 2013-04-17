package com.google.analytics.tracking.android;

abstract interface ParameterLoader
{
  public abstract String getString(String paramString);

  public abstract Double getDoubleFromString(String paramString);

  public abstract boolean getBoolean(String paramString);

  public abstract boolean isBooleanKeyPresent(String paramString);

  public abstract int getInt(String paramString, int paramInt);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.ParameterLoader
 * JD-Core Version:    0.6.2
 */