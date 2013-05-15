package com.avast.android.generic.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.telephony.TelephonyManager;
import com.avast.android.generic.f.b.a;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class ah
{
  public static boolean a(Context paramContext)
  {
    boolean bool1;
    try
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (!a.g(paramContext))
      {
        bool1 = true;
      }
      else
      {
        Field localField = Class.forName(localConnectivityManager.getClass().getName()).getDeclaredField("mService");
        localField.setAccessible(true);
        Object localObject2 = localField.get(localConnectivityManager);
        Method localMethod3 = Class.forName(localObject2.getClass().getName()).getDeclaredMethod("getMobileDataEnabled", new Class[0]);
        localMethod3.setAccessible(true);
        boolean bool3 = ((Boolean)localMethod3.invoke(localObject2, new Object[0])).booleanValue();
        bool1 = bool3;
      }
    }
    catch (Exception localException1)
    {
      try
      {
        TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
        Method localMethod1 = Class.forName(localTelephonyManager.getClass().getName()).getDeclaredMethod("getITelephony", new Class[0]);
        localMethod1.setAccessible(true);
        Object localObject1 = localMethod1.invoke(localTelephonyManager, new Object[0]);
        Method localMethod2 = Class.forName(localObject1.getClass().getName()).getDeclaredMethod("isDataConnectivityPossible", new Class[0]);
        localMethod2.setAccessible(true);
        boolean bool2 = ((Boolean)localMethod2.invoke(localObject1, new Object[0])).booleanValue();
        bool1 = bool2;
      }
      catch (Exception localException2)
      {
        t.a("AvastAntiTheft", "Two methods for getting data setting failed");
        t.a("AvastAntiTheft", "Two methods for getting data setting failed M1", localException1);
        t.a("AvastAntiTheft", "Two methods for getting data setting failed M2", localException2);
        bool1 = true;
      }
    }
    return bool1;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.ah
 * JD-Core Version:    0.6.2
 */