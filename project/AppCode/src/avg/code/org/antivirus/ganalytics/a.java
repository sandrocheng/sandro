package org.antivirus.ganalytics;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import com.google.android.apps.analytics.GoogleAnalyticsTracker;
import org.antivirus.AVService;
import org.antivirus.core.Logger;
import org.antivirus.core.a.q;
import org.antivirus.core.a.v;

public class a extends v
{
  boolean a = false;
  boolean b = false;

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    try
    {
      Intent localIntent = new Intent(paramContext, AVService.class);
      localIntent.putExtra("__SAC", 7);
      localIntent.putExtra("__SAD", 1081);
      localIntent.putExtra("action", "trackEvent");
      localIntent.putExtra("arg0", paramString1);
      localIntent.putExtra("arg1", paramString2);
      localIntent.putExtra("arg2", paramString3);
      localIntent.putExtra("arg3", 0);
      paramContext.startService(localIntent);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(Context paramContext)
  {
    try
    {
      if (!this.a)
      {
        this.a = true;
        GoogleAnalyticsTracker.getInstance().setDispatchPeriod(20);
      }
      return true;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public final boolean a(Context paramContext, Message paramMessage)
  {
    GoogleAnalyticsTracker localGoogleAnalyticsTracker1;
    boolean bool1;
    label144: String str4;
    String str5;
    String str6;
    try
    {
      boolean bool2 = this.b;
      if (!bool2);
      try
      {
        GoogleAnalyticsTracker localGoogleAnalyticsTracker2 = GoogleAnalyticsTracker.getInstance();
        localGoogleAnalyticsTracker2.setProductVersion("android_" + paramContext.getApplicationContext().getPackageName(), "3.0.3.174757");
        localGoogleAnalyticsTracker2.startNewSession("UA-25293793-1", paramContext.getApplicationContext());
        this.b = true;
        String str1 = ((Bundle)paramMessage.obj).getString("action");
        localGoogleAnalyticsTracker1 = GoogleAnalyticsTracker.getInstance();
        localGoogleAnalyticsTracker1.setCustomVar(1, "vendor", Integer.toString(this.h.o), 3);
        if (str1.equals("trackPageView"))
        {
          localGoogleAnalyticsTracker1.trackPageView(((Bundle)paramMessage.obj).getString("page").replaceAll("[^0-9a-zA-Z\\.\\_/\\%]", ""));
          if (this.a)
            break label271;
          bool1 = true;
          return bool1;
        }
      }
      catch (Exception localException2)
      {
        while (true)
          Logger.log(localException2);
      }
    }
    catch (Exception localException1)
    {
      while (true)
        Logger.log(localException1);
      String str2 = ((Bundle)paramMessage.obj).getString("arg0");
      String str3 = ((Bundle)paramMessage.obj).getString("arg1");
      str4 = ((Bundle)paramMessage.obj).getString("arg2");
      str5 = str2.replaceAll("[^0-9a-zA-Z\\.\\_/\\%]", "");
      str6 = str3.replaceAll("[^0-9a-zA-Z\\.\\_/\\%]", "");
      if (str4 == null);
    }
    for (String str7 = str4.replaceAll("[^0-9a-zA-Z\\.\\_/\\%]", ""); ; str7 = str4)
    {
      localGoogleAnalyticsTracker1.trackEvent(str5, str6, str7, ((Bundle)paramMessage.obj).getInt("arg3"));
      break;
      label271: bool1 = false;
      break label144;
    }
  }

  public final boolean a(Context paramContext, Object paramObject)
  {
    return false;
  }

  public final q b()
  {
    return q.b;
  }

  public final int c()
  {
    return 1081;
  }

  public final String d()
  {
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ganalytics.a
 * JD-Core Version:    0.6.2
 */