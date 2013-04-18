package com.keniu.security.util;

import android.content.Context;
import android.telephony.TelephonyManager;

public final class av
{
  public static final String a = "-1";
  private static String b = null;
  private static Boolean c = null;
  private static String d = null;
  private static String e = null;

  public static String a(Context paramContext)
  {
    try
    {
      if (b != null);
      for (String str2 = b; ; str2 = b)
      {
        return str2;
        String str1 = d(paramContext);
        if (str1 != "-1")
          b = str1;
      }
    }
    finally
    {
    }
  }

  public static String b(Context paramContext)
  {
    try
    {
      if (d != null);
      for (String str2 = d; ; str2 = d)
      {
        return str2;
        String str1 = g(paramContext);
        if (str1 != "-1")
          d = str1;
      }
    }
    finally
    {
    }
  }

  public static String c(Context paramContext)
  {
    try
    {
      if (e != null);
      for (String str2 = e; ; str2 = e)
      {
        return str2;
        String str1 = h(paramContext);
        if (str1 != "-1")
          e = str1;
      }
    }
    finally
    {
    }
  }

  private static String d(Context paramContext)
  {
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      String str;
      if (localTelephonyManager == null)
        str = "-1";
      while (true)
      {
        return str;
        str = localTelephonyManager.getDeviceId();
        if (str == null)
          str = "-1";
      }
    }
    finally
    {
    }
  }

  private static boolean e(Context paramContext)
  {
    try
    {
      boolean bool3;
      if (c != null)
        bool3 = c.booleanValue();
      boolean bool1;
      for (boolean bool2 = bool3; ; bool2 = bool1)
      {
        return bool2;
        Boolean localBoolean = Boolean.valueOf(f(paramContext));
        c = localBoolean;
        bool1 = localBoolean.booleanValue();
      }
    }
    finally
    {
    }
  }

  private static boolean f(Context paramContext)
  {
    try
    {
      boolean bool = a(paramContext).equals("354957033552863-1");
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static String g(Context paramContext)
  {
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      Object localObject2;
      if (localTelephonyManager == null)
        localObject2 = "-1";
      while (true)
      {
        return localObject2;
        String str1 = localTelephonyManager.getDeviceId();
        if (str1 == null)
        {
          localObject2 = "-1";
        }
        else
        {
          String str2 = str1.trim();
          localObject2 = str2;
        }
      }
    }
    finally
    {
    }
  }

  private static String h(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    String str2;
    if (localTelephonyManager == null)
      str2 = "-1";
    while (true)
    {
      return str2;
      try
      {
        String str3 = localTelephonyManager.getSubscriberId();
        str1 = str3;
        if (str1 == null)
          str2 = "-1";
      }
      catch (SecurityException localSecurityException)
      {
        String str1;
        while (true)
        {
          localSecurityException.printStackTrace();
          str1 = null;
        }
        str2 = str1.trim();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.av
 * JD-Core Version:    0.6.2
 */