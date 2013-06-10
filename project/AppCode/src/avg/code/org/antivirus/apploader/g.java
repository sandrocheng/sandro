package org.antivirus.apploader;

import android.content.Context;
import android.telephony.TelephonyManager;
import java.net.URI;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeMap;
import org.antivirus.AvApplication;
import org.antivirus.core.a.ab;
import org.antivirus.core.b.a;

public final class g
{
  public static HashMap a(Context paramContext, TreeMap paramTreeMap)
  {
    HashMap localHashMap1 = new HashMap();
    while (true)
    {
      String str2;
      StringBuilder localStringBuilder;
      try
      {
        a locala = AvApplication.mAvgFeatures;
        TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
        localObject = "";
        if (locala == null)
          break label299;
        int k = locala.o;
        int m = locala.p;
        j = k;
        i = m;
        if (localTelephonyManager != null)
        {
          str2 = localTelephonyManager.getSimCountryIso();
          if (str2 != null)
            break label292;
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
      arrayOfObject[1] = j;
      arrayOfObject[2] = i;
      arrayOfObject[3] = localStringBuilder.toString();
      HashMap localHashMap2 = (HashMap)new ab(new URI("https://apk.avgmobilation.com/xmlrpc"), j, "none").a("WebScanner.shouldUpload", arrayOfObject, null, "dummy", null);
      continue;
      label292: Object localObject = str2;
      continue;
      label299: int i = 0;
      int j = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.apploader.g
 * JD-Core Version:    0.6.2
 */