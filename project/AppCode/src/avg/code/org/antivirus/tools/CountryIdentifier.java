package org.antivirus.tools;

import android.app.Service;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import org.antivirus.core.Logger;

public class CountryIdentifier
{
  public static void isCountryAllowed(Service paramService)
  {
    try
    {
      new Handler(Looper.getMainLooper()).postDelayed(new CountryIdentifier.1(paramService), 5000L);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public static boolean isCountryChina(Context paramContext)
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
        Logger.error("Fail on starting TelephonyManager. Error: " + localException.getMessage());
        boolean bool1 = false;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tools.CountryIdentifier
 * JD-Core Version:    0.6.2
 */