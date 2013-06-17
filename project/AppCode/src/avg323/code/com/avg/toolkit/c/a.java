package com.avg.toolkit.c;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.avg.toolkit.e;
import com.avg.toolkit.f;
import com.google.a.a.a.aj;
import com.google.a.a.a.bf;
import com.google.a.a.a.q;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import java.util.Properties;

public class a
  implements e
{
  com.avg.toolkit.e.a a;
  private aj b;

  public a(Context paramContext, com.avg.toolkit.e.a parama, Properties paramProperties)
  {
    this.a = parama;
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0);
      this.b = aj.a(paramContext.getApplicationContext());
      bf localbf = this.b.a(paramProperties.getProperty("ganalytics"));
      localbf.a("android_" + paramContext.getPackageName());
      localbf.b(localPackageInfo.versionName + "." + localPackageInfo.versionCode);
      q.a().a(-1);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public static void a(Context paramContext, String paramString)
  {
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("page", paramString);
      f.a(paramContext, 10000, 10001, localBundle);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, int paramInt)
  {
    a(paramContext, paramString1, paramString2, paramString3, Long.valueOf(paramInt));
  }

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, Long paramLong)
  {
    a(paramContext, paramString1, paramString2, paramString3, paramLong, null, null);
  }

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, Long paramLong, Map paramMap1, Map paramMap2)
  {
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("arg0", paramString1);
      localBundle.putString("arg1", paramString2);
      localBundle.putString("arg2", paramString3);
      if (paramLong != null)
        localBundle.putLong("arg3", paramLong.longValue());
      localBundle.putSerializable("dimensions", (Serializable)paramMap1);
      localBundle.putSerializable("metrics", (Serializable)paramMap2);
      f.a(paramContext, 10000, 10002, localBundle);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public static void b(Context paramContext, String paramString)
  {
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("referrer", paramString);
      f.a(paramContext, 10000, 10003, localBundle);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  private void c(Bundle paramBundle)
  {
    try
    {
      String str = paramBundle.getString("referrer");
      this.b.a().d(str);
      this.b.a().a("referrer", "sent", str, null);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  private void d(Bundle paramBundle)
  {
    try
    {
      String str = paramBundle.getString("page");
      this.b.a().c(str);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  private void e(Bundle paramBundle)
  {
    try
    {
      String str1 = paramBundle.getString("arg0");
      String str2 = paramBundle.getString("arg1");
      str3 = paramBundle.getString("arg2");
      String str4 = str1.replaceAll("[^0-9a-zA-Z\\.\\_/\\%]", "");
      String str5 = str2.replaceAll("[^0-9a-zA-Z\\.\\_/\\%]", "");
      if (str3 != null)
      {
        str6 = str3.replaceAll("[^0-9a-zA-Z\\.\\_/\\%]", "");
        if (paramBundle.getSerializable("arg3") != null)
        {
          localLong = (Long)paramBundle.getSerializable("arg3");
          if (paramBundle.getSerializable("dimensions") != null)
          {
            localMap1 = (Map)paramBundle.getSerializable("dimensions");
            if (paramBundle.getSerializable("metrics") != null)
            {
              localMap2 = (Map)paramBundle.getSerializable("metrics");
              this.b.a().a(localMap1, localMap2);
              this.b.a().a(str4, str5, str6, localLong);
              return;
            }
          }
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        String str3;
        com.avg.toolkit.f.a.a(localException);
        continue;
        Map localMap2 = null;
        continue;
        Map localMap1 = null;
        continue;
        Long localLong = null;
        continue;
        String str6 = str3;
      }
    }
  }

  public void a(Bundle paramBundle)
  {
  }

  public void a(com.avg.toolkit.e.a parama)
  {
  }

  public void a(List paramList)
  {
  }

  public void a(boolean paramBoolean)
  {
    try
    {
      q.a().a(20);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public int b()
  {
    return 10000;
  }

  public void b(Bundle paramBundle)
  {
    int i = -1;
    if (paramBundle != null);
    try
    {
      int j = paramBundle.getInt("__SAC2", -1);
      i = j;
      switch (i)
      {
      default:
        com.avg.toolkit.f.a.a();
        return;
      case 10001:
      case 10002:
      case 10003:
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localException);
        continue;
        d(paramBundle);
        continue;
        e(paramBundle);
        continue;
        c(paramBundle);
      }
    }
  }

  public void b(com.avg.toolkit.e.a parama)
  {
  }

  public void onDestroy()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.c.a
 * JD-Core Version:    0.6.2
 */