package com.c.a.a;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Log;
import java.lang.reflect.Field;

public final class n
{
  public static String a = "2.0";
  public static boolean b = true;
  public static String c;
  public static String d;
  public static String e;
  public static final int f;

  static
  {
    int i = 3;
    try
    {
      i = Integer.parseInt(Build.VERSION.SDK);
      Build.VERSION localVERSION = new Build.VERSION();
      Class localClass = localVERSION.getClass();
      if (localClass != null)
      {
        Field localField = localClass.getField("SDK_INT");
        if (localField != null)
        {
          int j = localField.getInt(localVERSION);
          i = j;
        }
      }
      label62: f = i;
      return;
    }
    catch (Exception localException)
    {
      break label62;
    }
    catch (Error localError)
    {
      break label62;
    }
  }

  public static String a(PackageManager paramPackageManager, String paramString)
  {
    Object localObject = "";
    try
    {
      ApplicationInfo localApplicationInfo = paramPackageManager.getApplicationInfo(paramString, 128);
      if (localApplicationInfo != null)
      {
        String str = localApplicationInfo.metaData.getString("MAPBAR_APIKEY");
        localObject = str;
      }
      return localObject;
    }
    catch (Exception localException)
    {
      while (true)
        Log.e("CellLocation", "Could not read apikey meta-data from AndroidManifest.xml.", localException);
    }
  }

  public static boolean a(String paramString)
  {
    boolean bool1;
    if ((paramString != null) && (paramString.trim().length() > 0))
      try
      {
        if ("SYSTEM".equals(c))
        {
          bool1 = true;
        }
        else
        {
          u localu = new u(w.a(paramString));
          if (localu.a != null)
          {
            boolean bool2 = localu.a.equalsIgnoreCase(c);
            if (bool2)
              bool1 = true;
          }
        }
      }
      catch (Exception localException)
      {
      }
    else
      bool1 = false;
    return bool1;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.c.a.a.n
 * JD-Core Version:    0.6.2
 */