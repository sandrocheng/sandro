package com.avg.toolkit.d;

import android.app.Service;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.widget.Toast;

public class a
{
  public static void a(Service paramService)
  {
    try
    {
      new Handler(Looper.getMainLooper()).postDelayed(new b(paramService), 5000L);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public static boolean a(Context paramContext)
  {
    try
    {
      String str = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkCountryIso().toLowerCase();
      if (!TextUtils.isEmpty(str))
      {
        boolean bool2 = "cn".equals(str);
        bool1 = bool2;
        return bool1;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localException);
        boolean bool1 = false;
      }
    }
  }

  private static void c(Service paramService)
  {
    String[] arrayOfString = { "cu", "ir", "kp", "sy", "sd" };
    try
    {
      String str2 = ((TelephonyManager)paramService.getSystemService("phone")).getNetworkCountryIso().toLowerCase();
      str1 = str2;
      boolean bool = TextUtils.isEmpty(str1);
      i = 0;
      if ((!bool) && (i < arrayOfString.length))
      {
        if (!str1.equals(arrayOfString[i]))
          break label150;
        Toast.makeText(paramService, "AVG Mobilation AntiVirus is not supported in the following countries:\nCuba, Iran, North Korea, Sudan, and Syria.", 1).show();
      }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        int i;
        try
        {
          Thread.sleep(1000L);
          paramService.stopSelf();
          Process.killProcess(Process.myPid());
          return;
          localException1 = localException1;
          com.avg.toolkit.f.a.a("Fail on starting TelephonyManager. Error: " + localException1.getMessage());
          String str1 = null;
        }
        catch (Exception localException2)
        {
          com.avg.toolkit.f.a.a(localException2);
          continue;
        }
        label150: i++;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.d.a
 * JD-Core Version:    0.6.2
 */