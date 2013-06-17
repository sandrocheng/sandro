package com.avast.android.mobilesecurity.vps.a;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import com.avast.android.mobilesecurity.vps.b.b;
import com.avast.android.mobilesecurity.vps.b.o;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public final class a
{
  private static final String a = Build.BRAND;
  private static final String b = Build.DEVICE;
  private static final String c = Build.MANUFACTURER;
  private static final String d = Build.MODEL;
  private static final int e = Build.VERSION.SDK_INT;

  private static byte[] a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(o.a, Boolean.valueOf(false));
    localHashMap.put(o.b, Boolean.valueOf(false));
    localHashMap.put(o.c, Boolean.valueOf(false));
    return b.a(localHashMap);
  }

  public static byte[] a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    if ((paramString3 == null) || ("".equals(paramString3)))
      Locale.getDefault().getLanguage();
    PackageManager localPackageManager = paramContext.getPackageManager();
    if (localPackageManager != null);
    try
    {
      PackageInfo localPackageInfo2 = localPackageManager.getPackageInfo("com.avast.android.antitheft", 0);
      if (localPackageInfo2 != null);
      try
      {
        label52: PackageInfo localPackageInfo1 = localPackageManager.getPackageInfo(paramContext.getPackageName(), 0);
        if (localPackageInfo1 != null);
        label75: c localc = c.a(paramString1);
        byte[] arrayOfByte;
        if (localc == null)
          arrayOfByte = a();
        while (true)
        {
          return arrayOfByte;
          if (d.a(paramString2) == null)
            arrayOfByte = a();
          else
            switch (b.a[localc.ordinal()])
            {
            default:
              arrayOfByte = a();
              break;
            case 1:
              arrayOfByte = a();
            }
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException2)
      {
        break label75;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException1)
    {
      break label52;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.a.a
 * JD-Core Version:    0.6.2
 */