package com.google.android.apps.analytics;

public class AdHitIdGenerator
{
  private boolean adMobSdkInstalled;

  public AdHitIdGenerator()
  {
    try
    {
      if (Class.forName("com.google.ads.AdRequest") != null);
      for (boolean bool = true; ; bool = false)
      {
        this.adMobSdkInstalled = bool;
        return;
      }
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      while (true)
        this.adMobSdkInstalled = false;
    }
  }

  AdHitIdGenerator(boolean paramBoolean)
  {
    this.adMobSdkInstalled = paramBoolean;
  }

  int getAdHitId()
  {
    if (!this.adMobSdkInstalled);
    for (int i = 0; ; i = AdMobInfo.getInstance().generateAdHitId())
      return i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.apps.analytics.AdHitIdGenerator
 * JD-Core Version:    0.6.2
 */