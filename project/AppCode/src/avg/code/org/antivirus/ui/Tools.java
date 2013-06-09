package org.antivirus.ui;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import java.util.TreeMap;
import org.antivirus.Strings;
import org.antivirus.core.Logger;
import org.antivirus.core.scanners.ScannerFilesResult;
import org.antivirus.core.scanners.ScannerPackagesResult;
import org.antivirus.core.scanners.e;
import org.antivirus.core.scanners.g;

public class Tools
{
  public static final String APP_NAME = "appName";
  public static final String CATEGORY = "categtory";

  public static String getAppName(Context paramContext, String paramString)
  {
    PackageManager localPackageManager = paramContext.getApplicationContext().getPackageManager();
    try
    {
      ApplicationInfo localApplicationInfo2 = localPackageManager.getApplicationInfo(paramString, 0);
      localApplicationInfo1 = localApplicationInfo2;
      str1 = Strings.getString(2131296489);
      if (localApplicationInfo1 != null)
      {
        CharSequence localCharSequence = localPackageManager.getApplicationLabel(localApplicationInfo1);
        if (localCharSequence != null)
        {
          str2 = localCharSequence.toString();
          return str2;
        }
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        String str1;
        Logger.log(localNameNotFoundException);
        ApplicationInfo localApplicationInfo1 = null;
        continue;
        String str2 = str1;
      }
    }
  }

  @Deprecated
  public static String getCategory(ScannerFilesResult paramScannerFilesResult, String paramString)
  {
    if ((paramScannerFilesResult == null) || (paramScannerFilesResult.d == null));
    for (String str = null; ; str = (String)paramScannerFilesResult.d.get(paramString))
      return str;
  }

  @Deprecated
  public static String getFileCategory(g paramg, String paramString)
  {
    String str;
    if (paramg.f.e == null)
      str = null;
    while (true)
    {
      return str;
      e locale = (e)paramg.f.e.get(paramString);
      if (locale == null)
        str = null;
      else if (paramg.f.d == null)
        str = null;
      else
        str = (String)paramg.f.d.get(locale.e);
    }
  }

  @Deprecated
  public static String getPackageCategory(g paramg, String paramString)
  {
    String str;
    if (paramg.c.e == null)
      str = null;
    while (true)
    {
      return str;
      e locale = (e)paramg.c.e.get(paramString);
      if (locale == null)
        str = null;
      else if (paramg.c.d == null)
        str = null;
      else
        str = (String)paramg.c.d.get(locale.e);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.Tools
 * JD-Core Version:    0.6.2
 */