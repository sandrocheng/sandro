package com.google.android.apps.analytics;

import java.util.Random;

public class AdMobInfo
{
  private static final AdMobInfo INSTANCE = new AdMobInfo();
  private int adHitId;
  private Random random = new Random();

  public static AdMobInfo getInstance()
  {
    return INSTANCE;
  }

  public int generateAdHitId()
  {
    this.adHitId = this.random.nextInt();
    return this.adHitId;
  }

  public int getAdHitId()
  {
    return this.adHitId;
  }

  public String getJoinId()
  {
    int i = this.adHitId;
    String str1 = null;
    if (i == 0);
    while (true)
    {
      return str1;
      GoogleAnalyticsTracker localGoogleAnalyticsTracker = GoogleAnalyticsTracker.getInstance();
      String str2 = localGoogleAnalyticsTracker.getVisitorIdForAds();
      String str3 = localGoogleAnalyticsTracker.getSessionIdForAds();
      str1 = null;
      if (str2 != null)
      {
        str1 = null;
        if (str3 != null)
        {
          Object[] arrayOfObject = new Object[3];
          arrayOfObject[0] = str2;
          arrayOfObject[1] = str3;
          arrayOfObject[2] = Integer.valueOf(this.adHitId);
          str1 = String.format("A,%s,%s,%d", arrayOfObject);
        }
      }
    }
  }

  public void setAdHitId(int paramInt)
  {
    this.adHitId = paramInt;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.apps.analytics.AdMobInfo
 * JD-Core Version:    0.6.2
 */