package com.avg.toolkit.e;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.avg.toolkit.f.a;

public class j
{
  private boolean a(String paramString, Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      PackageInfo localPackageInfo = localPackageManager.getPackageInfo(paramString, 0);
      int i = localPackageManager.checkSignatures(paramContext.getPackageName(), localPackageInfo.packageName);
      bool = false;
      if (i == 0)
        bool = true;
      return bool;
    }
    catch (Exception localException)
    {
      while (true)
      {
        a.a(localException);
        bool = false;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        boolean bool = false;
    }
  }

  public boolean a(Context paramContext)
  {
    if ((b(paramContext)) || (c(paramContext)) || (d(paramContext)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean b(Context paramContext)
  {
    return a("org.antivirus.plugin.app_locker", paramContext);
  }

  public boolean c(Context paramContext)
  {
    return a("org.antivirus_feature.feature", paramContext);
  }

  public boolean d(Context paramContext)
  {
    return a("org.antivirus.plugin.trial_to_pro", paramContext);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.e.j
 * JD-Core Version:    0.6.2
 */