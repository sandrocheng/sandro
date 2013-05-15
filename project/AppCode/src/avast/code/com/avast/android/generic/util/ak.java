package com.avast.android.generic.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import com.avast.android.generic.d;
import java.io.File;
import java.util.Date;

public class ak
{
  public static int a()
  {
    Date localDate = new Date();
    return localDate.getMinutes() + 60 * localDate.getHours();
  }

  public static long a(int paramInt1, int paramInt2)
  {
    int i = d.a();
    int j = a();
    int k;
    int m;
    if (j >= paramInt2)
    {
      k = i + 1;
      m = 0;
      label21: if (m >= 7)
        break label126;
      if ((paramInt1 & d.a((k + m) % 7)) <= 0)
        break label71;
    }
    label71: label126: for (int n = k + m; ; n = -1)
    {
      if (n == -1);
      for (long l = -1L; ; l = 60000L * (System.currentTimeMillis() / 60000L) + (24 * (60 * (60 * (1000 * Math.abs(n - i)))) + 60 * (1000 * (paramInt2 - j))))
      {
        return l;
        k = i;
        break;
        m++;
        break label21;
      }
    }
  }

  public static boolean a(Context paramContext, Uri paramUri)
  {
    boolean bool1;
    if ("file".equals(paramUri.getScheme()))
      bool1 = new File(paramUri.getPath()).exists();
    while (true)
    {
      return bool1;
      if ("package".equals(paramUri.getScheme()))
      {
        String str = paramUri.toString().substring("package:".length());
        try
        {
          boolean bool2 = new File(paramContext.getPackageManager().getApplicationInfo(str, 0).sourceDir).exists();
          bool1 = bool2;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          m.f("Cannot find application info for uri " + paramUri);
          bool1 = false;
        }
      }
      else
      {
        bool1 = true;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.ak
 * JD-Core Version:    0.6.2
 */