package org.antivirus.core.b;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import org.antivirus.core.Logger;

public final class k
{
  static boolean a(String paramString, Context paramContext)
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
        Logger.log(localException);
        bool = false;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        boolean bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.b.k
 * JD-Core Version:    0.6.2
 */