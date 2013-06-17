package com.antivirus.apploader;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.telephony.TelephonyManager;
import com.avg.toolkit.b.j;
import com.avg.toolkit.e.a;
import com.avg.toolkit.e.e;
import java.net.URI;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeMap;

public class g
{
  public HashMap a(Context paramContext, TreeMap paramTreeMap)
  {
    HashMap localHashMap1 = new HashMap();
    while (true)
    {
      String str2;
      StringBuilder localStringBuilder;
      try
      {
        a locala = e.a();
        TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
        localObject = "";
        if (locala == null)
          break label333;
        i = locala.o;
        j = locala.p;
        if (localTelephonyManager != null)
        {
          str2 = localTelephonyManager.getSimCountryIso();
          if (str2 != null)
            break label326;
          localObject = "";
        }
        localStringBuilder = new StringBuilder();
        Iterator localIterator = paramTreeMap.keySet().iterator();
        if (localIterator.hasNext())
        {
          String str1 = (String)localIterator.next();
          localStringBuilder.append(str1);
          localStringBuilder.append("~~");
          localStringBuilder.append((String)paramTreeMap.get(str1));
          localStringBuilder.append("|");
          continue;
        }
      }
      catch (Exception localException)
      {
        localHashMap2 = localHashMap1;
        if (localHashMap2 == null)
          localHashMap2 = new HashMap();
        return localHashMap2;
      }
      localStringBuilder.deleteCharAt(-1 + localStringBuilder.length());
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = localObject;
      arrayOfObject[1] = (i + "");
      arrayOfObject[2] = (j + "");
      arrayOfObject[3] = localStringBuilder.toString();
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0);
      HashMap localHashMap2 = (HashMap)new j(new URI("https://apk.avgmobilation.com/xmlrpc"), i, j, "none", localPackageInfo.versionName, Integer.toString(localPackageInfo.versionCode)).a(null, null, "WebScanner.shouldUpload", arrayOfObject, null, "dummy", null);
      continue;
      label326: Object localObject = str2;
      continue;
      label333: int i = 0;
      int j = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.apploader.g
 * JD-Core Version:    0.6.2
 */