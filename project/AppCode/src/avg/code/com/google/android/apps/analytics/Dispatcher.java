package com.google.android.apps.analytics;

abstract interface Dispatcher
{
  public abstract void dispatchHits(Hit[] paramArrayOfHit);

  public abstract void init(Dispatcher.Callbacks paramCallbacks);

  public abstract boolean isDryRun();

  public abstract void setDryRun(boolean paramBoolean);

  public abstract void stop();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.apps.analytics.Dispatcher
 * JD-Core Version:    0.6.2
 */